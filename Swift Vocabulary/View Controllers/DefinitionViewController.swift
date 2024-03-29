//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Morgan Smith on 11/13/19.
//  Copyright © 2019 Morgan Smith. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var cellWord: VocabularyWord?
    
    @IBOutlet var wordLabel: UILabel!
    @IBOutlet var definitionText: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
          updateViews()
    }
        
        func updateViews() {
            if let cellWord = cellWord {
                wordLabel.text = cellWord.word
                definitionText.text = cellWord.definition
            
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


