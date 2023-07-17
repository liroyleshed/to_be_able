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
        read:   %w(index show).map(&:to_sym),
        create: %w(new).map(&:to_sym),
        update: %w(edit).map(&:to_sym),
        delete: %w(destroy).map(&:to_sym)
      }
    end
end
