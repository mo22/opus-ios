Pod::Spec.new do |s|
    s.name = "opus-ios"
    s.version = "0.0.1"
    s.license = { :type => "BSD" }
    s.homepage = "none"
    s.authors = { "Moritz Möller" => "mm@mxs.de" }
    s.summary = "libopus, libogg and libopusfile"
    s.source = { :git => "http://bitbucket.org/mm22/opus-ios" }

    s.xcconfig = {
        # 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/opus-ios/opus-1.1.4/silk"'
        'HEADER_SEARCH_PATHS' => '"/Users/mmoeller/workspace/opus-ios/opus-1.1.4/silk/"'
    }

    s.subspec 'ogg' do |sp|
        sp.header_mappings_dir = 'libogg-1.3.2/include'
        sp.source_files = 'libogg-1.3.2/include/ogg/*.h', 'libogg-1.3.2/src/*.{h,c}'
        sp.public_header_files = 'libogg-1.3.2/include/ogg/*.h'
    end

    s.subspec 'opusfile' do |sp|
        sp.header_mappings_dir = 'opusfile-0.7/include'
        sp.source_files = 'opusfile-0.7/include/*.h', 'opusfile-0.7/src/*.{h,c}',
        sp.public_header_files = 'opusfile-0.7/include/*.h'
    end

    #s.subspec 'silk' do |sp|
    #    sp.header_mappings_dir = 'opus-1.1.4/silk'
    #    sp.source_files = 'opus-1.1.4/silk/**/*.{h,c}'
    #    sp.public_header_files = 'opus-1.1.4/silk/**/.h'
    #end

    #s.subspec 'celt' do |sp|
    #    sp.header_mappings_dir = 'opus-1.1.4/celt'
    #    sp.source_files = 'opus-1.1.4/celt/**/*.{h,c}'
    #    sp.public_header_files = 'opus-1.1.4/celt/**/*.{h,c}'
    #end

    #s.subspec 'opus' do |sp|
    #    sp.header_mappings_dir = 'opus-1.1.4/include'
    #    sp.source_files = 
    #        'opus-1.1.4/src/*.{h,c}',
    #        'opus-1.1.4/**/{arm,float,x86}/*.{h,c}',
    #        'opus-1.1.4/include/*.h'
    #    sp.public_header_files = 'opus-1.1.4/include/*.h'
    #    sp.xcconfig = {
    #        'GCC_PREPROCESSOR_DEFINITIONS' => 'HAVE_CONFIG_H=1',
    #    }
    #end

    s.subspec 'opus' do |sp|
    #   "prepare_command": "cat >src/config.h <<CONFIG_H\n#define HAVE_DLFCN_H 1\n#define HAVE_INTTYPES_H 1\n#define HAVE_LRINT 1\n#define HAVE_LRINTF 1\n#define HAVE_MEMORY_H 1\n#define HAVE_STDINT_H 1\n#define HAVE_STDLIB_H 1\n#define HAVE_STRINGS_H 1\n#define HAVE_STRING_H 1\n#define HAVE_SYS_STAT_H 1\n#define HAVE_SYS_TYPES_H 1\n#define HAVE_UNISTD_H 1\n\n#define OPUS_BUILD /**/\n\n#define STDC_HEADERS 1\n#define VAR_ARRAYS 1\n\nCONFIG_H\n",
        # sp.xcconfig = {
        #     # 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/opus-ios/opus-1.1.4/silk"'
        #     'HEADER_SEARCH_PATHS' => '"/Users/mmoeller/workspace/opus-ios/opus-1.1.4/silk/"'
        # }
        sp.source_files = 
            "opus-1.1.4/config.h",
            "opus-1.1.4/include/*.h",
            "opus-1.1.4/silk/*.{c,h}",
            "opus-1.1.4/celt/*.{c,h}",
            "opus-1.1.4/src/opus.c",
            "opus-1.1.4/src/opus_decoder.c",
            "opus-1.1.4/src/opus_encoder.c",
            "opus-1.1.4/src/opus_multistream.c",
            "opus-1.1.4/src/opus_multistream_encoder.c",
            "opus-1.1.4/src/opus_multistream_decoder.c",
            "opus-1.1.4/src/repacketizer.c",
            "opus-1.1.4/src/analysis.c",
            "opus-1.1.4/src/mlp.c",
            "opus-1.1.4/src/mlp_data.c",
            "opus-1.1.4/include/opus.h",
            "opus-1.1.4/include/opus_multistream.h",
            "opus-1.1.4/src/opus_private.h",
            "opus-1.1.4/src/analysis.h",
            "opus-1.1.4/src/mlp.h",
            "opus-1.1.4/src/tansig_table.h",
            "opus-1.1.4/silk/fixed"
        sp.public_header_files =
            "opus-1.1.4/include/*.h"
        sp.compiler_flags =
            "-w",
            "-Xanalyzer",
            "-analyzer-disable-checker",
            "-DHAVE_CONFIG_H=1",
            "-DFIXED_POINT"
    end


end

