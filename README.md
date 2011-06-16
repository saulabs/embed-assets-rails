# Embedding Assets

This gem provides integration of embedding images and fonts into CSS files within the Rails asset pipeline.
More about embedding assets and how it works, see the [jammit documentation][1]. This gem actually reuses code from that project.

[1]: http://documentcloud.github.com/jammit/#embedding

## Installing

Add the following to your Gemfile:

    gem 'embed-assets-rails'

## Configuration

To enable embedding the assets set `config.assets.embed_assets` to `true`.

### Example

    MyProject::Application.configure do
      config.assets.embed_assets = true
    end

##  Notes

  * Rails 3.1 and up only
  * Only supports images and font in public/ directory (yet)
 
## Thanks

Thanks to documentcloud for creating [jammit][2].

[2]: http://documentcloud.github.com/jammit/

