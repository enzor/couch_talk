# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_couch_foo_test_session',
  :secret      => '8228c8237b69ea55be21799cdfb68aa6504a88da9d99c2ebcc95ea8afae36b1bd3bb62ad9da74e62c317489cbbb0fe4d0c635d0d07b59f9cb6e0fdf6d42ec2a2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
