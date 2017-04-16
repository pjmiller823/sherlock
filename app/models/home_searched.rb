class HomeSearched < ApplicationRecord
  def elementary_search
    searched = params["searched"]

    @searched = Home.where("address like ? or city like ? or state like ? or zip like ?", "%#{searched}%", "%#{searched}%", "%#{searched}%", "%#{searched}%")
  end
end
