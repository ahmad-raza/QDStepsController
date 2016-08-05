#
# Be sure to run `pod lib lint QDStepsController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "QDStepsController"
  s.version          = "1.0.0"
  s.summary          = "QDStepsController is an awesome iOS swift control that will help developers to implement step based functionality with minimum effort."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = "QDStepsController is a simple swift control that will help developer to implement step by step guides for user within their application. Developers would be able to create a maximum number of steps and navigate through them without writing any line of code!"

  s.homepage         = "https://github.com/ahmad-raza/QDStepsController"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "ahmadraza" => "ahmadraza036@yahoo.com" }
  s.source           = { :git => "https://github.com/ahmad-raza/QDStepsController.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/Ahmad_Rza'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
#s.resource_bundles = {
#    'QDStepsController' => ['Pod/Assets/*.png']
# }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
