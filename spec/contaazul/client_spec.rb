# -*- encoding: utf-8 -*-
require 'spec_helper'
require 'json'

describe Contaazul::Client do

  before do
    Contaazul.reset
  end

  describe "api_endpoint" do

    after(:each) do
      Contaazul.reset
    end

    it "defaults to https://api.contaazul.com.br/" do
      client = Contaazul::Client.new
      expect(client.api_endpoint).to eq('https://api.contaazul.com.br/')
    end

    it "is set" do
      Contaazul.api_endpoint = 'http://lvh.me/'
      client = Contaazul::Client.new
      expect(client.api_endpoint).to eq('http://lvh.me/')
    end

  end

  context "when working with oauth tokens" do

    before(:each) do
      Contaazul.reset
      @client = Contaazul::Client.new
    end

    # it "should request and return a public token" do
    #   stub_request(:get, "#{Contaazul.api_endpoint}oauth/requestkey/#{Contaazul.external_token}").
    #      with(:headers => {'Accept'=>'application/json', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'User-Agent'=>'Contaazul Non-Official Ruby Gem 0.1.0dev'}).
    #      to_return(:status => 200, :body => '{ "publicToken" : "1f74b13f1e5c6c69cb5d7fbaabb1e2cb" }', :headers => {
    #       :content_type => "application/json; charset=utf-8"
    #       })

    #   response = Contaazul.get("oauth/requestkey/#{Contaazul.external_token}")
    #   expect(response["publicToken"]).to eq("1f74b13f1e5c6c69cb5d7fbaabb1e2cb")
    # end

    # it "should get a valid oauth2 instance" do
    #   stub_request(:get, "#{Contaazul.api_endpoint}oauth/requestkey/#{Contaazul.external_token}").
    #      with(:headers => {'Accept'=>'application/json', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'User-Agent'=>'Contaazul Non-Official Ruby Gem 0.1.0dev'}).
    #      to_return(:status => 200, :body => '{ "publicToken" : "1f74b13f1e5c6c69cb5d7fbaabb1e2cb" }', :headers => {
    #       :content_type => "application/json; charset=utf-8"
    #       })

    #   response = Contaazul.get "oauth/requestkey/#{Contaazul.external_token}"
    #   # @client.to_s
    #   # client = Contaazul::Client.new(:oauth_token => response)
    # end

  end

end
