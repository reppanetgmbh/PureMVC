#
# Be sure to run `pod lib lint PureMVC.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PureMVC'
  s.version          = '1.0.0'
  s.summary          = 'Swift implementation of the PureMVC patterns'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This is a Swift implementation of the PureMVC patterns. This version was forked by REPPA.NET and various conveniences were added to make integration with UIKit simpler. The NotificationHandler interface simplifies integrating the various patterns with UIViewControllers while all event responses are automatically made on the UI thread.
                       DESC

  s.homepage         = 'https://github.com/reppanetgmbh/PureMVC'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'as@reppa.com' => 'Alexander Stonehouse' }
  s.source           = { :git => 'https://github.com/reppanetgmbh/PureMVC.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'PureMVC/Classes/**/*'
  
  # s.resource_bundles = {
  #   'PureMVC' => ['PureMVC/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
