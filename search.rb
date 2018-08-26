BMES_TARGYAK = [
  {code: 'bmeasd1', name:  'Analizis 1', descr: 'alma, eper, korte, paradicsom, dinnye, sarga es piros paprika'},
  {code: 'bmeasd2', name: 'Analizis 2', descr: 'salata, hagyma, kaposzta'}
]

BEFOGADO_INT_TARGYAI = [
  {code: 'bgfasd', name: 'Analizis', descr: 'alma, korte, sarga paprika, szilva'},
  {code: 'bgfqwe', name: 'Szamelmelet', descr: 'hagyma, kaposzta, piros paprika, barack'}
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
  {metszet: metszet, first_min_second: first_min_second}
end

def main
  {befogado_targy_code: '123', beszamitando_targyak: ['asd']}
  BMES_TARGYAK.each do |bmes_targy|
    BEFOGADO_INT_TARGYAI.each do |gdfes_targy|
      s_res = search(bmes_targy, gdfes_targy)

    end
  end
end
