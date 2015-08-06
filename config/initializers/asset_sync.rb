if defined?(AssetSync)
  AssetSync.configure do |config|
    config.fog_provider = 'AWS'
    config.fog_directory = ENV['langblock']
    config.aws_access_key_id = ENV['']
    config.aws_secret_access_key = ENV['']
    config.manifest = true
    config.fog_region = ENV['ap-northeast-1']
  end
end