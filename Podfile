platform :ios, '9.2'

use_frameworks! # for swift

def common
  pod 'CWStatusBarNotification', '~> 2.2'
  pod 'Firebase',                '~> 2.3'
  pod 'FBSDKCoreKit',            '~> 4.4'
  pod 'FBSDKLoginKit',           '~> 4.4'
  pod 'Fabric',                  '~> 1.2'
  pod 'Crashlytics',             '~> 3.1'
end


target 'color notes' do common end
target 'color notesTests' do common end


# automatically allow non-modular includes in header frameworks.
# source: http://stackoverflow.com/a/32080491/105609
post_install do |installer|
  installer.pods_project.build_configuration_list.build_configurations.each do |configuration|
    configuration.build_settings['CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES'] = 'YES'
  end
end
