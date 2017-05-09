
Pod::Spec.new do |s|
  s.name             = "Board"
  s.version          = "1.0.0"
  s.summary          = "Board is an alert view for iOS"

  s.description      = <<-DESC
                        Board is an alert view written in swift.
                        DESC

  s.homepage         = "https://github.com/Meniny/Board"
  s.license          = 'MIT'
  s.author           = { "Meniny" => "Meniny@qq.com" }
  s.source           = { :git => "https://github.com/Meniny/Board.git", :tag => s.version.to_s }
  s.social_media_url = 'http://meniny.cn/'

  s.ios.deployment_target = '8.0'
  # s.osx.deployment_target = '10.10'
  # s.tvos.deployment_target = '9.0'
  # s.watchos.deployment_target = '2.0'

  s.source_files = 'Board/**/*.swift'
  s.resources = 'Board/**/*.xib'
  # s.public_header_files =
  s.frameworks = 'Foundation', 'UIKit'
  # s.dependency ""
end
