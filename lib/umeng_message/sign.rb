# coding: utf-8
require 'digest/md5'

module UmengMessage
  module Sign
    def self.generate(platform, url, payload)
      Digest::MD5.hexdigest('POST' + url + payload.to_json + UmengMessage.app_master_secret(platform))
    end
  end
end
