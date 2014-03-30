require 'gem_1'
require 'i18n'

mydir = File.expand_path(File.dirname(__FILE__))
I18n.load_path += Dir[File.join(mydir, 'locales', '*.yml')]

a= Gem1::Trans_1.new
puts a.tran("name.name")
str= "name.first_name"
puts a.i_tran(*str)