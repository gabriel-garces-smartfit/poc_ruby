module Screens
    class BaseScreen
        
        def wait_for_xpath(xpath, timeout = 30)
            @driver.wait_true(timeout) do
                @driver.exists { @driver.find_element(:xpath, xpath) }
            end
        end
        
        def wait_for_id(id, timeout = 30)
            @driver.wait_true(timeout) do 
            @driver.exists { @driver.find_element(:accessibility_id, id) }
            end
        end
        
        def click_id(id)
            @driver.manage.timeouts.implicit_wait = 15
            @driver.find_element(:accessibility_id, id).click()
        end
        
        def click_xpath(xpath)
            @driver.manage.timeouts.implicit_wait = 15
            @driver.find_element(:xpath, xpath).click()
        end
        
        def send_keys_id(id, field)
            @driver.manage.timeouts.implicit_wait = 15
            @driver.find_element(:accessibility_id, id).send_keys(field)
        end
        
        def send_keys_xpath(xpath, field)
            @driver.manage.timeouts.implicit_wait = 15
            @driver.find_element(:xpath, xpath).send_keys(field)
        end
    end
end
