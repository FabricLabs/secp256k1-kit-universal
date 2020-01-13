Pod::Spec.new do |s|
  s.name             = 'Secp256k1Kit.swift'
  s.module_name      = 'Secp256k1Kit'
  s.version          = '1.0'
  s.summary          = 'Crypto secp256k1 library for Swift'

  s.description      = <<-DESC
CryptoSecp256k1 includes crypto functions for signing transactions Swift. It supports secp256k1.
                       DESC

  s.homepage         = 'https://github.com/horizontalsystems/secp256k1-kit-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Horizontal Systems' => 'hsdao@protonmail.ch' }
  s.source           = { git: 'https://github.com/horizontalsystems/secp256k1-kit-ios.git', tag: "#{s.version}" }
  s.social_media_url = 'http://horizontalsystems.io/'

  s.swift_version = '5'

  s.preserve_paths = ['Secp256k1Kit/Libraries']

  s.ios.deployment_target = '11.0'
  s.ios.source_files = ['Secp256k1Kit/Classes/**/*', 'Secp256k1Kit/Libraries/ios/include/*.h']
  s.ios.vendored_libraries  = 'Secp256k1Kit/Libraries/ios/lib/libsecp256k1.a'
  s.ios.pod_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}/Secp256k1Kit/Libraries/ios/include"',
    'LIBRARY_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}/Secp256k1Kit/Libraries/ios/lib"'
  }

  s.osx.deployment_target = '10.14'
  s.osx.source_files = ['Secp256k1Kit/Classes/**/*', 'Secp256k1Kit/Libraries/osx/include/*.h']
  s.osx.vendored_libraries  = 'Secp256k1Kit/Libraries/osx/lib/libsecp256k1.a'
  s.osx.pod_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}/Secp256k1Kit/Libraries/osx/include"',
    'LIBRARY_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}/Secp256k1Kit/Libraries/osx/lib"'
  }

end
