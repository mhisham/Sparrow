Pod::Spec.new do |s|
  s.name = 'Sparrow'
  s.version = '1.1.0'
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.summary = 'A library for simplify iOS programming'
  s.homepage = 'https://github.com/IvanVorobei/Sparrow'
  s.authors = { 'Ivan Vorobei' => 'hello@ivanvorobei.by' }
  s.platform = :ios 
  s.source = { :git => 'https://github.com/mhisham/Sparrow.git', :tag => s.version.to_s }
  s.framework = 'UIKit'
  s.requires_arc = true
  s.ios.deployment_target = '8.0'
  s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
    core.name = 'Core'
    core.source_files = 'sparrow/**/*.swift'
  end

  s.subspec 'LaunchAnimation' do |launch_animation|
    launch_animation.name = 'LaunchAnimation'
    launch_animation.source_files = 'sparrow/launch/animation/**/*.swift'
  end

  s.subspec 'Modules' do |modules|
    modules.name = 'Modules'
    modules.source_files = 'sparrow/**/*.swift'

    modules.subspec 'RequestPermission' do |request_permission|
      request_permission.name = 'RequestPermission'
      request_permission.dependency 'Sparrow/Core'
    end

    modules.subspec 'RateApp' do |rate_app|
      rate_app.name = 'RateApp'
      rate_app.dependency 'Sparrow/Core'
    end

  end

end
