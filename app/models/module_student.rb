class ModuleStudent < ActiveRecord::Base
  belongs_to :users
  belongs_to :module_classes
end
