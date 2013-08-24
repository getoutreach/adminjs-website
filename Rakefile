require 'middleman-gh-pages'
require 'rubygems'
require 'json'

desc 'update release files from npm'
task :update_release do
  #`npm update adminjs`
  `cd node_modules/adminjs; npm install; grunt build:prod`

  package = JSON.parse(IO.read('node_modules/adminjs/package.json'))

  version = package['version']

  directory = 'node_modules/adminjs/dist'
  zipfile_name = "source/releases/adminjs-#{version}.zip"

  `zip -rj #{zipfile_name} #{directory}`

  demo_directory = 'source/demo/'

  `cp -r node_modules/adminjs/tmp/public/ #{demo_directory}`
end