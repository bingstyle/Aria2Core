Pod::Spec.new do |s|

  s.name         = "Aria2Core"
  s.version      = "1.0.0"
  s.summary      = "aria2/libaria2 wrapper for Objective-C."

  s.homepage     = "https://github.com/bingstyle/Aria2Core.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = "bingstyle"
  s.requires_arc = true
  
  s.platform            = :ios, "11.0"
  s.ios.deployment_target = '11.0'
  s.source       = { :git => "https://github.com/bingstyle/Aria2Core.git", :tag => "#{s.version}" }

  s.source_files  = "Aria2Lib/*.{h,mm}"
  s.private_header_files = "Aria2Lib/aria2.h"

  s.vendored_libraries  = "Aria2Lib/Frameworks/*.dylib"

  s.xcconfig = {
    'LD_RUNPATH_SEARCH_PATHS' => '@executable_path/../Frameworks'
  }

end
