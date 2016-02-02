class ETL

  def self.transform(old)
    old.each_with_object({}){ |(k,v),obj| v.each{|c| obj[c.downcase] = k } }
  end

end
