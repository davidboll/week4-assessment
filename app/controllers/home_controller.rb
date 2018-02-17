class WeekFourAssessmentApp
  get '/' do
    @users = User.all
    erb :welcome
  end

  get '/name/:name' do
    "#{params[:name]} is a student at Craft Academy"
  end

end
