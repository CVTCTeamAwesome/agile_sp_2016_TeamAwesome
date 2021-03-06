if Rails.env == "production"
  # set credentials from ENV hash
  S3_CREDENTIALS = { :access_key_id => ENV['AWS_ACCESS_KEY_ID'], :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'], :bucket => ['S3_BUCKET_NAME']}
else
  # get credentials from YML file
  S3_CREDENTIALS = "#{Rails.root.to_s}/config/application.yml"
end