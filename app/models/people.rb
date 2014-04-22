class People < ActiveRecord::Base
  def self.search(search)
    if search
      find(:all, :conditions => ['firstname LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
