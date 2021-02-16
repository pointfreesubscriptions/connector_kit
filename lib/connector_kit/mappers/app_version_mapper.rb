require 'connector_kit/models/version'

module ConnectorKit

  class VersionResponseMapper
    def map(data)
        data.map { |version| Version.new(version) }
    end
  end
end