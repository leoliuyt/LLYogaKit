#
# Be sure to run `pod lib lint LLYogaKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LLYogaKit'
  s.version          = '3.2.1'
  s.summary          = 'A short description of LLYogaKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/liubaoqiu/LLYogaKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liubaoqiu' => 'liubaoqiu@tianyancha.com' }
  s.source           = { :git => 'https://github.com/liubaoqiu/LLYogaKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.4'

  s.source_files = 'LLYogaKit/Classes/**/*'

  s.platforms = { :ios => "13.4" }
  s.ios.frameworks = 'UIKit'
  s.module_name = 'LLYogaKit'
  s.dependency 'Yoga', "~> #{s.version.to_s}"
  s.source_files = 'LLYogaKit/Classes/*.{h,m,swift}'
  s.public_header_files = 'LLYogaKit/Classes/{YGLayout,UIView+Yoga}.h'
  s.private_header_files = 'LLYogaKit/Classes/YGLayout+Private.h'
  s.swift_version = '5.1'
  
  # s.resource_bundles = {
  #   'LLYogaKit' => ['LLYogaKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
