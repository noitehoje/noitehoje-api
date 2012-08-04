#coding: utf-8
require 'activeresource'

module NoiteHoje
  class Resource < ActiveResource::Base
    self.site = "http://noitehoje.com.br"
    self.format = :json

    class << self
      @@auth_token = ENV['NOITEHOJE_AUTH_TOKEN']

      def find(*arguments)
        arguments = append_auth_token_to_params(*arguments)
        super(*arguments)
      end
      
      def append_auth_token_to_params(*arguments)
        opts = arguments.last.is_a?(Hash) ? arguments.pop : {}
        opts = opts.has_key?(:params) ? opts : opts.merge(:params => {}) 
        opts[:params] = opts[:params].merge(:auth_token => @@auth_token)
        arguments << opts
        arguments
      end
    end
  end
end