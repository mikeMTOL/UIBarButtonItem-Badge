Pod::Spec.new do |s|

  s.name         = "UIBarButtonItem-Badge"
  s.version      = "0.0.1"
  s.summary      = "Create a BarButtonItem with a badge on top. Easily customizable. Your BarButtonItem can be any custom view you wish for. The badge on top can display any number or string of any size or length."

  s.homepage     = "https://github.com/mikeMTOL/UIBarButtonItem-Badge"
  s.license      = 'MIT'

  s.author       = { "Mike" => "http://mikethinkingoutloud.com" }

  s.source       = { :git => "https://github.com/mikeMTOL/UIBarButtonItem-Badge.git" }

  s.platform     = :ios, '6.0'

  s.source_files = 'UIBarButtonItem+Badge.{h,m}', 'UIButton+Badge.{h,m}'
  s.requires_arc = true

end