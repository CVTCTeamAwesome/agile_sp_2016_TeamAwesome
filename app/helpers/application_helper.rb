module ApplicationHelper
#Styles for when @card is used:
  def picture_style
    if @card.picture?
      "color:#{@card.foreground_color};
       background-color:#{@card.background_color};
       background-image: url(\"#{@card.picture.url}\");
       background-repeat: no-repeat;
       background-position: center;
       background-size: auto 50%;
       font-family:#{@card.font_style};"
    else
      "color:#{@card.foreground_color};
       background-color:#{@card.background_color};
       font-family:#{@card.font_style};
       font-size:#{@card.font_size};"
    end
  end

#Styles for card_text
  def cardText
    if @card.picture?
      "color:#{@card.foreground_color};
       font-size:#{@card.font_size};
       font-family:#{@card.font_style};
       top: 75%"
    else
      "color:#{@card.foreground_color};
       font-size:#{@card.font_size};
       font-family:#{@card.font_style};"
    end
  end
  
#Styles for questionText
  def questionsText(card)
    if card.picture?
      "color:#{card.foreground_color};
       font-family:#{card.font_style};
       top: 75%"
    else
      "color:#{card.foreground_color};
       font-family:#{card.font_style};"
    end
  end
  
#Styles for when |card| is used:
  def picture_styles(card)
    if card.picture?
      "color:#{card.foreground_color};
       background-color:#{card.background_color};
       background-image: url(\"#{card.picture.url}\");
       background-repeat: no-repeat;
       background-position: center;
       background-size: auto 50%;
       font-family:#{card.font_style};"
    else
      "color:#{card.foreground_color};
       background-color:#{card.background_color};
       font-family:#{card.font_style};"
    end
  end
  
#Styles for questionText
  def displayQuestionsText(card)
    if card.picture?
      "color:#{card.foreground_color};
       font-family:#{card.font_style};
       font-size:#{card.font_size};
       top: 75%"
    else
      "color:#{card.foreground_color};
       font-family:#{card.font_style};
       font-size:#{card.font_size};"
    end
  end
  
#Styles for when |card| is used in display:
  def displayPicture_styles(card)
    if card.picture?
      "color:#{card.foreground_color};
       background-color:#{card.background_color};
       background-image: url(\"#{card.picture.url}\");
       background-repeat: no-repeat;
       background-position: center;
       background-size: auto 50%;
       font-family:#{card.font_style};"
    else
      "color:#{card.foreground_color};
       background-color:#{card.background_color};
       font-family:#{card.font_style};
       font-size:#{card.font_size};"
    end
  end
  
end
