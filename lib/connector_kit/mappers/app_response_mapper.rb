require 'connector_kit/models/app'

module ConnectorKit
  # Mapper between a HTTParty response and a list of Apps
  class AppResponseMapper
    def map(data)
        App.new(data)
    end
  end
end