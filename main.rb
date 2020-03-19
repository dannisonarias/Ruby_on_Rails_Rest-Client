require_relative './lib/rest_client_test.rb'

searching = RestClientSearch.new()
puts "Enter your search query"
searching.search_for?
p 'Which website to search Google or Bing?'
searching.website_to_search?
p 'Creating query'
searching.set_website_format
searching.format_all
searching.rest_get_parsed
searching.parse_it
searching.print_links
p searching.array_links



