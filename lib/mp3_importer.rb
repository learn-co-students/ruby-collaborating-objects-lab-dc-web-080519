# will parse all the filenames in the spec/fixtures folder and send the filenames to the Song class

# MP3Importer
#   #initialize
#     accepts a file path to parse mp3 files from 

require 'pry'

class MP3Importer

    attr_reader :path
    attr_accessor :files
    def initialize(path)
        @path = path
        @files = files
    end

    def files
 #loads all the mp3 files in the path directory 
# normalizes the filename to just the mp3 filename with no path 
        @files = Dir.children(path)
        # binding.pry
    end

    def import
  #     imports the files into the library by creating songs from a filename
        files.each {|filename| Song.new_by_filename(filename)}
        # binding.pry
    end


end
