# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ProductCategory.destroy_all
ar = ProductCategory.create!(description: 'Áreas classificadas', slug: 'areas-classificadas', exhibition_order: 1)
ProductCategory.create!(description: 'Acionamentos e bujões', product_category: ar, slug: 'acionamentos', exhibition_order: 1)
ProductCategory.create!(description: 'Botoeiras', product_category: ar, slug: 'botoeiras', exhibition_order: 2)
ProductCategory.create!(description: 'Caixas de passagem', product_category: ar, slug: 'caixas-de-passagem', exhibition_order: 3)
ProductCategory.create!(description: 'Caixas de segurança', product_category: ar, slug: 'caixas-de-seguranca', exhibition_order: 4)
ProductCategory.create!(description: 'Plugues e tomadas', product_category: ar, slug: 'plugues-tomadas', exhibition_order: 5)
ProductCategory.create!(description: 'Prensa Cabos', product_category: ar, slug: 'prensa-cabos', exhibition_order: 6)

lt = ProductCategory.create!(description: 'Linha de transmissão', slug: 'linha-de-transmissao', exhibition_order: 1)
ProductCategory.create!(description: 'Amortecedores', product_category: lt, slug: 'amortecedores', exhibition_order: 1)
ProductCategory.create!(description: 'Armaduras heliformadas', product_category: lt, slug: 'armaduras-heliformadas', exhibition_order: 2)
ProductCategory.create!(description: 'Cavalotes', product_category: lt, slug: 'cavalotes', exhibition_order: 3)
ProductCategory.create!(description: 'Chapas de extensão', product_category: lt, slug: 'chapas-de-extensao', exhibition_order: 4)
ProductCategory.create!(description: 'Conchas', product_category: lt, slug: 'conchas', exhibition_order: 5)


rd = ProductCategory.create!(description: 'Rede de distribuição', slug: 'rede-de-distribuicao', exhibition_order: 1)
ProductCategory.create!(description: 'Anel de amarração', product_category: rd, slug: 'anel-de-amarracao', exhibition_order: 1)
ProductCategory.create!(description: 'Armações', product_category: rd, slug: 'armacoes', exhibition_order: 2)
ProductCategory.create!(description: 'Braço anti-balanço', product_category: rd, slug: 'braco-anti-balanco', exhibition_order: 3)
