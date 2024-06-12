Pod::Spec.new do |s|

  s.name         = 'MoEngageTriggerEvaluator'
  s.version      = '1.01.1'
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
    :sha256 => 'a1a03784a099209e87aaf85f9ef04f664abab1eef3e055a0503402f1cb976021'
  }

  s.vendored_frameworks = 'MoEngageTriggerEvaluator.xcframework'
  s.requires_arc = true
  s.frameworks = 'Foundation', 'UIKit', 'CoreGraphics'
  s.dependency 'MoEngage-iOS-SDK', '>= 9.17.0', '< 9.18.0'
end
