module ProjectsHelper
	def give_thumbnail(link)
		video = VideoInfo.new(link)
		video.thumbnail_large
	end

	def youtube_sanitize(youtube_url)
		if youtube_url[/youtu\.be\/([^\?]*)/]
			youtube_id = $1
		else
			youtube_url[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
			youtube_id = $5
		end

		# %Q{<iframe title="YouTube video player" width="640" height="390" src="http://www.youtube.com/embed/#{ youtube_id }" frameborder="0" allowfullscreen></iframe>}
		%Q{http://www.youtube.com/embed/#{ youtube_id }}
	end
end
