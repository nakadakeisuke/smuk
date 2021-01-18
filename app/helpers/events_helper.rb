module EventsHelper
  def converting_to_jpy(sales)
    "#{sales.to_s(:delimited, delimiter: ',')}円"
  end
end
