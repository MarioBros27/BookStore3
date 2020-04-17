//
//  BookStoreDelegate.swift
//  Bookstore
//
//  Created by Andres on 4/16/20.
//  Copyright © 2020 Andres. All rights reserved.
//

import Foundation
protocol BookStoreDelegate{
    func newBook(_ controller: AnyObject, newBook: Book)
    func editBook(_ controller: AnyObject, editBook: Book)
    func deleteBook(_ controller: AnyObject)
}
