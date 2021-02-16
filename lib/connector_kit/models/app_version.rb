require 'connector_kit/models/model'

module ConnectorKit
  # Simple model class for representing AppVersion
  class Version < Model
    attr_reader :version_string, :store_state

    def initialize(options)
      super(options)

      attrs = options['attributes']
      @version_string = attrs['versionString']
      @store_state = attrs['appStoreState']
    end
  end
end