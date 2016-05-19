class PageTranslation < ActiveRecord::Base
  belongs_to :locale
  belongs_to :page
end
