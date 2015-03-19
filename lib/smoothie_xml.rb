require "smoothie_xml/version"

module SmoothieXML
  extend self

  def cook
    json = yield

    handle_berries(json)
  end

  private

  def handle_berries(json)
    json.keys.map do |key|
      fruit_name = blend_fruit(key)

      value = json[key]
      params_line = ''

      if json[key].is_a?(Hash) && json[key].has_key?(:smoothie_params)
        params_line = ' ' + json[key][:smoothie_params].map { |k, v| "#{blend_fruit(k)}=\"#{v}\"" }.join(' ')
        value = json[key][:smoothie_value]
      end


      body =
        if json[key].is_a?(Array)
          json[key].map { |array_elem| handle_berries(array_elem) }.join()
        else
          (value.is_a?(Hash) ? handle_berries(value) : value.to_s)
        end

      "<#{fruit_name}#{params_line}>" + body + "</#{fruit_name}>"
    end.join()
  end

  def blend_fruit(key)
    val = key.to_s

    val.include?(':') ? val : val.split('_').map(&:capitalize).join()
  end

end