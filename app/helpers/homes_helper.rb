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
end
