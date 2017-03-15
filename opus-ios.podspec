Pod::Spec.new do |s|
    s.name = "opus-ios"
    s.version = "0.0.1"
    s.license = { :type => "BSD" }
    s.homepage = "none"
    s.authors = { "Moritz Möller" => "mm@mxs.de" }
    s.summary = "libopus, libogg and libopusfile"
    s.source = { :git => "http://bitbucket.org/mm22/opus-ios" }

    s.header_mappings_dir = 'libogg-1.3.2/include'
    s.source_files = 
        'libogg-1.3.2/include/ogg/*.h',
        'libogg-1.3.2/src/*.{h,c}',
        'opusfile-0.7/include/*.h',
        'opusfile-0.7/src/*.{h,c}',
        'opus-1.1.4/{celt,silk,src}/*.{h,c}',
        'opus-1.1.4/**/{arm,float,x86}/*.{h,c}',
        'opus-1.1.4/include/*.h'

    s.public_header_files =
        'libogg-1.3.2/include/ogg/*.h',
        'opusfile-0.7/include/*.h',
        'opus-1.1.4/include/*.h'

    s.xcconfig = {
        'GCC_PREPROCESSOR_DEFINITIONS' => 'HAVE_CONFIG_H=1',
    }



    #s.header_mappings_dir = 'libogg-1.3.2/include/'

    #s.preserve_paths = 'Eigen/', 'Eigen/__/'

    #'USER_HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/io.rsi.eigen"'

    #s.public_header_files =
    #   'libogg-1.3.2/include/ogg/*.h'
    #    'opusfile-0.7/include/*.h'
    
    #    'libogg-1.3.2/include/ogg',

    #s.source_files = 'opus-1.1.4/config.h', 'opus-1.1.4/{celt,silk,src,include}/*.{h,c}', 'opus-1.1.4/**/{arm,float,x86}/*.{h,c}'

    #s.source_files = "opus-1.1.4/include/*.h", "opus-1.1.4/src/*.{h,c}", "opus-1.1.4/celt/*.{h,c}"
    #s.public_header_files = "opus-1.1.4/include/*.h"
# ./opus-1.1.4/include/opus_types.h

    # s.source_files = "opus-1.1.4/src/*.{h,c}", "opusfile-0.7/src/*.{h,c}", "libogg-1.3.2/src/*.{h,c}"
    # s.public_header_files = "opus-1.1.4/include/*.h", "opusfile-0.7/include/*.h", "libogg-1.3.2/include/ogg/*.h"

    # s.exclude_files
    # s.platform = :ios, '7.1'
    # s.header_mappings_dir = 'libopus'
    # s.xcconfig = {
    #     'GCC_PREPROCESSOR_DEFINITIONS' => 'HAVE_CONFIG_H=1',
    #     #'USER_HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/opus-1.1.4/include/"'
    # }
end

