class WeekFourAssessmentApp
  get '/' do
    @users = User.all
    erb :welcome
  end

  get '/name/:name' do
    user = User.new
    user.name = params[:name]
    user.save
    redirect '/'
  end

end
