class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_copyright

  def set_copyright
  	@copyright = CabanaViewTool::Renderer.copyright 'Nick Cabana', 'All rights reserved'
  end
end

module CabanaViewTool
	class Renderer
		def self.copyright name, msg
			"&copy; #{Time.now.year} | <b>#{name}</b> #{msg}" .html_safe
		end
	end
end

    	
