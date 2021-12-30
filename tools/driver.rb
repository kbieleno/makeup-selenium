class Driver
  def initialize
    $driver = Selenium::WebDriver.for :chrome
    $driver.manage.timeouts.implicit_wait = 10 # seconds
  end
end

Driver.new

def browser
  $driver
end

# def get_home_page
#   max_tries = 5
#   begin
#     browser.get(HOME_PAGE_URL)
#   rescue
#     max_tries -= 1
#     retry while max_tries > 0
#   end
# end