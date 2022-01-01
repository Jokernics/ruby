online_bank = {
    transactions: [{
        description: 'Сапоги',
        type: 'расход',
        sum: '40'
    }, {
        description: 'Зарплата (компания БЛИЖП',
        type: 'приход',
        sum: '1000'
    }, {
        description: 'Продажа ваучера',
        type: 'приход',
        sum: '300'
    }, {
        description: 'Велосипед',
        type: 'расход',
        sum: '200'
    }, {
        description: 'Протез для ноги бабушке',
        type: 'расход',
        sum: '300'
    }],
    information: {
        client: 'Герман Оскарович Блокчейн',
        balance: '$123.45'
    },
    type_filter: 'Отображать пополнения',
    type_filter1: false
}
puts 'Описание'

online_bank[:transactions].each { |any_hash|
any_hash.each_value { |val|
if online_bank[:type_filter1]
    print "#{val} \n"
else
    print "#{any_hash[:description]}"

end

}}
