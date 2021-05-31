//
//  ViewController.swift
//  IstheWordanIsogram
//
//  Created by Daniel Washington Ignacio on 31/05/21.
//


/*
 An isogram is a word that has no duplicate letters. Create a function that takes a string and returns either true or false depending on whether or not it's an "isogram".

 Examples

 isIsogram("Algorism") ➞ true

 isIsogram("PasSword") ➞ false
 // Not case sensitive.

 isIsogram("Consecutive") ➞ false
 Notes

 Ignore letter case (should not be case sensitive).
 All test cases contain valid one word strings.
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.isIsogram("Algorism"))
       // print(self.isIsogram("PasSword"))
       // print(self.isIsogram("Consecutive"))
    }

    func isIsogram(_ str: String) -> Bool {
        var array: [Character] = []
        for n in str{
            array.append(n)
        }
        for m in 0..<array.count-1{
            if array[m].lowercased() == array[m+1].lowercased(){
                return true
            }
        }
        return false
    }

}

