require 'openssl'
require 'jwt'

module ConnectorKit
  # Helper class for generating JWT tokens
  class TokenGenerator

    def self.cretat_from_file(issuer_id, key_id, private_key_file_path)
      private_key = File.read(@private_key_file_path)
      instance = TokenGenerator.new(issuer_id, key_id, private_key)
    end

    def initialize(issuer_id, key_id, private_key)
      @private_key = private_key
      @custom_headers = {
        kid: key_id,
        typ: 'JWT'
      }
      @payload = {
        iss: issuer_id,
        aud: 'appstoreconnect-v1'
      }
    end

    def generate_token
      ecdsa_key = OpenSSL::PKey.read(@private_key)
      expiration = Time.now.to_i + 20 * 60
      @payload[:exp] = expiration

      puts "Generated token expires: #{Time.at(expiration)}"

      JWT.encode(@payload, ecdsa_key, 'ES256', @custom_headers)
    end
  end
end
