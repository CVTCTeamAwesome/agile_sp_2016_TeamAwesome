module ApplicationHelper
#Styles for when @card is used:
  def default_style
    "color:#{@card.foreground_color};
     background-color:#{@card.background_color};
     font-family:#{@card.font_style};
     font-size:#{@card.font_size};"
  end
  
  def picture_style
    if @card.picture?
      "background-image: url(\"#{@card.picture.url}\");
       background-repeat: no-repeat;
       background-position: center;
       background-size: auto 50%;"
    end
  end

#Styles for frontText
  def frontText
    if @card.picture?
      "top: 75%;"
    end
  end
  
#Styles for card_text
  def cardText
    "color:#{@card.foreground_color};
     font-size:#{@card.font_size};
     font-family:#{@card.font_style};"
  end
  
#Styles for questionText
  def questionsText(card)
    if card.picture?
      "top: 75%;"
    end
  end
  
#Styles for when |card| is used:
  def picture_styles(card)
    "color:#{card.foreground_color};font-size:#{card.font_size};font-family:#{card.font_style};
     background-color:#{card.background_color};
     font-family:#{card.font_style};
     font-size:#{card.font_size};"
    if card.picture? && card.question_text.present?
      "background-image: url(\"#{card.picture.url}\");
       background-repeat: no-repeat;
       background-position: center;
       background-size: auto 50%;"
    end
    
  end
  
end
