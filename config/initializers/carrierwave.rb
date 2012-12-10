CarrierWave.configure do |config|
  if Rails.env.production?
    config.cache_dir = "#{Rails.root}/tmp/uploads"
    config.storage = :fog
    config.fog_credentials = {
      :provider               => 'AWS',       # required
      :aws_access_key_id      => 'AKIAJWZXL4AYYRYKPVRQ',       # required
      :aws_secret_access_key  => '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'#,       # required
      #:region                 => 'us-east-1'  # optional, defaults to 'us-east-1'
    }
    config.fog_directory  = 'social_event'
    #config.fog_host       = 'https://assets.example.com'            # optional, defaults to nil
    config.fog_public     = true                                   # optional, defaults to true
    config.fog_attributes = { 'Cache-Control' => 'max-age=315576000' }  # optional, defaults to {}
  else
    config.storage = :file
  end

  config.enable_processing = !Rails.env.test?
end