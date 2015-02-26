require 'rubygems' 
require 'excon' 
Excon.ssl_verify_peer = false 

CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :region					=> 'ap-northeast-1',
    :aws_access_key_id      => ENV["aws_access_key_id"],     # required
    :aws_secret_access_key  => ENV["aws_secret_access_key"], # required
  }
  config.fog_directory  = ENV["fog_directory"]               # required
end

