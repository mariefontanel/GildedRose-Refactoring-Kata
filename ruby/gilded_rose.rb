class GildedRose

  def initialize(items)
    @items = items
  end

  def update_quality()
    @items.each do |item|
      if item.name == "Aged Brie"
        if item.quality < 50
          item.quality = item.quality + 1
        end
      elsif item.name == "Backstage passes to a TAFKAL80ETC concert"
        if item.quality < 50
          item.quality = item.quality + 1
        end
        if item.sell_in < 11 and 
          if item.quality < 50
            item.quality = item.quality + 1
          end
        end
        if item.sell_in < 6
          if item.quality < 50
            item.quality = item.quality + 1
          end
        end
      elsif item.name == "Elixir of the Mongoose"
        if item.quality > 0
          item.quality = item.quality - 1
        end
      elsif item.name == "Conjured Mana Cake"
        if item.quality > 0
          item.quality = item.quality - 2
        end
      else
        item.quality = 80
      end
      
      if item.name != "Sulfuras, Hand of Ragnaros"
        item.sell_in = item.sell_in - 1
      end
      
      if item.sell_in < 0
        if item.name == "Aged Brie"
          if item.quality < 50
            item.quality = item.quality + 1
          end
        elsif item.name == "Backstage passes to a TAFKAL80ETC concert"
          item.quality = 0       
        elsif item.name == "Sulfuras, Hand of Ragnaros"
          item.quality = 80
        elsif item.name == "Conjured Mana Cake"
          if item.quality > 0
            item.quality = item.quality - 2
          end
        else
          if item.quality > 0
            item.quality = item.quality - 1
          end
        end
      end
    end
  end
end

class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def to_s()
    "#{@name}, #{@sell_in}, #{@quality}"
  end
end