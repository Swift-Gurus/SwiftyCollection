#
# Be sure to run `pod lib lint SwiftyCollection.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftyCollection'
  s.version          = '1.0.6'
  s.summary          = 'Safe operations on collections'

  s.description      = <<-DESC
This library provides an extension to the family of Collection protocols (Collection, MutableCollection, and RangeReplacableCollection) for
easier and range-safe access to its elements. Most of the added functions return optionals where .none is returned instead of conventional
error throwing. A summary of the provided functionality is: element(at:), removeLast, removeFirst, replaceOccurrences, removeElement, and
removeDuplicates (see the README file for detailed, complete description)
                       DESC

  s.homepage         = 'https://github.com/aldo-dev/SwiftyCollection.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ALDO Inc' => 'aldodev@aldogroup.com' }
  s.source           = { :git => 'https://github.com/aldo-dev/SwiftyCollection.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.swift_version   = '5.0'

  s.source_files = 'SwiftyCollection/Classes/**/*'

end
