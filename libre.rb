require "yaml"
require "cuba"
require "cuba/safe"
require "cuba/render"
require "erb"

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
        res.write view("ciudades", ciudades: ciudades.values)
      end

      # Show City
      on ":ciudad" do |ciudad|
        res.write view("ciudad", ciudad: ciudades[ciudad])
      end
    end

    on root do
      res.redirect "/ciudades"
    end
  end
end
