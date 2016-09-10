require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'action_view'

class System_Call

	def  generate_list(path = 'E:/System Calls in UNIX.txt')

		$stdout = File.new(path, 'a')
		$stdout.sync = true
		addr = "http://linasm.sourceforge.net/docs/syscalls"
		new_page = Nokogiri::HTML(open("http://linasm.sourceforge.net/docs/syscalls/index.php"))
		moji = new_page.css('aside')
		moji1 = moji.css('a').map { |link| link['href'] }
		$count_1 = moji1.length
		$counting = 1
		while $counting < $count_1
			$full = "http://linasm.sourceforge.net/docs/syscalls/" + moji1[$counting]
			$counting = $counting + 1
			pageo = Nokogiri::HTML(open($full))
			puts pageo.css('title').text
			sho = pageo.css('tr')
			$count = 1
			$countx = sho.length
			while $count < $countx
				link1 = sho[$count].css('a').map { |link| link['href'] }
				if !link1[0]
					$count = $count + 1
					next
				end		
				puts link1[0]	
				page = Nokogiri::HTML(open(link1[0])) 
				sh = page.css('pre')
				puts sh.length
				puts "SYSTEM CALL:"
				puts page.css('title').text
				puts "FUNCTIONALITY:"
				puts sh[1].text
				puts "SYNOPSIS:"
				puts sh[2].text
				puts "DESCRIPTION"
				puts sh[3].text
				$count = $count + 1
			end
		end
	end
end