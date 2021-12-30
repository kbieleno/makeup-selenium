require './spec_helper'

RSpec.describe 'Basket button' do
  home_page = HomePage.new

  before(:all) do
    home_page.to_home_page
  end

  after(:all) { browser.close }

  context 'when the "Basket" button is clicked and there is at least one product in the basket' do
    after(:each) do
      home_page.to_home_page
      home_page.basket_icon.click
      home_page.product_remove.click
    end

    it 'verify that "Basket" pop-up with a list of all products is displayed' do
      home_page.product_new.click
      sleep(5)
      home_page.product_buy.click
      sleep(5)
      home_page.to_home_page
      home_page.basket_icon.click
      expect(home_page.basket_title).to eq('Корзина')
    end
  end

  # context 'when the "Basket" button is clicked and there is no product in the basket' do
  #   it 'verify that "Basket" button is disable' do
  #     browser.find_element(xpath: '/html/body/div[1]/div[1]/header/div[2]/div/div[2]/div[1]/div[2]').click
  #     expect(home_page.basket_title).to eq('')
  #   end
  # end
end
