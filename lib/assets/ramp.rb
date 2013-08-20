class Ramp
  include HTTParty
  base_uri 'api.ramp.com/v1/'

  # which can be :friends, :user or :public
  # options[:query] can be things like since, since_id, count, etc.
  def videos(search_parameters)
    self.class.get("/search/", :query => {
      :q => 'violencia',
      :apikey => 'tGJdxmKnlDjOgXgGgWmXtULMwpPGxE0R',
      :format => 'json'
      })
  end
end