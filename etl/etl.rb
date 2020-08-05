class ETL
  def self.transform(old)
    old.reduce({}) do |result, (score, letters)|
      letters.each do |letter| result[letter.downcase] = score end
      result
    end
  end
end