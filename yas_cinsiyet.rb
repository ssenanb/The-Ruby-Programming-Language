# frozen_string_literal: true
foo = gets.chomp

dizi = foo.delete("-").split
ikiye_bölme = dizi.length / 2
yaşlar = dizi[0, ikiye_bölme]
cinsiyetler = dizi[ikiye_bölme, dizi.length]

famale = []
male = []

yaşlar.each_with_index do |yaş, sıra|
  famale << yaş if cinsiyetler[sıra] == "F"
  male << yaş if cinsiyetler[sıra] == "M"
end

toplam1 = 0
toplam2 = 0
famale.each do |num1|
  toplam1 += num1.to_f
end

male.each do |num2|
  toplam2 += num2.to_f
end

ortalama1 = toplam1 / famale.length.to_f
ortalama2 = toplam2 / male.length.to_f


if ortalama1 > ortalama2
  puts "F : #{ortalama1} H"
  puts "M : #{ortalama2} L"
elsif ortalama1 < ortalama2
  puts "F : #{ortalama1} L"
  puts "M : #{ortalama2} H"
else
  puts "F : #{ortalama1} "
  puts "M : #{ortalama2} "
end
