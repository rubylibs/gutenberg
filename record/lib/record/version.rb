# encoding: utf-8


module Record

  module Version
    MAJOR = 1
    MINOR = 2
    PATCH = 0
  end
  VERSION = [Version::MAJOR,
             Version::MINOR,
             Version::PATCH].join('.')


  def self.version
    VERSION
  end

  def self.banner
    "record/#{VERSION} on Ruby #{RUBY_VERSION} (#{RUBY_RELEASE_DATE}) [#{RUBY_PLATFORM}]"
  end

  def self.root
    File.expand_path( File.dirname(File.dirname(File.dirname(__FILE__))) )
  end

end # module Record
