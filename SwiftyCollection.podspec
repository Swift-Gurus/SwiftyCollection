#
# Be sure to run `pod lib lint SwiftyCollection.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftyCollection'
  s.version          = '0.1.0'
  s.summary          = 'Safe operations on collections'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  This library provides functions that give safe operations to collections and avoid crashes
                       DESC

  s.homepage         = 'https://github.com/aldo-dev/SwiftyCollection.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ALDO Inc' => 'aldodev@aldogroup.com' }
  s.source           = { :git => 'https://github.com/aldo-dev/SwiftyCollection.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.swift_version   = '4.0'

  s.source_files = 'SwiftyCollection/Classes/**/*'

end
