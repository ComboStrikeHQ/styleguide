###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

set :slim, { :format => :html }
activate :sprockets

activate :i18n, :mount_at_root => :en

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
helpers do
  def i18n_set? key
    I18n.t key, raise: true rescue false
  end
end

#set :relative_links, true

# Build-specific configuration
configure :build do
  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # activate :asset_host, :host => '//d1gaycsr18p7io.cloudfront.net/www.ubisoft-e3.com'
  #activate :relative_assets
end

after_configuration do
 sprockets.append_path File.join(Bundler.rubygems.find_name('ad2games-theme').first.full_gem_path, 'app', 'assets')
end
