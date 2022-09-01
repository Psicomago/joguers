# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

#country
Country.create(country_name: "Chile", country_code: "CL")
@country = Country.find_by("country_name = 'Chile'")
#region
region_array = [["01","Tarapaca"],["02","Antofagasta"],["03","Atacama"],["04","Coquimbo"],["05","Valparaiso"],["06","Libertador General Bernardo O'Higgins"],["07","Maule"],["08","Bio Bio"],["09","La Araucania"],["10","Los Lagos"],["11","Aysén del General Carlos Ibáñez del Campo"],["12","Magallanes y de la Antártica Chilena"],["13","Metropolitana de Santiago"],["14","Los Rios"],["15","Arica y Parinacota"],["16","Ñuble"]]

region_array.each do |reg|
    Region.create(
        region_name: reg[1],
        region_code: reg[0],
        country_id: @country.id
    )
end


#provinces region metropolitana
metropolitan_array = [["131", "Santiago"],["132", "Cordillera"],["132", "Cordillera"],["133", "Chacabuco"],["134","Maipo"],["135", "Melipilla"], ["136", "Talagante"]] 
@region = Region.find_by("region_code = '13'")
metropolitan_array.each do |prov|
    Province.create(
        province_name: prov[1],
        province_code: prov[0],
        region_id: @region.id
    )

end
#communne
@province = Province.all
communne_array = [["131","13101", "Santiago"],["131","13102", "Cerrillos"],["131","13103", "Cerro Navia"],["131","13104", "Conchalí"],
    ["131","13105", "El Bosque"],["131","13106", "Estación Central"],["131","13107", "Huechuraba"],["131","13108", "Independencia"],
    ["131","13109", "La Cisterna"],["131","13110", "La Florida"],["131","13111", "La Granja"],["131","13112", "La Pintana"],
    ["131","13113", "La Reina"],["131","13114", "Las Condes"],["131","13115", "Lo Barnechea"],["131","13116", "Lo Espejo"],
    ["131","13117", "Lo Prado"],["131","13118", "Macul"],["131","13119", "Maipú"],["131","13120", "Ñuñoa"],["131","13121", "Pedro Aguirre Cerda"],
    ["131","13122", "Peñalolén"],["131","13123", "Providencia"],["131","13124", "Pudahuel"],["131","13125", "Quilicura"],["131","13126", "Quinta Normal"],
    ["131","13127", "Recoleta"],["113","13128", "Renca"],["131","13129", "San Joaquín"],["131","13130", "San Miguel"],["131","13131", "San Ramón"],
    ["131","13132", "Vitacura"],["132","13201", "Puente Alto"],["132","13202", "Pirque"],["132","13203", "San José de Maipo"],
    ["133","13301", "Colina"],["133","13302", "Lampa"],["133","13303", "Tiltil"],["134","13401", "San Bernardo"],["134","13402", "Buin"],
    ["134","13403", "Calera de Tango"],["134","13404", "Paine"],["135","13501", "Melipilla"],["135","13502", "Alhué"],["135","13503", "Curacaví"],
    ["135","13504", "María Pinto"],["135","13505", "San Pedro"],["136","13601", "Talagante"],["136","13602", "El Monte"],["136","13603", "Isla de Maipo"],
    ["136","13604", "Padre Hurtado"],["136","13605", "Peñaflor"]]
indice = 0
@province.each do |province|
    idex = province.id
    while province.province_code == communne_array[indice][0]
        Communne.create(
            communne_name: communne_array[indice][2],
            communne_code: communne_array[indice][1],
            province_id: province.id
             )
            indice += 1
    end
        
end
#crear User Adm
Address.create(
    location: "Roditex 10416",
            latitude: "0,0" ,
            longitude: "0,0" ,
            communne_id: 10
)
@address = Address.last 
    User.create(
        name: "Carlos Aravena",
        email: "carlosaravena.coach@gmail.com",
        nickname: "Psicomago",
        birth: "1972/05/04",
        role: 1,
        password: "123456",
        gender: "Masculino",
        phone: "+56986289794",
        address_id: @address.id
    )

#crear address y user
calles_array =["Av. Vicuña Mackenna", "San Jose de la Estrella", "Los 3 antonios", "Santa Isable", "Maule"]
user_array = ["Juan Pérez","Rodrigo Sanchez","Carlos Ormeño","Pedro Gutierrez","Oscar Valdivia","Gustavo Rodriguez","Ignacio Torres","Gilberto Gonzáles","Miguel Espinoza",
            "Juan Ramon Osorio","Patricio Herrera","Alvaro Sepulveda","Freddy Martinez","Esteban Oyarzún","Jorge cortez","juan Perez","juan Perez","juan Perez","juan Perez",
            "Miguel Cruz","Fabián Silva","Cristian Dominguez","Eduardo Varas","Pablo Berrios","Mario Salcedp","José Tapia","Erwin Soto","Juan Carlos Soto"]
# @communne = Communne.all
ids = Communne.pluck(:id)
i=0
user_array.each do |user|
        Address.create(
            location: "#{calles_array.sample}  #{rand(20..15000)}",
            latitude: "0,0" ,
            longitude: "0,0" ,
            communne_id: ids.sample 
        )
        @address = Address.last 
        User.create(
        name: user,
        email: Faker::Internet.email,
        nickname: "Joguers #{i}",
        birth: rand(Date.civil(1972, 1, 1)..Date.civil(1992, 12, 31)),
        role: 0,
        password: "123456",
        gender: "",
        phone: "+569#{i}546#{i}05#{i}",
        address_id: @address.id
        )
        i += 1
end


# crear sport
sport_array =["Futbol", "Futbol Femenino", "Futbolito", "Futsal", "Futbol 5","Basquetbol", "Tenis", "Rugby"]
sport_array.each do |sport|
    Sport.create(sport_name: sport, user_id: 1)
end



