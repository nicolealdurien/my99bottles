# Hit the 30-minute mark while researching optional arguments.
# Spent another 60 minutes later getting the rest, largely due to
# forgetting that newline is \n, not /n, and trying to interpret the 
# errors this caused.

class Bottles
  def song
    return verses(99,0)
  end

  def verses(startnum, endnum)
    string = ''
    counter = startnum

    while counter >= endnum
      counter == startnum ? string += verse(counter) : string += "\n#{verse(counter)}"
      counter -= 1
    end

    return string
  end

  def verse(num)
    plural_or_not = num == 1 ? '' : 's'

    final_plural_or_not = num == 2 ? '' : 's'

    one_bottle = num == 1 ? 'it' : 'one'

    item_count_upper = num == 0 ? 'No more' : "#{num}"

    item_count_lower = num == 0 ? 'no more' : "#{num}"

    item_count_end = num > 1 ? num - 1 : num == 0 ? '99' : 'no more'

    restart_or_not = num == 0 ? 'Go to the store and buy some more, ' : "Take #{one_bottle} down and pass it around, "

    verse_string = "#{item_count_upper} bottle#{plural_or_not} of beer on the wall, " +
    "#{item_count_lower} bottle#{plural_or_not} of beer.\n" +
    "#{restart_or_not}" +
    "#{item_count_end} bottle#{final_plural_or_not} of beer on the wall.\n"

    return verse_string 
  end

end