# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "suyashmshephertz"
client_key               "#{current_dir}/suyashmshephertz.pem"
validation_client_name   "shephertztech-validator"
validation_key           "#{current_dir}/shephertztech-validator.pem"
chef_server_url          "https://52.0.69.164/organizations/shephertztech"
cookbook_path            ["#{current_dir}/../cookbooks"]
