require 'yard'
yard_adapter =
  YARD::Server::RackAdapter.new(
  {'sandbox' => [YARD::Server::LibraryVersion.new('sandbox', nil, File.join(File.dirname(__FILE__), '.yardoc'))]},
  {
    single_library: true,
    caching: false
  })
run Rack::URLMap.new("/api" => yard_adapter)
