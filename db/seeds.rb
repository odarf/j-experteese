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
               { name: 'J1',  file: 'j1.png',  theme_id: 1 },
               { name: 'J2',  file: 'j2.jpg',  theme_id: 1 },
               { name: 'J3',  file: 'j3.jpg',  theme_id: 2 },
               { name: 'J4',  file: 'j4.png',  theme_id: 2 },
               { name: 'J5',  file: 'j5.png',  theme_id: 3 },
               { name: 'J6',  file: 'j6.png',  theme_id: 3 },
               { name: 'J7',  file: 'j7.jpg',  theme_id: 4 },
               { name: 'J8',  file: 'j8.png',  theme_id: 4 },
               { name: 'J9',  file: 'j9.png',  theme_id: 3 },
               { name: 'J10', file: 'j10.png', theme_id: 3 },
               { name: 'J11', file: 'j11.png', theme_id: 3 },
               { name: 'J12', file: 'j12.png', theme_id: 1 },
               { name: 'J13', file: 'j13.jpg', theme_id: 2 }
             ])
Theme.delete_all
Theme.reset_pk_sequence
Theme.create([
               { name: '-----' }, # 1 no theme СДЕЛАТЬ 3 ТЕМЫ
               { name: 'Какой фильм "Звёздных войн" нравится Вам больше всего?' }, # 2
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
