module Saulabs::EmbedAssets
  class Railtie < ::Rails::Railtie

    initializer "saulabs.sprockets.embed_assets", :after => 'sprockets.environment' do |app|
      app.config.assets.embed_assets = false if app.config.assets.embed_assets.nil?
      app.assets.register_bundle_processor 'text/css', Saulabs::EmbedAssets::Processor
    end

  end
end
