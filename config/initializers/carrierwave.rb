require 'carrierwave/storage/fog'

if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     ENV['AKIAQFOWXLIQ2HW74GXH'],
      aws_secret_access_key: ENV['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']
    }

    config.fog_directory  = ENV['bbq-a-s3']
  end
end
