# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

#get images from cloudinary
config.active_storage.service = :cloudinary
