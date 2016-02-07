module ApplicationHelper
#Styles for when @card is used:
  def picture_styles
    if @card.picture?
      "background:#{@card.background_color} url(\"#{@card.picture.url}\") no-repeat center;background-size: cover;"
    else
      "background:#{@card.background_color};"
    end
    
  end

#Styles for when |card| is used:
  def card_picture_styles
    #"background:#{@card.background_color} url(\"#{@card.picture.url}\") no-repeat center;background-size: cover;"
  end
  
end
