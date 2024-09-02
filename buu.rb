# frozen_string_literal: true

# BUU' na istisna kapsaminde uygun olan kelimeleri kontrol eden metot
def is_an_exception?(word_to_search)

  # BUU' na istisna kapsaminde uygun olan kelimeler listesidir. Degistirmeyiniz!
  exception_words = %w[anne dahi elma hangi hani inanmak]
  exception_words.each do |istisna|
    if word_to_search.include?(istisna)
    puts "#{word_to_search} : ISTSN "
  end
end
end

# BUU aranmayan kelimeleri kontrol eden metot
def is_not_required?(word_to_search)

  # BUU aranmayan kelimeler listesidir. Degistirmeyiniz!
  not_required_words = %w[ahenk badem ceylan fidan gazete hamsi kestane limon model otomatik pehlivan selam tiyatro viraj ziyaret]
  not_required_words.each do |aranmaz|
    if word_to_search.include?(aranmaz)
    puts "#{word_to_search} : ARNMZ "
  end
end
end

# Bir kelimenin BUU' na uygun olup/olmadigini bildiren metot
def is_harmonic?(word_to_search)

  #Kontrol icin kullanilacak kalin ve ince harfler
  thick_vowels = "aıou"
  thin_vowels = "eiöü"

  if thick_vowels.split.any? { |harf| word_to_search.include?(harf)} && thin_vowels.split.any? { |harff| word_to_search.include?(harff)}
  puts "#{word_to_search} : UYGNDGL "
  else
    puts "#{word_to_search} : UYGUN "
  end
end

exception_words = %w[anne dahi elma hangi hani inanmak] #istisna
not_required_words = %w[ahenk badem ceylan fidan gazete hamsi kestane limon model otomatik pehlivan selam tiyatro viraj ziyaret] #aranmaz

 words = gets.chomp.split # Kelimeleri al,

 words.each_with_index do |kelime, sıra|
  if not_required_words.include?(words[sıra])
    is_not_required?(kelime)
  elsif exception_words.include?(words[sıra])
    is_an_exception?(kelime)
  else
    is_harmonic?(kelime)
  end
end
