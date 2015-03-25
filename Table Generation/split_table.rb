# README
# 1) Вставь список городов между фигурными скобками. Разделение пробелом, без кавычек — как в таблице
# 2) В терминале перейди в директорию с файлом и CSV-шкой (cd ~/Documents/thesis/Table\ Generation)
# 3) Запусти там ruby split_table.rb — это сгенерирует new.csv с нужной тебе таблицой
# 4) В Экселе Import => CSV => Delimitered => запятая
# 5) ...
# 6) PROFIT

require 'csv'

cs = %w[
  MoscowDepot Yaroslavl_LENTA1 Yaroslavl_7Continent Yaroslavl_ATAK Yaroslavl_ASHANn Yaroslavl_ASHANp Yaroslavl_LENTA
  Yaroslavl_Giperglobus Yaroslavl_Magnit Kostroma_ASHAN Kostroma_7Continent MoscowDepotEND
]

f = File.read('traveldistance-hours.csv').chomp
parsed = CSV.parse(f).map {|i| i.reject(&:nil?)}
headers = parsed[1][1..-1]
data = parsed[2..-1].map {|i| i[1..-1]}

def build_body(street_name, all_streets, headers, data)
  row = [street_name]
  first_idx = headers.index(street_name)
  all_streets.map do |street|
    idx = headers.index(street)
    row << data[first_idx][idx]
  end

  row
end

new_csv = CSV.generate() do |csv|
  csv << ["\\"] + cs
  cs.map do |str|
    csv << build_body(str, cs, headers, data)
  end
end

File.open('new.csv', 'w').write(new_csv)
