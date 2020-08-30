module TwelveDays
  def self.song
    ORDINALS.each_with_index.map do |ordinal, i|
      first = "On the #{ordinal} day of Christmas my true love gave to me:"
      second = i.downto(0).map { |j| ITEMS[j] }
                .join(', ')
                .sub(/.*\K,/, ', and')
      "#{first} #{second}.\n"
    end.join("\n")
  end

  ORDINALS =
    %w[
      first second third fourth fifth sixth
      seventh eighth ninth tenth eleventh twelfth
    ]

  ITEMS =
    [
      'a Partridge in a Pear Tree',
      'two Turtle Doves',
      'three French Hens',
      'four Calling Birds',
      'five Gold Rings',
      'six Geese-a-Laying',
      'seven Swans-a-Swimming',
      'eight Maids-a-Milking',
      'nine Ladies Dancing',
      'ten Lords-a-Leaping',
      'eleven Pipers Piping',
      'twelve Drummers Drumming'
    ]
end
