module K2ConnectRubyApiGem
  class Client
    def initialize(access_token = nil)
      @access_token = access_token || ENV["K2CONNECTRUBYAPIGEM_ACCESS_TOKEN"]
    end

    # This is the method for get parsing the json response
    def parse_it(json)

      # With YAJL
      # json = File.open('/home/k2-engineering-03/RubymineProjects/k2_exported_JSON.json', 'r')
      parser = Yajl::Parser.new
      hash = parser.parse(json)

      # hash.extend Hashie::Extensions::DeepFind
      puts ("This is the Hash Body: \t #{hash}\n\n")

      # {"info"=>{"_postman_id"=>"0e26f4a8-895b-4836-918d-bd12cbd2b66c", "name"=>"Core Requests", "schema"=>"https://schema.getpostman.com/json/collection/v2.1.0/collection.json"}, "item"=>[{"name"=>"http://localhost:3000/api/financial/private/financial_transactions", "request"=>{"method"=>"POST", "header"=>[{"key"=>"Content-Type", "value"=>"application/json"}], "body"=>{"mode"=>"raw", "raw"=>"{\n\t\"authentication_token\": \"2160768704\",\n\t\"signature\": \"v2WfmoOei0pg1NvpkVeD+1OsqSU=\",\n\t\"financial_transaction_type\": \"BuygoodsTransaction\",\n\t\"buygoods_transaction\": {\n\t\t\"reference\": \"DAVY01182019\",\n\t\t\"external_reference\": \"DAVY01182019\",\n\t\t\"short_code\": \"112233\",\n\t\t\"state\": \"Complete\",\n\t\t\"restricted_state\": \"Received\",\n\t\t\"amount\": \"1000.00\",\n\t\t\"origination_time\": \"2019-01-18 9:19:00 +0300\",\n\t\t\"msisdn\": \"254716230902\",\n\t\t\"first_name\": \"david\",\n\t\t\"middle_name\": \"\",\n\t\t\"last_name\": \"kariuki\",\n\t\t\"mm_system\": \"M-PESA\"\n\t}\n}"}, "url"=>{"raw"=>"http://localhost:3000/api/financial/private/financial_transactions", "protocol"=>"http", "host"=>["localhost"], "port"=>"3000", "path"=>["api", "financial", "private", "financial_transactions"]}, "description"=>"financial transaction straight to core"}, "response"=>[]}]}

      # with Faraday
      # the_url = "/home/k2-engineering-03/RubymineProjects/k2_exported_JSON.json"
      #
      # conn = Faraday.new(url: the_url) do |faraday|
      #   faraday.adapter Faraday.default_adapter
      #   faraday.response :json
      # end
      # conn.get do |response|
      #   puts("The Response Header is \t#{response.headers}\n\n")
      #   puts("The Response Body is \t#{response.body}\n\n")
      # end
    end
  end
end