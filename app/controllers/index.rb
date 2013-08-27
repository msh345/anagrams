get '/' do
  @results = params[:anagrams]
  erb :index
end

post '/anagrams' do
  user_word = Word.new(:word => params[:user_input],:sorted_word => params[:user_input].chars.to_a.sort.join)
  @results = user_word.return_anagrams
  # redirect to("/?anagrams=#{user_word}")
end
