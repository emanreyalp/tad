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
  first_class[:descr].split(',').each do |first_word|
    if second_class[:descr].include? first_word
      metszet << first_word
    else
      first_min_second << first_word
    end
  end
  {metszet: metszet, first_min_second: first_min_second}
end

def main
  p 'BMES_TARGYAK:'
  p BMES_TARGYAK
  p 'BEFOGADO_INT_TARGYAI'
  p BEFOGADO_INT_TARGYAI

  {befogado_targy_code: 'bgf123', beszamitando_targyak: ['bmeasd1', 'bmeasd2']}

  # {'bgfasd' => ['bmeasd1', 'bmeasd2']}
  targyak = {}

  BMES_TARGYAK.each do |bmes_targy|
    BEFOGADO_INT_TARGYAI.each do |gdfes_targy|
      s_res = search(bmes_targy, gdfes_targy)

      targyak.merge!({gdfes_targy[:code] => []}) if targyak[gdfes_targy[:code]].nil?
      targyak[gdfes_targy[:code]] << bmes_targy[:code] if s_res[:metszet]
    end
  end

  p targyak
end

def add_to_sth(targyak, code, bmes_targy)
  targyak[code] << bmes_targy[:code]
end

main
