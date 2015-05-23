# README
# 1) Вставь список городов между фигурными скобками. Разделение пробелом, без кавычек — как в таблице
# 2) В терминале перейди в директорию с файлом и CSV-шкой (cd ~/Documents/thesis/Table\ Generation)
# 3) Запусти там ruby split_table.rb — это сгенерирует new.csv с нужной тебе таблицой
# 4) В Экселе Import => CSV => Delimitered => запятая
# 5) ...
# 6) PROFIT

require 'csv'

cs = %w[
        MoscowDepot Kostroma_ASHAN Kostroma_7Continent Ivanovo_ASHAN Ivanovo_7Continent Ivanovo_Magnit Ivanovo_Okey NNovgorod_METROn NNovgorod_METROm NNovgorod_ASHANb
        NNovgorod_LENTA NNovgorod_ASHANm NNovgorod_Okey NNovgorod_Magnit Kazan_ASHANy Kazan_Zelgros Kazan_ASHANp NaberezhnyeChelny_LENTA Ufa_LENTA Ufa_ASHAN Ufa_OKEYe
        Ufa_OKEYk Ufa_OKEYmj Ufa_Magnit Pyshma_Perekrestok Yekaterinburg_ASHANh Yekaterinburg_ASHANm Perm_LENTA MoscowDepotEND
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
