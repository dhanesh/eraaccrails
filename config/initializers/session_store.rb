# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_eraaccrails_session',
  :secret      => '57020c8eee75db8839afdbe6bd42f7ee7c7f062b28d33c3ae9e76f90bde2a2dda0ff6a296810bdf32223ff84aa63f66cf0de3950244249696995edd208ca1dbd'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
