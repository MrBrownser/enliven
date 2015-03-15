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

		link = %Q{https://www.youtube.com/embed/#{ youtube_id }}
		while (!VideoInfo.new(link).available?)
			link = %Q{https://www.youtube.com/embed/#{ youtube_id }}
		end
		link
	end

	def give_video_info(link)
		video = VideoInfo.new(link)
		video.title
	end
end
