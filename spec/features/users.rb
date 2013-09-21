require 'spec_helper'

describe "Users" do 
  let!(:user)      { FactoryGirl.create(:user) }

  before(:each) do
    visit root_path
    fill_in 'user[username]',               with: user.username
    fill_in 'user[password]',               with: user.password
    click_button('Login')
  end

  it "should be able to log in without errors" do
    current_path.should == root_path
    page.should have_link("logout")
    save_and_open_page
  end
end
