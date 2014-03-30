require File.expand_path(File.dirname(__FILE__) + '/test_helper.rb')

class TestGem_1< Test::Unit::TestCase
	def setup
		@trans= Gem1::Trans_1.new
	end

	def test_to_param
		assert_equal( @trans.to_param(1), 'params_1')
	end
	def test_i18n
		assert_equal( @trans.i_tran("faker.name.first_name"), "")
	end
end