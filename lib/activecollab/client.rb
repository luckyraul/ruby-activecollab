module Activecollab
    class Client
        include HTTParty
        format :json

        attr_accessor :base_url, :token

        def initialize(token_obj)
            @token = token_obj[:token]
            @base_url = token_obj[:base_url]
            @options = {base_uri: @base_uri, headers: {'X-Angie-AuthApiToken' => @token}}
        end

        def get(path)
            response = self.class.get(prepareUrl(path), @options)
            #ap 'GET RESPONSE FROM AC:'
            #ap response
            response
        end

        private

        def prepareUrl(path)
            @base_url + '/api/v1/' + path
        end

    end
end
