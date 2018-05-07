
class Dictionary

  def initialize

  @entries = Hash.new

  end

  def add(entries)
    if entries.class == Hash
      @entries.merge!(entries)
    else
      @entries[entries] = nil
    end
  end

  def entries
    return @entries
  end

  def keywords
    @entries.keys.sort
  end

  def include?(value)
    @entries.has_key?(value)
  end

  def find(word)
    @entries.select{ |key, value| key.include? word }
  end


end
