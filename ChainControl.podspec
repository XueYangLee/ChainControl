#
# Be sure to run `pod lib lint ChainControl.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ChainControl'
  s.version          = '1.0.0'
  s.summary          = 'Swift基础控件UILabel、UIButton、UITextField、 UITextView、UIImageView、UIView链式写法，简化代码'

  s.homepage         = 'https://github.com/XueYangLee/ChainControl'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'XueYangLee' => '496736912@qq.com' }
  s.source           = { :git => 'https://github.com/XueYangLee/ChainControl.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'ChainControl/**/*'
  
  # s.resource_bundles = {
  #   'ChainControl' => ['ChainControl/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
