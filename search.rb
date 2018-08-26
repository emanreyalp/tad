BMES_TARGYAK = [
  'Analizis 1' => 'alma, eper, korte, paradicsom, dinnye, sarga es piros paprika'
  'Analizis 2' => 'salata, hagyma, kaposzta'
]

GDFES_TARGYAK = [
  'Analizis' => 'alma, korte, sarga paprika, szilva'
  'Szamelmelet' +> 'hagyma, kaposzta, piros paprika, barack'
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
  
end
