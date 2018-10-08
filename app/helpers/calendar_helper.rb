module CalendarHelper
  def show_tag(year,month)
    d = Date.new(year, month, 1)
    first = d.wday
    p = Date.new(year, month, -1)
    last = p.day
    day = 1 - first
    html_tag = <<~EOS
    <h1>#{year}年#{month}月</h1>
    <table class="table table-bordered">
    <tr>
      <th scope="col">日</th>
      <th scope="col">月</th>
      <th scope="col">火</th>
      <th scope="col">水</th>
      <th scope="col">木</th>
      <th scope="col">金</th>
      <th scope="col">土</th>
    </tr>
    EOS
    while day <= last
      html_tag += '<tr>'
      7.times {|i|

          if day <= 0 || day > last
            html_tag += '<td>&nbsp;</td>'
          else
            html_tag += "<td>#{day}</td>"
          end
          day += 1

      }
      html_tag += '</tr>'
    end
    html_tag += '</table>'
    html_tag
  end

end
