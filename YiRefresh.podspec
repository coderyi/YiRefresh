Pod::Spec.new do |s|
s.name         = "YiRefresh"
s.version      = "0.9"
s.summary      = "a simple way to use pull-to-refresh."
s.homepage     = "https://github.com/coderyi/YiRefresh"

s.author       = { "coderyi" => "coderyi@foxmail.com" }

s.source       = { :git => "https://github.com/coderyi/YiRefresh.git", :tag => "0.9" }

s.ios.deployment_target = '7.0'


s.source_files = 'YiRefresh/**/*.{m,h}'

end


