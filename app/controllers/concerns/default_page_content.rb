module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Sarah Evans | Portfolio Website"
    @seo_keywords = "Sarah Evans Portfolio"
  end
end
