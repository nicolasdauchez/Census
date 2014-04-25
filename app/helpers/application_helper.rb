module ApplicationHelper
  def titleByDefault
    @title="Intranet - Where students and lecturers meet"
  end

  def flash_class(level)
    case level
    when :notice then "alert alert-success"
    when :success then "alert alert-success"
    when :error then "alert alert-danger"
    when :alert then "alert alert-danger"
    end
  end

end
