require 'connector_kit/models/app_version'

module ConnectorKit

  class VersionResponseMapper
    def map(data)
        data.map { |version| Version.new(version) }
    end
  end
end