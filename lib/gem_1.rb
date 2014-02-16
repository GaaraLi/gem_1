require "gem_1/version"

module Gem1
  def self.included(base)
  	base.extend(ClassMethods)
  end

  module ClassMethods
  	def urlize
  		include Gem1::InstanceMethods
  	end
  end

  module InstanceMethods
  	def self.to_param(id)
  		"params_#{id}"
  	end
  end

end
