source 'https://github.com/CocoaPods/Specs'

platform :ios, '8.0'

target 'SampleAppTests' do
  pod 'KIF'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['CODE_SIGNING_REQUIRED'] = 'NO'
    end
  end
end
