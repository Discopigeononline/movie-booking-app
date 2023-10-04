require 'rails_helper'

RSpec.describe 'check movie details', type: :system do
  describe 'testing show page' do
    it {puts page.body}
    it "displays details of movie" do
      visit movies_path
      find('.button', match: :first).click
      expect(page).to have_content("Bonjour")
      expect(page).to have_content("The ultimate wish-fulfillment")
    end
  end
end
