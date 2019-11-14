//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Morgan Smith on 11/13/19.
//  Copyright © 2019 Morgan Smith. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "Variables are the “things” in your code, like numbers, text, buttons and images.  Variables can be changed after being created"), VocabularyWord(name: "Constant", definition: "A variable that can't be changed once it is created"), VocabularyWord(name: "Function", definition: "Functions are self-contained chunks of code that perform a specific task.")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }
    
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
     
        let word = vocabWords[indexPath.row]
        cell.textLabel?.text = word.word
     
     return cell
     }
     
    
    
     // MARK: - Navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
    if segue.identifier == "ShowDefinitionSegue" {
    guard let indexPath = tableView.indexPathForSelectedRow,
        let wordDetailVC = segue.destination as? DefinitionViewController else { return }
    
    let cellWord = vocabWords[indexPath.row]
    
    wordDetailVC.cellWord = cellWord
     
    }
}


