require "gem_1/version"
mydir = File.expand_path(File.dirname(__FILE__))
require 'i18n'
I18n.load_path += Dir[File.join(mydir, 'locales', '*.yml')]

module Gem1
  class Config
    @locale = nil

    class << self
      attr_writer :locale
      def locale
        @locale || I18n.locale.downcase
      end
    end
  end

  class Trans_1
  	def to_param(id)
  		"params_#{id}"
  	end

    def i18n_tran(key)
    	str= "faker.#{key}"
    	i_tran(str)
    end

    def i_tran( *args)
        opts= args.last.is_a?(Hash) ? args.pop : {}
        opts[:locale] ="en"
        opts[:raise] = true
        I18n.translate(*(args.push(opts)))
    end

    def tran( key)
    	#i18n_tran(key).sample.scan(/#\{([A-Za-z]+\.)?([^\}]+)\}([^#]+)?/).map{|a, b, c|
    	#  "|#{a}|#{b}|#{c}|"
        #}
        i18n_tran(key).sample.scan(/#\{([A-Za-z]+\.)?([^\}]+)\}([^#]+)?/).map{|a,b,c|
          b+= c.to_s
        }.join
    end

    def method_missing(m, *args, &block)
    	puts "=========="
    	puts m
    	puts args
    	puts block
      "in method_missing=======#{m}===#{args}====#{block}==="
    end
  end
end
