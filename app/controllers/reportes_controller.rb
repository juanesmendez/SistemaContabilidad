require "open-uri"
require "json"

class ReportesController < ApplicationController
    def index
        response = open("http://3.92.241.92:8080/ventas/").read
        
        puts(response)
        puts()
        jsonResponse = JSON.parse(response)
        puts(jsonResponse)
        puts()
        puts(jsonResponse[0]["fields"])
    end
end
