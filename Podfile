# Source
source 'https://cdn.cocoapods.org/'

# Workspace
workspace './MomentApp.xcworkspace'

# Main Project
project './MomentApp/MomentApp.xcodeproj'

# Platform
platform :ios, '14.0'

# Use Frameworks
use_frameworks!

# Ignore all warnings from all dependencies
inhibit_all_warnings!

# Dev Pods
def dev_pods
  pod 'SwiftLint', '= 0.42.0', configurations: ['Debug']
  pod 'SwiftGen', '= 6.4.0', configurations: ['Debug']
end

# Core Pods
def core_pods
  pod 'RxSwift', '= 5.1.1'
  pod 'RxRelay', '= 5.1.1'
  pod 'Alamofire', '= 5.3.0'
end

# Thirdparty Pods
def thirdparty_pods

end

# UI Pods
def ui_pods
  pod 'SnapKit', '= 5.0.1'
  pod 'Kingfisher', '= 5.15.6'
  pod 'RxCocoa', '= 5.1.1'
  pod 'RxDataSources', '= 4.0.1'
end

# Internal Pods
def internal_pods

end

# Test Pods
def test_pods
  pod 'Quick', '= 3.0.0'
  pod 'Nimble', '= 9.0.0'
  pod 'RxTest', '= 5.1.1'
  pod 'RxBlocking', '= 5.1.1'
end

# Target
target 'MomentApp' do
  dev_pods
  core_pods
  thirdparty_pods
  ui_pods
  internal_pods
end

# Test target
target 'MomentAppTests' do
  core_pods
  thirdparty_pods
  test_pods
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings.delete 'IPHONEOS_DEPLOYMENT_TARGET'
      config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
    end
  end
end
