# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rails2-pipeline_session',
  :secret      => '81950997b8ffa7d02221f7ab96eb755a6e545454ea8e8e4138eac1bc1ab9c04e009ac2fae208094c597c7d02a2f804e7ea76adc46640a93170a72dd8155bc704'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
