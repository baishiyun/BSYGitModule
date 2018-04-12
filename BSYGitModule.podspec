

Pod::Spec.new do |s|
  s.name             = 'BSYGitModule'
  s.version          = '0.1.0'
  s.summary          = '这事一个跳转的库，解除跳转耦合使用.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/baishiyun/BSYGitModule'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'baishiyun' => '769290632@qq.com' }
  s.source           = { :git => 'https://github.com/baishiyun/BSYGitModule.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'

  s.source_files = 'BSYGitModule/Classes/**/*'
  
  # s.resource_bundles = {
  #   'BSYGitModule' => ['BSYGitModule/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit'
end
