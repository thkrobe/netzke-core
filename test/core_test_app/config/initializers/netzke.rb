Netzke::Core.setup do |config|
  config.js_direct_max_retries = 2
  config.ext_uri = "http://cdn.sencha.com/ext-4.1.1a-gpl" if ENV['EXTJS_SRC'] == 'cdn'

  # custom session expiration handling
  config.ext_javascripts << "#{File.dirname(__FILE__)}/javascripts/session_expiration.js"

  # feedback delay
  # config.js_feedback_delay = 2000
end

ConfigurableOnClassLevel.title = "Overridden"
