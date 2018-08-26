BMES_TARGYAK = [
  {code: 'asd', name:  'Analizis 1', descr: 'alma, eper, korte, paradicsom, dinnye, sarga es piros paprika'},
  {code: 'asd', name: 'Analizis 2', descr: 'salata, hagyma, kaposzta'}
]

GDFES_TARGYAK = [
  {name: 'Analizis', descr: 'alma, korte, sarga paprika, szilva'},
  {name: 'Szamelmelet', descr: 'hagyma, kaposzta, piros paprika, barack'}
]

# Vissza adja a targyak metszetet es kulonbsegeit
# Ex.: [metszet: ['alma', 'korte'], 
#       first_min_second: ['eper', 'dinnye'],
#       second_min_first: ['paprika', 'szilva']]
#`
def search(first_class, second_class)
  metszet = []
  first_min_second = []
  first_class.split(',').each do |first_word|
    if second_class.include? first_word
      metszet << first_word 
    else
      first_min_second << first_word
    end
  end
  {metszet, first_min_second}
end

def main
  
  BMES_TARGYAK.each do |bmes_targy|
    GDFES_TARGYAK.each do |gdfes_targy|
      s_res = search(bmes_targy, gdfes_targy)

    end
  end
end
