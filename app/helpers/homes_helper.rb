module HomesHelper
  def home_age(date)
    if date < 30.days.ago
      "old_home"
    elsif date >= 2.days.ago
      "new_home"
    else
      "standard_home"
    end
  end

  def home_favorited_heart_class(home, user)
    Favorite.find_by(home: home, created_by: user) ? "glyphicon-heart" : "glyphicon-heart-empty"
  end
end
