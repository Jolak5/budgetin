require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:icon_file) { fixture_file_upload(Rails.root.join('app', 'assets', 'images', 'icon.jpg'), 'image/jpeg') }
  subject { Group.new(user_id: 1, name: 'kayode', icon: icon_file) }

  before { subject.save }

  it 'attaches the icon file' do
    expect(subject.icon).to be_attached
  end

  it 'new post should be saved in the database' do
    expect(subject.new_record?).to be_truthy
  end

  it 'validates the presence of the icon file' do
    expect(subject.icon).to be_truthy
  end

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
