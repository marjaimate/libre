require "yaml"
require 'json'
require "cuba"
require "cuba/safe"
require "cuba/render"

# Cuba Plugins
Cuba.use Rack::Session::Cookie, :secret => "SoLongAndThanksForAllTheFish!"
Cuba.plugin Cuba::Safe
Cuba.plugin Cuba::Render

Cuba.define do
  on get do
    on "ciudades" do
      ciudades = YAML.load_file("ciudades.yml")
      # Index Cities
      on root do
        res.write ciudades.to_json
      end

      # Show City
      on ":ciudad" do |ciudad|
        res.write ciudades[ciudad].to_json
      end
    end

    on root do
      res.redirect "/ciudades"
    end
  end
end
