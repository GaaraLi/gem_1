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
  	def to_param
  		"#{id}_#{title}"
  	end
  end

end

ActiveRecord::Base.send(:include, Gem1)