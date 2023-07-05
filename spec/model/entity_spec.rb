require 'rails_helper'

RSpec.describe Entity, type: :model do
  subject { Entity.new(author_id: 1, name: 'kayode', amount: 100) }

  before { subject.save }

  it 'new post should be saved in the database' do
    expect(subject.new_record?).to be_truthy
  end

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'amount should be present' do
    subject.amount = nil
    expect(subject).to_not be_valid
  end

  it 'name should not exceed 250 characters' do
    subject.name = 'a' * 255
    expect(subject).to_not be_valid
  end


end
