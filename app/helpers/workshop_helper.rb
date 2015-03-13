module WorkshopHelper
  def month_convert_to_string month_index
    months = ["января","февраля","марта","апреля","мая","июня","июля","августа","сентября","октября","ноября","декабря"]
    return months[month_index-1]
  end
end
