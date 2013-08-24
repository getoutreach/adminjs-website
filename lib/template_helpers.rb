require 'json'

module TemplateHelpers

  def release_version
    package = JSON.parse(IO.read('node_modules/adminjs/package.json'))
    version = package['version']
  end

  def release_path
    "/releases/adminjs-#{release_version}.zip"
  end

end