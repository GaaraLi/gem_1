require File.expand_path(File.dirname(__FILE__) + '/test_helper.rb')

class TestGem_1< Test::Unit::TestCase
	def setup
	end

	def test_to_param
		assert_equal( Gem1::InstanceMethods.to_param(1), 'params_1')
	end
end