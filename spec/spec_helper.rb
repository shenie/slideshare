require "bundler/setup"
require "crack"
require "timecop"
require 'fakeweb'

$:.unshift(File.dirname(__FILE__) + '/../lib')
require "slideshare"
FakeWeb.allow_net_connect = false

def spec_fixture(filename)
  File.expand_path(File.join(File.dirname(__FILE__), "fixtures", filename))
end

def valid_configuration(options = {})
  {
    :api_key       => "this is not a real api key",
    :shared_secret => "this is not a real shared secret"
  }.merge(options)
end

def add_required_params(base, hash)
  base.send :add_required_params, hash
end

# Adapted from HTTParty specs
def stub_http_response_with(filename)
  format = filename.split('.').last.intern
  data = File.read(spec_fixture(filename))

	FakeWeb.clean_registry
	FakeWeb.register_uri(:any, %r|http://www\.slideshare\.net/|, :body => data)
end
