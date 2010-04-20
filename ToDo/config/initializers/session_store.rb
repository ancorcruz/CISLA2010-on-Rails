# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ToDo_session',
  :secret      => '6af50867147d30b93d1260b61e3ef4f238738243e2dced8d947a95bc36d5d2dd1dc72fac004cfa80d3f5a68e9adbc8c6586911e859d375231e0a4b8da0d61a64'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
