AssetSync.configure do |config|
  config.fog_provider = 'AWS'
  config.fog_directory = ENV['langblock']
  config.aws_access_key_id = ENV['AKIAJXQYH6WVZAHZQXJQ']
  config.aws_secret_access_key = ENV['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']
  config.manifest = true
  config.fog_region = ENV[ap-northeast-1]
end