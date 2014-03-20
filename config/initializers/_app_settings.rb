# encoding: UTF-8
require 'configatron'

configatron.app_name = 'bheard'

module Kernel
  def § 
    configatron.bheard
  end
end


