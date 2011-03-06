# Be sure to restart your server when you modify this file.
require 'digest/sha1'

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
Diaspora::Application.config.secret_token = ENV['BUSHIDO_SALT'] ? Digest::SHA1.hexdigest(ENV['BUSHIDO_SALT']) : '5184ae31486504b0e6a833893b3c5640c19f709be7a26d9588f6e5181c97732e4749bbc328ea48c00293771f52a17ba7a62a39bdaf20f6bfdd3ab23977c0f290'
