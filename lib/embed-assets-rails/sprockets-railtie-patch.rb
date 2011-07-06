
module Sprockets

  class Railtie

    protected

    def asset_environment_with_bundle_processors(app)
      env = asset_environment_without_bundle_processors(app)
      assets = app.config.assets
      if assets.bundle_processors
        assets.bundle_processors.each do |mime_and_processor|
          env.register_bundle_processor mime_and_processor.first, mime_and_processor.second
        end
      end
      env
    end

    alias_method_chain :asset_environment, :bundle_processors
  end

end
