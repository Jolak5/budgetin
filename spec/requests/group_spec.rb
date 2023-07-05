require 'rails_helper'

RSpec.describe 'Group', type: :request do
  describe 'GET /index' do
    before :each do
      @user = FactoryBot.create(:user)
      sign_in @user
    end

    it 'returns a successful response' do
      get groups_url
      expect(response).to be_successful
    end

    it 'returns a successful response' do
      get groups_url
      expect(response).to render_template(:index)
    end

    it 'returns a successful response' do
      get groups_url
      expect(response).to be_successful
    end

    it 'response body includes correct placeholder text' do
      get groups_url
      expect(response.body).to include('Categories')
    end
  end
end
