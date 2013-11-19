require 'yaml'
require 'json'

target_files = %w[database memcached]

target_files.each do |target|
  ruby_block "ey-yaml2json-#{target}" do
    block do
      node.applications.each do |name, app|
        yaml = "/data/#{name}/shared/config/#{target}.yml"
        json = "/data/#{name}/shared/config/#{target}.json"
        if File.exist?(yaml) then
          File.write(json, YAML::load(File.read(yaml)).to_json.dump)
          Chef::Log.info "#{json} has been saved."
        end
      end
    end
    action :create
  end
end
