require 'rails_helper'

feature 'Group' do
  # Use FactoryBot.create
  let(:user) { FactoryBot.create(:user) } 

  before do
    # sign in user
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
  end

  scenario 'Create a new group' do
    visit new_group_path

    fill_in 'Name', with: 'Test Group'
    attach_file('group_icon', File.join(Rails.root, '/app/assets/images/icon.jpg')) 

    click_button 'Create Group'

    expect(page).to have_content('Group was successfully created.')
    expect(page).to have_content('Test Group')
  end

  scenario "I can see a post's title." do
    visit groups_path
    expect(page).to have_content("Categories")
  end

  scenario "I can see a post's title." do
    visit groups_path
    expect(page).to have_link("New group")
  end
end