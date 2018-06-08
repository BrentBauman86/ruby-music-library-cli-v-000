require "pry"
class Song

  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name, artist = nil, genre = nil)
    @name = name
    @@all
    self.artist = artist if artist
    self.genre = genre if genre
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.destroy_all
    @@all.clear
  end

  def self.create(name)
    create = self.new(name)
    create.save
    create
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self) if !artist.songs.include?(self)
  end

  def genre
    @genre
  end

  def genre=(genre)
    @genre = genre
    genre.songs << self if !genre.songs.include?(self)
  end

  # def self.find_by_name(name)
  #   @@all.find {|song| song.name == name}
  # end
  #
  # def self.find_or_create_by_name(name)
  #   if self.find_by_name(name)
  #       self.find_by_name(name)
  #   else
  #     self.create(name)
  #   end
  # end

  def self.new_from_filename(file_name)
    song_name = file_name.split(" - ")[1]
    song_name = Song.new_from_filename(file_name)
    song_name

  # binding.pry
  end
end



# def self.find_by_name(name)
#   @@all.find {|song| song.name == name}
# end
#
# def self.find_or_create_by_name(name)
#   if self.find_by_name(name)
#       self.find_by_name(name)
#   else
#     self.create(name)
#   end
# end
