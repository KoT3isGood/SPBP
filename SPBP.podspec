#
# Be sure to run `pod lib lint SPBP.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SPBP
  s.version          = '1.0.0'
  s.summary          = 'Adds preview like in Xcode for Swift Playgrounds'

  s.description      = <<-DESC
  - Adds preview like in Xcode for Swift Playgrounds
  - Writen on SwiftUI.
                       DESC

  s.homepage         = 'https://github.com/KoT3isGood/SwiftPlaygroundsBetterPreview'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'A. KoT.' => 'bratelllo@gmail.com' }
  s.source           = { :git => 'https://github.com/KoT3isGood/SwiftPlaygroundsBetterPreview.git', :tag => s.version.to_s }

  s.platform      = :ios, "15.0"

  s.source_files = 'Sources/**/*'
  s.swift_version = "5.5"

end
