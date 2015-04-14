# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "app42"
client_key               "#{current_dir}/app42.pem"
validation_client_name   "shephertz-validator"
validation_key           "#{current_dir}/shephertz-validator.pem"
chef_server_url          "https://52.0.69.164/organizations/shephertz"
cookbook_path            ["#{current_dir}/../cookbooks"]
