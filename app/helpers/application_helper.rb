module ApplicationHelper

	def copyright_generator
		CabanaViewTool::Renderer.copyright 'Nick Cabana', 'All rights reserved'
	end
end
