require 'capybara/rspec'
require 'spec_helper'
require_relative '../app'

Capybara.app = App

feature "interacting with tasks" do
  scenario "user can interact with tasks" do

    visit '/'
    expect(page).to have_content "FOOD"


  end


end