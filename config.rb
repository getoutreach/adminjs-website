require 'stylus'

Stylus.use :nib

activate :livereload

activate :syntax

require "redcarpet"
set :markdown, :tables => true, :autolink => true, :gh_blockcode => true, :fenced_code_blocks => true
set :markdown_engine, :redcarpet


require 'lib/template_helpers'
helpers TemplateHelpers

set :css_dir, 'css'

set :js_dir, 'js'

set :images_dir, 'img'

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :gzip
end

activate :deploy do |deploy|
  deploy.method = :git
  deploy.build_before = true
end