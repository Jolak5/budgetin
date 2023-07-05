require 'rails_helper'

RSpec.describe Group, type: :model do
  subject { Group.new(user_id: 1, name: 'kayode', icon: "default_icon.jpg") }

  before { subject.save }

  it 'new group should be saved in the database' do
    expect(subject.new_record?).to be_truthy
  end



end
