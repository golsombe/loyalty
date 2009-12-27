# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_loyalty_session',
  :secret      => '957a2eb1f18d1cb5a49a0f60f7328f9c9587a8fa34c19547a509de24decd47c25a97be836fd3d0ac5e3d625b8bebdddac6321556b2123f35fa897112533b0e82'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
