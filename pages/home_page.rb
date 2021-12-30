class HomePage < BasePage
  def basket_title
    browser.find_element(xpath: '/html/body/div[2]/div/div[1]/div[1]').text
  end

  def basket_icon
    browser.find_element(xpath: '/html/body/div[1]/div[1]/header/div[2]/div/div[2]/div[1]/div[2]')
  end

  def product_remove
    browser.find_element(xpath: '/html/body/div[2]/div/div[1]/div[2]/ul/li/div[2]/div/div[2]')
  end

  def product_new
    browser.find_element(class: "simple-slider-list__link")
  end

  def product_buy
    browser.find_element(xpath: '/html/body/div[1]/div[1]/div/div/div[2]/div[1]/div/div[3]/div[3]/div')
  end

  def to_home_page
    browser.get(HOME_PAGE_URL)
  end

end
