//
//  WordsTableViewController.swift
//  SwiftVocabApp
//
//  Created by Diante Lewis-Jolley on 12/28/22.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabWord] = [VocabWord(name: "Diante", definition: "Top Dog round here"), VocabWord(name: "Top Dog", definition: "Diante")]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = vocabWords[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
    



    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "toDefinitionVC" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let definitionVC = segue.destination as? DefinitionViewController
                
                definitionVC?.vocabWord = vocabWords[indexPath.row]
            }
        }
    }
    

}
