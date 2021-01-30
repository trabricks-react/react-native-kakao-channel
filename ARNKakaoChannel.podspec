require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name    = "ARNKakaoChannel"
  s.version = package['version']
  s.summary = "Kakao Channel For React Native."
  
  s.authors   = { "Suhan Moon" => "leader@trabricks.io" }
  s.homepage  = "https://github.com/trabricks/react-native-kakao-channel#readme"
  s.license   = "MIT"

  s.platform      = :ios, "11.0"
  s.framework     = 'UIKit'
  s.requires_arc  = true

  s.source        = { :git => "https://github.com/trabricks/react-native-kakao-channel.git" }
  s.source_files  = "ios/*.{h,m,swift}"

  s.dependency "React"
  s.dependency "KakaoSDKTalk"
  s.dependency "KakaoSDKCommon"

end
