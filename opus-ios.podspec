Pod::Spec.new do |s|
    s.name = "opus-ios"
    s.version = "0.0.1"
    s.license = { :type => "BSD" }
    s.homepage = "none"
    s.authors = { "Moritz Möller" => "mm@mxs.de" }
    s.summary = "libopus, libogg and libopusfile"
    s.source = { :git => "http://bitbucket.org/mm22/opus-ios" }

    s.subspec 'ogg' do |sp|
        sp.header_mappings_dir = 'libogg-1.3.2/include'
        sp.source_files = 'libogg-1.3.2/include/ogg/*.h', 'libogg-1.3.2/src/*.{h,c}'
        sp.public_header_files = 'libogg-1.3.2/include/ogg/*.h'
    end

    s.subspec 'opusfile' do |sp|
        sp.source_files = 'opusfile-0.7/include/*.h', 'opusfile-0.7/src/*.{h,c}',
        sp.public_header_files = 'opusfile-0.7/include/*.h'
    end

    s.subspec 'silk' do |sp|
        sp.header_mappings_dir = 'opus-1.1.4/silk'
        sp.source_files = 'opus-1.1.4/silk/**/*.{h,c}'
        sp.public_header_files = 'opus-1.1.4/silk/**/.h'
    end

    s.subspec 'celt' do |sp|
        sp.header_mappings_dir = 'opus-1.1.4/celt'
        sp.source_files = 'opus-1.1.4/celt/**/*.{h,c}'
        sp.public_header_files = 'opus-1.1.4/celt/**/*.{h,c}'
    end

    s.subspec 'opus' do |sp|
        sp.header_mappings_dir = 'opus-1.1.4'
        sp.source_files = 
            'opus-1.1.4/src/*.{h,c}',
            'opus-1.1.4/**/{arm,float,x86}/*.{h,c}',
            'opus-1.1.4/include/*.h'
        sp.public_header_files = 'opus-1.1.4/include/*.h'
        sp.xcconfig = {
            'GCC_PREPROCESSOR_DEFINITIONS' => 'HAVE_CONFIG_H=1',
        }
    end

end

