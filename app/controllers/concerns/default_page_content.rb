module DefaultPageContent
	extend ActiveSupport::Concern

	included do
		before_action :configure_permitted_parameters, if: :devise_controller?
	end

	def set_page_defaults
		@page_title = "Devcamp Portfolio | My Portfolio Website"
		@seo_keywords = "Cabana Pro Cleaning Services"
	end
end