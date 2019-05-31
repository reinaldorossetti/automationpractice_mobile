require 'appium_lib'
require 'cucumber'
require 'rspec'
require 'rake'
require 'rspec/retry'
require 'pry'


def caps
  {
      caps: {
          deviceName: "Nexus 5",
          platformName: "Android",
          automationName: "uiautomator2",
          appPackage: "br.com.ingresso.ui.activities",
          appActivity: "br.com.ingresso.ui.activities.MainActivity",
          autoGrantPermissions: true,
          autoAcceptAlerts: true,
          app: (File.join(File.dirname(__FILE__), "/../apk_test/IngressoDotCom.apk")),
          newCommandTimeout: 2000,
          skipServerInstallation: true,
          skipDeviceInitialization: true,
          disableWindowAnimation: true,
          ignoreUnimportantViews: true,
          disableAndroidWatchers: true,
          uiautomator2ServerLaunchTimeout: 60000,
          uiautomator2ServerInstallTimeout: 120000,
          nativeInstrumentsLib: false
      },
      appium_lib: {
          wait_timeout: 4,
          wait_interval: 0.5
      }
  }
end

# A flag true dentro da função driver define que esta usando global.
$driver = Appium::Driver.new(caps, true)
sleep 60