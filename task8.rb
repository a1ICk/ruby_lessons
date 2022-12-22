class Base

  public
  def publicF(other)
    other.protectedF
    p "public"
  end

  private
  def privateF
    p "private"
  end

  protected
  def protectedF
    p "protected"
  end
end

Base.new.publicF(Base.new)
Base.new.send(:privateF)
