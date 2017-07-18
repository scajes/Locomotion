# Playlist

class Playlist
	attr_reader :name
	attr_writer :songs

	def initialize(name, songs)
		@name = name
		@songs = songs
	end

	def playlist
		puts @name
	end

	def number_of_songs
		puts @songs.count
	end

	def add_song(new_song)
		@songs << new_song
	end

	def current_song

	end

	def next_song
		puts @songs.slice(1)
	end
end

playlist_1 = Playlist.new("U2", ["Sunday bloody sunday", "Where the streets have no name", "Vertigo"])

playlist_1.playlist
playlist_1.number_of_songs
playlist_1.add_song("With or without you")
playlist_1.number_of_songs
playlist_1.next_song