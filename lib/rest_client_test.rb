# frozen_string_literal: true

# Class uses rest-client to GET data from a raw url, then uses nokogiri for parsing.
class RestClientSearch
  require 'rest-client'
  require 'nokogiri'

  attr_reader :array_links

  def initialize
    @website = ''
    @searchq = ''
    @google_or_bing = '/search?q='
    @completequery = ''
    @user_input = ''
    @array_links = []
  end

  def website_to_search?
    @user_input = gets.chomp
  end

  def enter_website
    @user_input = gets.chomp
    check_url
  end

  def website_error
    p 'detected Error in url please re-enter URL'
    enter_website
  end

  def check_url
    /(\bgoogle\b | \bbing\b )/i.match(@user_input).nil? ? website_error : set_website_format
  end

  def set_website_format
    @website = 'www.' + @user_input + '.com/'
  end

  def search_for?
    @searchq = gets.chomp
    replace_spaces
  end

  def replace_spaces
    @searchq.tr!(' ', '+') unless @searchq.split('').any?(' ')
  end

  def format_all
    @completequery = @website + @google_or_bing + @searchq
  end

  def rest_get_parsed
    @result = Nokogiri::HTML(RestClient.get(@completequery)) # get and parse with nokogiri
  end

  def parse_it
    @parsed = @result.css('a') # find all anchor tags
  end

  def print_links
    @parsed.each do |i|
      if /\bwww.\b/.match(i['href']) && !/\bimgurl\b/.match(i['href'])
        @array_links.push(i['href']) # new array with all 'href' values
      end
    end
  end
end
