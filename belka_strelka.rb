

def launch(options={})
    a = options[:angle] || 90
    b = options[astronauts: {strelka: 'Стрелка', belka: 'Белка'}] || "Белка и Стрелка"
    c = options[:delay] || 5

    print "Осталось секунд: "
    c.downto(1) do |delay|
        print "#{delay} "
        sleep(rand(0..0.45))
    end

    puts "\nАстронавт #{b} запущен/запущены, ракета летит под углом #{a} градусов"
end

launch(astronauts: [:strelka])
