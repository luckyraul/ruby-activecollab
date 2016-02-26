module Activecollab
    class Authenticator
        include HTTParty
        attr_accessor :base_url, :login
        format :json

        def initialize(company = Activecollab.company, application = Activecollab.application, url = Activecollab.base_url, login = Activecollab.login, password = Activecollab.password)
            @base_url = url
            @options = {
                base_uri: url,
                body: {
                    username: login,
                    password: password,
                    client_name: company,
                    client_vendor: application,
                }
            }
        end

        def issueToken
            response = self.class.post('/api/v1/issue-token', @options)
            {token: response['token'], base_url: @base_url}
        end
    end
end
