Pod::Spec.new do |s|
  s.name         = "AliyunVideoSDKStd"
  s.version      = "3.34.0"
  s.summary      = "aliyun video sdk standard"
  s.description  = <<-DESC
                   It's an standard SDK for aliyun video, which implement by Objective-C.
                   DESC
  s.homepage     = "https://help.aliyun.com/document_detail/53407.html"
  s.license      = { :type => 'MIT', :text => <<-LICENSE
                       Alibaba-INC copyright
                     LICENSE
                   }
  s.author       = { "aliyunvideo" => "videosdk@service.aliyun.com" }
  s.platform     = :ios
  s.platform     = :ios, "9.0"
  s.source       = { :http => "https://alivc-demo-cms.alicdn.com/versionProduct/sdk/shortVideo/#{s.version}/iOS/AliyunVideoSDKStd.zip" }
  s.frameworks   = "SystemConfiguration", "MobileCoreServices", "CoreTelephony"
  s.libraries    = "resolv","c++"

  s.default_subspec = 'all'
  s.subspec 'all' do |ss|
    ss.vendored_frameworks = "AliyunVideoSDKPro.framework"
    ss.dependency 'QuCore-ThirdParty', '~> 4.3.2'
    ss.dependency 'VODUpload', '~> 1.6.6'
  end
  s.subspec 'min' do |ss|
    ss.vendored_frameworks = "AliyunVideoSDKPro.framework"
    ss.dependency 'QuCore-ThirdParty', '~> 4.3.2'
  end
end
