Pod::Spec.new do |s|
  s.name        = "Simplinit"
  s.version     = "1.5"
  s.summary     = "Help you create components faster"
  s.homepage    = "https://github.com/HisongMo/Simplinit"
  s.license     = { :type => "MIT" }
  s.authors     = { "HisongMo" => "wereaiyou@163.com" }

  s.requires_arc = true
  s.swift_version = "5.0"

  #s.osx.deployment_target = "10.9"
  s.ios.deployment_target = "13.0"
  #s.watchos.deployment_target = "2.0"
  #s.tvos.deployment_target = "9.0"

  s.source   = { :git => "https://github.com/HisongMo/Simplinit.git", :tag => s.version }
  s.source_files = "Simplinit/**/*.swift"


end