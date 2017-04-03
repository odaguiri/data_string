require 'test_helper'

module DataString
  class ConfigTest < TestHelper
    def setup
      @authors = fixture(:authors)
      @config = DataString::Config.new
    end

    def test_should_have_mapper
      @config.stub :mapper, @authors do
        assert_equal 20, @config.mapper['$AUTHOR']['NAME']
        assert_equal 8, @config.mapper['$AUTHOR']['BIRTHDAY']
      end
    end
  end
end
