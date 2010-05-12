ANALYTICS_ID=ENV['ANALYTICS_ID']

pwd = File.dirname(__FILE__)
$: << pwd
$: << File.join(pwd, "activesupport/lib")
$: << File.join(pwd, "actionpack/lib")

require "action_controller"
require "action_view"

# Require rubygems after loading Action View
require 'rubygems'
begin
  gem 'RedCloth', '>= 4.2.3'
  #gem ''
rescue Gem::LoadError
  $stderr.puts %(Missing the RedCloth 4.2.3 gem.\nPlease `gem install -v=4.2.3 RedCloth` to generate the guides.)
  exit 1
end
                 
require 'action_controller'
require 'action_view'
require 'redcloth'     
require 'fileutils'

module CommunityEngine
  autoload :Generator, "community_engine/generator"
  autoload :Indexer, "community_engine/indexer"
  autoload :Helpers, "community_engine/helpers"
  autoload :TextileExtensions, "community_engine/textile_extensions"
end

RedCloth.send(:include, CommunityEngine::TextileExtensions)

if $0 == __FILE__
  CommunityEngine::Generator.new(ENV['OUTPUT_DIR']).generate
end
