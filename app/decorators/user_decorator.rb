module UserDecorator
    def select_genero
        [['Masculino', 1],
        ['Femenino', 2]]
    end

    def label_generos
        if select_genero.flatten.include?(genero.to_i)
        select_genero.each { |nombre, id| return nombre if genero.to_i == id }
        end
    end
end