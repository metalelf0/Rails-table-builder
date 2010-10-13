# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_table_builder_example_1_session',
  :secret      => '607cf0c5d42c4abc7e732dad51e473b8c29995bfb3dfa8672bae11c8e77a07fc877ac12aec6bb366ebae3800ee165564a7f59d77b6a559433fa94a1be8bbde48'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
