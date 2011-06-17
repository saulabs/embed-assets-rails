module Saulabs::EmbedAssets
  class Railtie < ::Rails::Railtie
    config.after_initialize do |app|
      app.config.assets.embed_assets = false if app.config.assets.embed_assets.nil?
      app.assets.register_bundle_processor 'text/css', Saulabs::EmbedAssets::Processor
    end
  end
end
