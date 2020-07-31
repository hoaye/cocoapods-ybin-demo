source 'https://github.com/CocoaPods/Specs.git'
# Uncomment the next line to define a global platform for your project
 platform :ios, '9.0'

# 最佳pod版本
# ============ 统一 pod 版本 Start ==========
best_pod_version='1.9.1'
cur_pod_version=`pod --version`
best_pod_version.strip!
cur_pod_version.strip!

if best_pod_version.eql?(cur_pod_version)
  puts "current pod version #{best_pod_version}"
  else
  puts "\n!!! 当前 pod 版本不符 !!! \n\n所需版本: #{best_pod_version} <==\n当前版本: #{cur_pod_version}"
  puts "\n2种解决方法(推荐1):\n 1.执行$: bundle exec pod install 自动安装所需版本并执行\n 2.配置您的pod版本号为:#{best_pod_version} 后再执行\n\n"
  return
  
  # 安装bundler: gem install bundler
  # 如报错找不到对应版本，根据报错提示执行：bundle install, 进行安装项目所需pod版本
end
# ============ 统一 pod 版本 End ==========

target 'cocoapods-ybin-demo' do
  # Comment the next line if you don't want to use dynamic frameworks
  # use_frameworks!
  
  pod 'YJMJExtension'
  pod 'YJSDWebImage'
  pod 'YJYYModel'
  pod 'Bugly'

  # Pods for cocoapods-ybin-demo

end
