require "appium_lib"
require "cucumber"

    def caps
        { caps: { deviceName: "Android Emulator",
            platformName: "Android",
            automationName: "UIAutomator2",
            app: (File.join(File.dirname(__FILE__), "./app/app_beta.apk")),
            autoGrantPermissions: "true"
            }
        }
    end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object

Before { $driver.start_driver }
After { $driver.driver_quit }