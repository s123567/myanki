# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


moi = User.create email: 'moi@moi.com', password: 'testtest' ,password_confirmation: 'testtest'
lui = User.create email: 'lui@lui.com', password: 'testtest' ,password_confirmation: 'testtest'

Card.create question: "Ou va la ...?", answer: "La bas", frequence: 'moins', tag_list: 'Cuisine', user: lui
Card.create question: "Ou vont les ...?", answer: "En italie", frequence: 'moins', tag_list: 'Cuisine', user: lui
Card.create question: "Ou se situe la colombie", answer: "En espagne", frequence: 'moins', tag_list: 'Cuisine', user: lui
Card.create question: "Quand a eu lieu la premiere guerre?", answer: "La mariée du lapin", frequence: 'plus', tag_list: 'guitare', user: moi
Card.create question: "Quand a eu lieu l'opiacée?", answer: "Le léopard du soir dans un brancard", frequence: 'moyen', tag_list: 'code', user: moi
Card.create question: "Ou a eu lieu le stade?", answer: "Le 14 juillet", frequence: 'moyen', tag_list: 'code', user: moi
Card.create question: "Ou vont les hirondelles ?", answer: " en janvier", frequence: 'plus', tag_list: 'guitare', user: moi
Card.create question: "Comment va le pape ?", answer: "Ca roule grave", frequence: 'plus', tag_list: 'guitare', user: moi
Card.create question: "Quand a eu lieu la premiere guerre?", answer: "La mariée du lapin", frequence: 'plus', tag_list: 'guitare', user: moi
Card.create question: "Quand a eu lieu l'opiacée?", answer: "Le léopard du soir dans un brancard", frequence: 'moyen', tag_list: 'code', user: moi
Card.create question: "Ou a eu lieu le stade?", answer: "Le 14 juillet", frequence: 'moyen', tag_list: 'code', user: moi
Card.create question: "Ou vont les hirondelles ?", answer: " en janvier", frequence: 'plus', tag_list: 'guitare', user: moi
Card.create question: "Comment va le pape ?", answer: "Ca roule grave", frequence: 'plus', tag_list: 'guitare', user: moi
Card.create question: "Ou vont les hirondelles ?", answer: " en janvier", frequence: 'plus', tag_list: 'guitare', user: moi
Card.create question: "Comment va le pape ?", answer: "Ca roule grave", frequence: 'plus', tag_list: 'guitare', user: moi
Card.create question: "Quand a eu lieu la premiere guerre?", answer: "La mariée du lapin", frequence: 'plus', tag_list: 'guitare', user: moi
Card.create question: "Quand a eu lieu l'opiacée?", answer: "Le léopard du soir dans un brancard", frequence: 'moyen', tag_list: 'code', user: moi
