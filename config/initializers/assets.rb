# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
#Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += ['active_admin/active_admin_globalize.css',
                                               'active_admin/active_admin_globalize.js']

#Rails.application.config.assets.precompile += %w(*.svg *.eot *.woff *.ttf *.gif *.png *.ico)
#Rails.application.config.assets.precompile << /\A(?!active_admin).*\.(js|css|scs|scsss)\z/
# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
