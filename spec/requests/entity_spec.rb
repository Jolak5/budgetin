require 'rails_helper'

RSpec.describe 'Entity', type: :request do
  describe 'GET /index' do

    before :each do
      @user = FactoryBot.create(:user)
      sign_in @user
      
      
      @group = FactoryBot.create(:group)
    end

    it 'returns a successful response' do
      get group_entities_url(group_id: @group.id)
      expect(response).to be_successful
    end

    it 'returns a successful response' do
        get group_entities_url(group_id: @group.id)
        expect(response).to render_template(:index)
      end

      it 'returns a successful response' do
        get group_entities_url(group_id: @group.id)
        expect(response).to be_successful
      end

      it 'returns a successful response' do
        get group_entities_url(group_id: @group.id)
      end
  end
end