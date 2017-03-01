#
#  Be sure to run `pod spec lint BSNetWork.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "BSNetWork"
  s.version      = "0.0.1"
  s.summary      = "网络封装库"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
  This is my ldaqiangl 的一次封装组件实验
                   DESC

  s.homepage     = "https://github.com/ldaqiangl/BSNetWork.git"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  # s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "www.ldaqiangl.com" => "dongfuqiang@xinzhili.cn" }
  # Or just: s.author    = "董富强"
  # s.authors            = { "董富强" => "dongfuqiang@xinzhili.cn" }
  # s.social_media_url   = "http://twitter.com/董富强"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  s.platform     = :ios
  s.platform     = :ios, "7.0"
  s.ios.deployment_target = "7.0"

  #  When using multiple platforms
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => "https://github.com/ldaqiangl/BSNetWork.git", :tag => "#{s.version}" , :submodules => true }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.source_files  = "BSNetWork", "BSNetWork/**/BSNetWork.h"
  # s.exclude_files = "BSNetWork/Exclude"
  s.public_header_files = "BSNetWork/**/BSNetWork.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"
  # s.resource_bundles = {
  #   'HXDepedent_utility' => ['HXDepedent_utility/Assets/*.png']
  # }

  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = 'UIKit'
  # s.frameworks = 'UIKit', 'MapKit'

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "AFNetworking", "~> 2.3"


  # ――― NetKit ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
    s.subspec 'NetKit' do |netKit|
      
      netKit.source_files = 'BSNetWork/NetKit/*.{h,m}'
      netKit.public_header_files = 'BSNetWork/NetKit/*.h'
      netKit.dependency "AFNetworking"
    end
    
  # ――― Category ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
    s.subspec 'Category' do |category|

      category.source_files = 'BSNetWork/Category/*.{h,m}'
      category.public_header_files = 'BSNetWork/Category/*.h'
      category.dependency "MJRefresh"
      category.dependency 'DZNEmptyDataSet'
    end

# ――― Resources ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
    # s.subspec 'Resources' do |ss|

    #   ss.source_files = 'BSNetWork/NetKit/BSNetKit.h'
    #   ss.public_header_files = 'BSNetWork/NetKit/BSNetKit.h'
    #   ss.dependency "AFNetworking"
    # end


end
