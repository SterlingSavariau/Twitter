# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_twitter_session',
  :secret      => '57b910ab96b757a2442134080d4b264fc05c07921a3377dba516fbe73809601d6964910ee47f8ded6afa47b696009e05d8e0bcd4158be8a1ab8016a8fe8bde5e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
