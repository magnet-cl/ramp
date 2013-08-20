require 'httparty'

class PostsController < ApplicationController

    def new
    end

    def create

        @response = HTTParty.get('http://api.ramp.com/v1/search', :query => {
                    :q => params[:post]['query'],
                    :apikey => 'tGJdxmKnlDjOgXgGgWmXtULMwpPGxE0R',
                    :format => 'json',
                    :num => '77'})
        
        @complete_response = JSON.parse(@response.body)
        @videos = @complete_response['Response']['ResultSet']['Results']['CompleteResult']

        
    end
end
