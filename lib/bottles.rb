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
    bottle_plural = num == 1 ? '' : 's'

    end_plural = num == 2 ? '' : 's'

    one_bottle = num == 1 ? 'it' : 'one'

    beer_count_upper = num == 0 ? 'No more' : "#{num}"

    beer_count_lower = num == 0 ? 'no more' : "#{num}"

    beer_count_end = num > 1 ? num - 1 : num == 0 ? '99' : 'no more'

    beer_run = num == 0 ? 'Go to the store and buy some more, ' : "Take #{one_bottle} down and pass it around, "

    verse_string = "#{beer_count_upper} bottle#{bottle_plural} of beer on the wall, " +
    "#{beer_count_lower} bottle#{bottle_plural} of beer.\n" +
    "#{beer_run}" +
    "#{beer_count_end} bottle#{end_plural} of beer on the wall.\n"

    return verse_string 
  end

end