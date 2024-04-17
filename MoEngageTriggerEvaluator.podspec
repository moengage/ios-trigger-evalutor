Pod::Spec.new do |s|

  s.name         = 'MoEngageTriggerEvaluator'
  s.version      = '1.01.0'
  s.summary      = 'MoEngageTriggerEvaluator for iOS'
  s.description  = <<-DESC
                     MoEngageTriggerEvaluator evaluates trigger conditions of inApp campaigns.
                   DESC

  s.homepage     = 'https://www.moengage.com'
  s.documentation_url = 'https://developers.moengage.com'
  s.license      = { :type => 'Commercial', :file => 'LICENSE' }
  s.author       = { 'MobileDevs' => 'mobiledevs@moengage.com' }
  s.social_media_url   = 'https://twitter.com/moengage'
  s.ios.deployment_target = '11.0'
  s.tvos.deployment_target = '11.0'

  s.source       = { 
    :http => "https://github.com/moengage/ios-trigger-evalutor/releases/download/#{s.version}/MoEngageTriggerEvaluator.xcframework.zip", 
    :sha256 => '119636343c639984c5214142affee0bc93542de81c628880912a73254ef3d859'
  }

  s.vendored_frameworks = 'MoEngageTriggerEvaluator.xcframework'
  s.requires_arc = true
  s.frameworks = 'Foundation', 'UIKit', 'CoreGraphics'
  s.dependency 'MoEngage-iOS-SDK', '>= 9.17.0', '< 9.18.0'
end
