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

  UNPERMITTED_MESSAGE = "You do not have access to this zone."
  def unpermitted_message
    UNPERMITTED_MESSAGE
  end

  private
    def default_actions
      {
        read:   %w(index show),
        create: %w(new),
        update: %w(edit)
      }
    end
end
