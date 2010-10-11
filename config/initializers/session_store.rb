# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_jahmanbrahman_session',
  :secret      => '2b60f3da326a43d38679dfa3e8d00360386855d3fffaf1fcf62de07b559489b6ca77ae7ff34594b948a858cc765a9eac7491cb5e3fab0b13e0d9466d74eddddf'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
