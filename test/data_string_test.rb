require 'test_helper'

module DataString
  class Test < TestHelper
    def test_that_it_has_a_version_number
      refute_nil ::DataString::VERSION
    end

    def test_should_load_yaml
      path = [DataString.root, 'test', 'fixtures', 'examples.yml']
      example = DataString.yaml(path)['one']
      assert_equal 'Example', example['name']
    end

    def test_should_have_root
      assert DataString.root
    end
  end
end
