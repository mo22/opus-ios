Pod::Spec.new do |s|
    s.name = "opus-ios"
    s.version = "0.0.1"
    s.license = { :type => "BSD" }
    s.homepage = "none"
    s.authors = { "Moritz Möller" => "mm@mxs.de" }
    s.summary = "libopus, libogg and libopusfile"
    s.source = { :git => "http://bitbucket.org/mm22/opus-ios" }
    s.source_files = "opus-1.1.4/src/*.{h,c}", "opusfile-0.7/src/*.{h,c}"
    # s.exclude_files
    s.public_header_files = "opus-1.1.4/include/*.h"
    s.platform = :ios, '7.1'
    # s.header_mappings_dir = 'libopus'
    s.xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'HAVE_CONFIG_H=1' }
end

