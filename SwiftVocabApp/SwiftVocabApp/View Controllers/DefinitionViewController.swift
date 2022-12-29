//
//  DefinitionViewController.swift
//  SwiftVocabApp
//
//  Created by Diante Lewis-Jolley on 12/28/22.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    var vocabWord: VocabWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        definitionLabel.text = vocabWord?.name
        definitionTextView.text = vocabWord?.definition
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
