require 'yaml'
require 'erb'
require 'data_string/version'
require 'data_string/config'

module DataString
  class << self
    def root
      File.expand_path('../..', __FILE__)
    end

    def yaml(path)
      YAML.load(ERB.new(File.read(File.join(*path))).result)
    end
  end
end
