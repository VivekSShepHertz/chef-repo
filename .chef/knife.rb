# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "suyashmshephertz"
client_key               "#$JENKINS_HOME/suyashmshephertz.pem"
validation_client_name   "shephertztech-validator"
validation_key           "#$JENKINS_HOME/shephertztech-validator.pem"
chef_server_url          "https://#$Chef_Pub_IP/organizations/shephertztech"
cookbook_path            ["#{current_dir}/../cookbooks"]
