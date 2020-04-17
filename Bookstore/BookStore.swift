//
//  BookStore.swift
//  Bookstore
//
//  Created by Andres on 3/3/20.
//  Copyright © 2020 Andres. All rights reserved.
//

import Foundation
class BookStore{
    var booklist: [Book] = []
    
    init (){
        var newBook = Book()
        newBook.title = "A game of thrones"
        newBook.author = "George R.R. Martin"
        newBook.description = "Game of Thrones is roughly based on the storylines of A Song of Ice and Fire, set in the fictional Seven Kingdoms of Westeros and the continent of Essos. The series chronicles the violent dynastic struggles among the realm's noble families for the Iron Throne, while other families fight for independence from it."
  
        
        booklist.append(newBook)
        
        newBook = Book()
        newBook.title = "A Clash of Kings"
        newBook.author = "George R.R. Martin"
        newBook.description = "A Clash of Kings depicts the Seven Kingdoms of Westeros in civil war, while the Night's Watch mounts a reconnaissance to investigate the mysterious people known as wildlings. Meanwhile, Daenerys Targaryen continues her plan to reconquer the Seven Kingdoms."
       

        booklist.append(newBook)
        newBook = Book()
        newBook.title = "Ready Player One"
        newBook.author = "Ernest Cline"
        newBook.description = "Ready Player One is a 2011 science fiction novel, and the debut novel of American author Ernest Cline. The story, set in a dystopia in 2045, follows protagonist Wade Watts on his search for an Easter egg in a worldwide virtual reality game, the discovery of which would lead him to inherit the game creator's fortune."
       

        booklist.append(newBook)
        newBook = Book()
        newBook.title = "Thus Spake Zarathustra"
        newBook.author = "Friedrich Nietzsche"
        newBook.description = "Thus Spoke Zarathustra: A Book for All and None is a philosophical novel by German philosopher Friedrich Nietzsche, composed in four parts written between 1883 and 1885 and published between 1883 and 1885."
        

        booklist.append(newBook)
        newBook = Book()
        newBook.title = "Fight Club"
        newBook.author = "Chuck Palahniuk"
        newBook.description = "Fight Club is a 1996 novel by Chuck Palahniuk. It follows the experiences of an unnamed protagonist struggling with insomnia. Inspired by his doctor's exasperated remark that insomnia is not suffering, the protagonist finds relief by impersonating a seriously ill person in several support groups."
       

        booklist.append(newBook)

        
    }
}
