module ApplicationHelper
#Styles for when @card is used:
  def picture_style
    if @card.picture?
      "background:#{@card.background_color} url(\"#{@card.picture.url}\") no-repeat center;background-size: cover;color: rgba(0,0,0,0.0);"
    else
      "background:#{@card.background_color};"
    end
    
  end

#Styles for questionText
  def questionText
    if @card.picture?
      "opacity:0;"
    else
      "color:#{@card.foreground_color};font-size:#{@card.font_size};font-style:#{@card.font_style};"
    end
  end
  
#Styles for questionText
  def questionsText(card)
    if card.picture?
      "opacity:0;"
    else
      "color:#{card.foreground_color};font-size:#{card.font_size};font-style:#{card.font_style};"
    end
  end
  
#Styles for when |card| is used:
  def picture_styles(card)
    if card.picture?
      "color:#{card.foreground_color};background:#{card.background_color} url(\"#{card.picture.url}\") no-repeat center;background-size: cover;color: rgba(0,0,0,0.0);"
    else
      "background:#{card.background_color};"
    end
    
  end
  
end
