# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ProductCategory.destroy_all
ar = ProductCategory.create!(description: 'Áreas classificadas')
ProductCategory.create!(description: 'Botoeiras', product_category: ar)
lt = ProductCategory.create!(description: 'Linha de transmissão')
ProductCategory.create!(description: 'Amortecedores', product_category: lt)
ProductCategory.create!(description: 'Rede de distribuição')
