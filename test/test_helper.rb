$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'data_string'

require 'minitest/autorun'
require 'minitest/mock'

module DataString
  class TestHelper < Minitest::Test
    def fixture(name)
      path = [DataString.root, 'test', 'fixtures', "#{name}.yml"]
      DataString.yaml(path)
    end
  end
end
