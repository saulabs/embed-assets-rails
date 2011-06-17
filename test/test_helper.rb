$:.push File.expand_path("../lib", __FILE__)

require 'test/unit'
require 'pathname'
require 'uri'
require 'base64'

FIXTURE_PATH = "#{File.dirname(__FILE__)}/fixtures"

module Saulabs
  module EmbedAssets
  end
end

class Rails
  def self.public_path
    "#{FIXTURE_PATH}/public"
  end
end
