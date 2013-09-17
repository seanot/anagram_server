get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:inputword' do
  user_word = params[:inputword]
  @word_hashes = Word.sort_and_search(user_word)
  erb :index
end
