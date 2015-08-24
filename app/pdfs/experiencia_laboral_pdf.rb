class ExperienciaLaboralPdf < Prawn::Document
def initialize(experiencia_laboral, view)
 super()
 @experiencia_laboral = experiencia_laboral
 logo
 @view = view
 client
end


def logo
 logopath =  "#{Rails.root}/app/assets/images/logo/rails.png"
    image logopath, :width => 50, :height => 64
    move_down 10
    draw_text "Listado Experiencias Personales", :at => [150, 575], size: 22
end

 def client
    move_down 30
    text "Empresa: #{@experiencia_laboral.empresa}"
    text "Cargo: #{@experiencia_laboral.cargo}" 
  end 
end