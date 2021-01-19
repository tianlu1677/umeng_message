# coding: utf-8
require "umeng_message/version"
require "umeng_message/configuration"
require 'umeng_message/params'
require 'umeng_message/sign'
require "umeng_message/subject"

module UmengMessage

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @Configuration = Configuration.new
  end

  def self.configure
    yield configuration
  end

  def self.appkey platform
    platform.downcase == 'ios' ? configuration.ios_appkey : configuration.android_appkey
  end

  def self.app_master_secret platform
    platform.downcase == 'ios' ? configuration.ios_app_master_secret : configuration.android_app_master_secret
  end

  def self.production_mode
    configuration.production_mode
  end

end
