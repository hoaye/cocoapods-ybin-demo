# frozen_string_literal: true

source "https://gems.ruby-china.com/"

# git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

pod_version=''
File.open("Podfile", "r") do |f|
    f.each_line do |line|
      if line.include? "best_pod_version=" and !line.include? "#"
        pod_version = line.split("'")[1]
      end
    end
end

if pod_version.empty?
  puts "========== 安装失败 ========="
  puts "原因: 无法获取Podfile中pod版本号\n请检查Podfile中是否包含, 如:"
  puts "\nbest_pod_version='1.9.1'\n\n"
  puts "=" * 30
  puts "\n" * 2
else
  gem 'cocoapods', pod_version
  gem 'cocoapods-packager'
end