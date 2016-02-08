module ApplicationHelper
#Styles for when @card is used:
  def picture_style
    if @card.picture?
      "background-color:#{@card.background_color};
       background-image: url(\"#{@card.picture.url}\");
       background-repeat: no-repeat;
       background-position: center;background-size: contain;color: rgba(0,0,0,0.0);"
    else
      "background-color:#{@card.background_color};"
    end
    
  end

#Styles for questionText
  def questionText
    if @card.picture?
      "opacity:0;"
    else
      "color:#{@card.foreground_color};font-size:#{@card.font_size};font-family:#{@card.font_style};"
    end
  end
  
#Styles for questionText
  def questionsText(card)
    if card.picture?
      "opacity:0;"
    else
      "color:#{card.foreground_color};font-family:#{card.font_style};"
    end
  end
  
#Styles for when |card| is used:
  def picture_styles(card)
    if card.picture?
      "color:#{card.foreground_color};background-color:#{card.background_color};
       background-image: url(\"#{card.picture.url}\");
       background-repeat: no-repeat;
       background-position: center;background-size: contain;color: rgba(0,0,0,0.0);"
    else
      "background-color:#{card.background_color};"
    end
    
  end
  
end
