class FlipCountView < UIView
  attr_accessor :days_left 

  def initWithFrame(frame)
      super 
      self.backgroundColor = UIColor.clearColor 
      self
  end

  def drawRect(rect)
    drawBackgroundImageInRect rect    
    drawDaysLeftLegendInRect rect
    drawDaysLeftInRect rect
  end
 
  def drawDaysLeftInRect(rect)
    big_font = UIFont.fontWithName("HelveticaNeue-Bold", size:36)
    @days_left.to_s.drawAtPoint([15,2],withFont:big_font)
  end

  def drawDaysLeftLegendInRect rect 
    small_font = UIFont.fontWithName("HelveticaNeue", size:12)
    "days left".drawAtPoint([11,rect.size.height - 24], withFont:small_font)
  end

  def drawBackgroundImageInRect rect 
    backgroundImage = UIImage.imageNamed("flipDateImage")
    backgroundImage.drawInRect(rect)
  end
end