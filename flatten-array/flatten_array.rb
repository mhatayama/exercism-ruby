class FlattenArray
  def self.flatten(array)
    # Same as array.flatten.compact
    array.each_with_object([]) do |item, obj|
      if item.is_a?(Array)
        obj.concat(flatten(item))
      elsif item
        obj.append(item)
      end
    end
  end
end

