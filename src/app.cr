require "kemal"
require "celestine"

require "./macros"
require "./procedural_art"

# IDEAS FOR APP 
# AUTOMATICALLY GENERATES A VARIETY OF AUTOMATICALLY GENERATED ART
# Broken up by the different generators
# Each generator is given 1 minute to make new art
# When the time is up all the art is collected, posted to the site, and then zipped with others from that day
# Zip backups available monthly.
#  - Organise with likes

get "/" do |env|
  render_layout "home"
end

get "/inward" do |env|
  render_layout "inward"
end

get "/mineshift-s" do |env|
  render_layout "mineshift-s"
end

get "/splash" do |env|
  render_layout "splash"
end

# get "/mineshift-c" do |env|
#   render_layout "mineshift-c"
# end

get "/hypnos" do |env|
  render_layout "hypnos"
end

get "/chromatic" do |env|
  render_layout "chromatic"
end

get "/semicircle" do |env|
  render_layout "semicircle"
end

get "/psychoflower" do |env|
  render_layout "psychoflower"
end


get "/polarspins" do |env|
  render_layout "polar_spins"
end

get "/subdivision" do |env|
  render_layout "subdivision"
end


get "/retrowave" do |env|
  render_layout "retrowave"
end

Kemal.config.port = ARGV.size == 0 ? 3000 : ARGV[0].to_i
Kemal.run