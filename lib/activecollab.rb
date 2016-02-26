require 'httparty'
require 'activecollab/version'

module Activecollab
    require 'activecollab/authenticator'
    mattr_accessor :base_url
    mattr_accessor :login
    mattr_accessor :password
    mattr_accessor :company
    mattr_accessor :application

    def self.setup
        yield self
    end
end
