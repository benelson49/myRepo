class Dessert
  def initialize(name, calories)
        @name = name
        @calories = calories
  end
  
  #getters
  def name
    return @name
    end
  def calories
    return @calories
  end
  #/////
  
  #setters
  def name=(name)
    @name = name
  end
  
  def calories=(calories)
    @calories = calories
  end
  
  def healthy?
    if @calories < 200
        return true
    else 
        return false
    end
  end
  def delicious?
    if @flavor != "licorice jelly bean"
        return true
    else 
    
        return false
    end

end
end

class JellyBean < Dessert
  def initialize(flavor)
  
    
    @flavor = flavor 
    @name = flavor << " jelly bean"
    @calories = 5
    
  end
  

  def flavor
    return @flavor
  end
  
end