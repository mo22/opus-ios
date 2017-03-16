Pod::Spec.new do |s|
    s.name = "opus-ios"
    s.version = "0.0.2"
    s.license = { :type => "BSD" }
    s.homepage = "none"
    s.authors = { "Moritz Möller" => "mm@mxs.de" }
    s.summary = "libopus, libogg and libopusfile"
    s.source = { :git => "https://github.com/mo22/opus-ios.git" }

    s.xcconfig = {
        'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/opus-ios/opus-1.1.4/silk"'
        #'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/opus-ios/opus-1.1.4/silk" "${PODS_ROOT}/opus-ios/libogg-1.3.2/include" "${PWD}/opus-1.1.4/silk" "${PWD}/libogg-1.3.2/include"'
    }

    s.prepare_command = <<-CMD
        cat >opus-1.1.4/src/config.h <<CONFIG_H
        #define HAVE_DLFCN_H 1
        #define HAVE_INTTYPES_H 1
        #define HAVE_LRINT 1
        #define HAVE_LRINTF 1
        #define HAVE_MEMORY_H 1
        #define HAVE_STDINT_H 1
        #define HAVE_STDLIB_H 1
        #define HAVE_STRINGS_H 1
        #define HAVE_STRING_H 1
        #define HAVE_SYS_STAT_H 1
        #define HAVE_SYS_TYPES_H 1
        #define HAVE_UNISTD_H 1
        #define OPUS_BUILD /**/
        #define STDC_HEADERS 1
        #define VAR_ARRAYS 1
        CONFIG_H
    CMD

    s.subspec 'ogg' do |sp|
        sp.header_mappings_dir = 'libogg-1.3.2/include'
        sp.source_files = 'libogg-1.3.2/include/ogg/*.h', 'libogg-1.3.2/src/*.{h,c}'
        sp.public_header_files = 'libogg-1.3.2/include/ogg/*.h'
    end

    s.subspec 'opusfile' do |sp|
        sp.header_mappings_dir = 'opusfile-0.7/include'
        sp.source_files = 'opusfile-0.7/include/*.h', 'opusfile-0.7/src/*.c',
        sp.public_header_files = 'opusfile-0.7/include/*.h'
    end

    s.subspec 'opus' do |sp|
        sp.source_files = 
            "opus-1.1.4/src/config.h",
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

