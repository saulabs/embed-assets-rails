module Saulabs::EmbedAssets
  class Railtie < ::Rails::Railtie

    initializer "saulabs.sprockets.embed_assets", :after => 'setup_compression' do |app|
      app.config.assets.embed_assets = false if app.config.assets.embed_assets.nil?
      app.config.assets.bundle_processors << ['text/css', Saulabs::EmbedAssets::Processor]
    end

  end
end
