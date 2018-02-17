class WeekFourAssessmentApp
  get '/' do
    @users = User.all
    erb :welcome
  end
end
