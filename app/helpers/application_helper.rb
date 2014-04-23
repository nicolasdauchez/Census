module ApplicationHelper
  def titleByDefault
    @title="Census - Humanitarian natural disaster victim finder application"
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