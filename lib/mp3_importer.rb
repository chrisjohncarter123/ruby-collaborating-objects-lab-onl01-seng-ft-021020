class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
    
  end
  
  def files
    @files = []
    
    Dir.foreach(@path) do |filename|
      next if filename == '.' || filename == '..'

      @files << "#{filename}"
      
    end
    
    return @files
  end
  
  def import
    my_files = files
    result = []
    my_files.each do |file|
      result << Song.new_by_filename(file)
    end
    
    return result 
  end
end