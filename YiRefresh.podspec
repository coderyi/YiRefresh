Pod::Spec.new do |s|
  s.name         = "YiRefresh"
  s.version      = "0.9.3"
  s.summary      = "YiRefresh - a simple way to use pull-to-refresh."
  s.homepage     = "https://github.com/coderyi/YiRefresh"
  s.license      = "MIT"
  s.authors      = { "coderyi" => "coderyi@163.com" }
  s.source       = { :git => "https://github.com/coderyi/YiRefresh.git", :tag => "0.9.3" }
  s.frameworks   = 'Foundation', 'CoreGraphics', 'UIKit'
  s.platform     = :ios, '7.0'
  s.source_files = 'YiRefresh/**/**/*.{h,m,png}'
  s.requires_arc = true
end