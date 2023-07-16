module ToBeAble::Ability
  def can
  end
    
  def cant
    !can
  end


  def can?
  end

  def cant?
    !can?
  end


  def is_able_to
    can
  end

  def isnt_able_to
    !is_able_to
  end

  def is_able_to?
  end

  def isnt_able_to?
    !is_able_to?
  end


  def permit!
  end
end
