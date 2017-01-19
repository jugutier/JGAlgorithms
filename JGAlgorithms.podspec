#
# Be sure to run `pod lib lint JGAlgorithms.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JGAlgorithms'
  s.version          = '0.1.0'
  s.summary          = 'Support advanced algorithms and data structures for iOS.'
  s.description      = <<-DESC
Support advanced algorithms and data structures. Namely, Trees, graph and transversing algorithms. Fully implemented in native Objective-C, flexible to be used with your own objects by implementing comparators when necessary and tested!
                       DESC

  s.homepage         = 'https://github.com/jugutier/JGAlgorithms'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Julian Gutierrez Ferrara' => 'juliangutierrezferrara@gmail.com' }
  s.source           = { :git => 'https://github.com/jugutier/JGAlgorithms.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'JGAlgorithms/Classes/**/*'
  
  # s.resource_bundles = {
  #   'JGAlgorithms' => ['JGAlgorithms/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
