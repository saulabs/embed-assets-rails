require 'test_helper'
require 'embed-assets-rails/processor'

module Saukopf::EmbedAssets
  class Processor
    def embed_assets_enabled?
      true
    end
  end
end

class EmbedAssetsProcessorTest < Test::Unit::TestCase

  include Saukopf::EmbedAssets

  def test_classes_are_loaded
    assert_kind_of Module, Saukopf::EmbedAssets
    assert_kind_of Class, Saukopf::EmbedAssets::Processor
  end

  def test_embedding_assets
    expected_css = File.open("#{FIXTURE_PATH}/test_embedded.css", 'r') {|f| f.read }
    result_css = Processor.new("#{FIXTURE_PATH}/test.css").render

    assert_equal expected_css, result_css
  end

end
