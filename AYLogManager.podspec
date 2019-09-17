Pod::Spec.new do |s|
s.name         = "AYLogManager"
s.version      = "1.0.2"
s.summary      = "AYLogManager."
s.description  = <<-DESC
AYLogManager对讲库
DESC
s.homepage     = "https://github.com/lsy076/AYLogManager"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author             = { "赖盛源" => "756486059@qq.com" }
s.platform     = :ios, "8.0"
s.source       = { :git => "https://github.com/lsy076/AYLogManager.git", :tag => s.version }
s.vendored_frameworks = "AYLogManager/AYLogManager.framework"
s.requires_arc = true
end