//
//  AddBookViewController.swift
//  Bookstore
//
//  Created by Andres on 4/16/20.
//  Copyright © 2020 Andres. All rights reserved.
//

import UIKit

class AddBookViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var pagesTextField: UITextField!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var readSwitch: UISwitch!
    
    var book = Book()
    var delegate: BookStoreDelegate?
    var editBook = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if editBook{
            self.title = "Edit Book"
            titleTextField.text = book.title
            authorTextField.text = book.author
            pagesTextField.text = String(book.pages)
            descriptionTextView.text = book.description
            if book.redThisBook{
                readSwitch.isOn = true
            }else{
                readSwitch.isOn = false
            }
        }
        titleTextField.delegate = self
        authorTextField.delegate = self
        pagesTextField.delegate = self
        
        descriptionTextView.delegate = self
    }
    
    @IBAction func saveBook(_ sender: UIButton) {
        book.title = titleTextField.text!
        book.author = authorTextField.text!
        book.description = descriptionTextView.text!
        
        if let text = pagesTextField.text, let pages = Int(text){
            book.pages = pages
        }
        
        if readSwitch.isOn{
            book.redThisBook = true
        }else{
            book.redThisBook = false
        }
        
        if editBook {
            delegate?.editBook(self, editBook: book)
        }else{
            delegate?.newBook(self, newBook: book)            
        }
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.resignFirstResponder()
    }
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        textField.resignFirstResponder()
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text != ""{
            textView.text = ""
        }
    }
    
}
