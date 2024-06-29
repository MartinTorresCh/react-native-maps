require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "react-native-maps"
  s.version      = package['version']
  s.summary      = package["description"]
  s.authors      = package["author"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.platform     = :ios, "11.0"

  s.source       = { :git => "https://github.com/MartinTorresCh/react-native-maps.git" }
  s.source_files  = "ios/AirMaps/**/*.{h,m}"
  s.resource_bundles = {
      'ReactNativeMapsPrivacy' => ['ios/PrivacyInfo.xcprivacy']
  }
  s.dependency 'React-Core'
end
