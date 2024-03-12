Pod::Spec.new do |s|

  s.name         = 'MoEngageTriggerEvaluator'
  s.version      = '1.00.0'
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
    :git => 'https://github.com/moengage/ios-trigger-evalutor',
    :tag => 'triggerEvaluator-' + s.version.to_s 
  }

  s.ios.vendored_frameworks = 'Frameworks/MoEngageTriggerEvaluator.xcframework'
  s.tvos.vendored_frameworks = 'Frameworks/MoEngageTriggerEvaluator.xcframework'
  s.requires_arc = true
  s.frameworks = 'Foundation', 'UIKit', 'CoreGraphics'
  s.dependency 'MoEngage-iOS-SDK', '>= 9.16.0', '< 9.17.0'
end
