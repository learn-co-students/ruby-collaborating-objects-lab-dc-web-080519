class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    # return array of all file paths in directory
    path_list = Dir["#{path}/**/*.mp3"]
    # remove the path prefix to leave only the filename
    file_list = path_list.map do |file|
      file.gsub("#{path}/", '')
    end
  end

  def import
    # create new Song instance with fully populated metadata for each file
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end


end
