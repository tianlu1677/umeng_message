# coding: utf-8
require 'digest/md5'
require 'json'

module UmengMessage
  module Sign
    def self.generate(platform, url, payload)
      Digest::MD5.hexdigest('POST' + url + JSON.generate(payload) + UmengMessage.app_master_secret(platform))
    end
  end
end
