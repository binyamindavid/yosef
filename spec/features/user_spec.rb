require 'rails_helper'

RSpec.describe 'User', type: :system do
    describe "the signin process", type: :feature do
      before :each do
        User.create(email: 'user@example.com', password: 'password')
      end

      it "signs me in" do
        visit '/users/sign_in'
        within("#new_user") do
          fill_in 'Email', with: 'user@example.com'
          fill_in 'Password', with: 'password'
        end
        click_button 'Log in'
        expect(page).to have_content 'You have to confirm your email address before continuing.'
      end
    end
end