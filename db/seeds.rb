# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Image.delete_all
Image.reset_pk_sequence
Image.create([
               { name: 'Daredevil',                   file: 'Daredevil.jpg', theme_id: 4 },
               { name: 'Deadpool',                    file: 'Deadpool.jpg',  theme_id: 4 },
               { name: 'Iron-Man',                    file: 'IronMan.jpg',   theme_id: 4 },
               { name: 'Wolverine',                   file: 'Wolverine.png', theme_id: 4 },
               { name: 'KIA',                         file: 'KIA.png',       theme_id: 3 },
               { name: 'LADA',                        file: 'lada.jpeg',     theme_id: 3 },
               { name: 'Tesla',                       file: 'Tesla.png',     theme_id: 3 },
               { name: 'Toyota',                      file: 'toyota.jpg',    theme_id: 3 },
               { name: 'Volkswagen',                  file: 'vw.png',        theme_id: 3 },
               { name: 'Star-Wars: Original trilogy', file: 'SW1.jpeg',      theme_id: 2 },
               { name: 'Star-Wars: Prequel trilogy',  file: 'SW2.jpg',       theme_id: 2 },
               { name: 'Star-Wars: Sequel trilogy',   file: 'SW3.jpg',       theme_id: 2 },
               { name: 'Winter',                      file: 'winter.jpg',    theme_id: 5 },
               { name: 'Autumn',                      file: 'autumn.jpg',    theme_id: 5 },
               { name: 'Summer',                      file: 'summer.jpg',    theme_id: 5 },
               { name: 'Spring',                      file: 'spring.jpg',    theme_id: 5 },
               { name: 'J',                           file: 'j1.png',        theme_id: 1 }
             ])
Theme.delete_all
Theme.reset_pk_sequence
Theme.create([
               { name: '-----' }, # 1 no theme СДЕЛАТЬ 3 ТЕМЫ
               { name: 'Какая трилогия "Звёздных войн" нравится Вам больше всего?' }, # 2
               { name: 'Какая марка автомобилей нравится Вам больше всего?'     }, # 3
               { name: 'Какой герой комиксов нравится Вам больше всего?'        }, # 4
               { name: 'Какое время года нравится Вам больше?'                  }  # 5
             ])

Value.delete_all
Value.reset_pk_sequence

User.delete_all
User.reset_pk_sequence
User.create([
              { name: 'Admin', email: 'admin@admin.org', password: "admin", password_confirmation: "admin" }
            ])
