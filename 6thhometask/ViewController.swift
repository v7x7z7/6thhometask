//
//  ViewController.swift
//  6thhometask
//
//  Created by vv 77 on 11/09/24.
// some class
import UIKit

class ViewController: UIViewController {
    
    class WordModel {
        func getWord(from input: String) -> String {
            let sortedInput = String(input.sorted())
            return sortedInput == "ehllo" ? "hello" : "Неверное слово"
        }
    }
    let wordModel = WordModel()

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func hello(_ sender: Any) {
        let alert = UIAlertController(title: "Введите слово", message: nil, preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Введите слово"
        }
        
        let submitAction = UIAlertAction(title: "OK", style: .default) { _ in
            if let input = alert.textFields?.first?.text {
                let result = self.wordModel.getWord(from: input)
                self.label.text = result
            }
        }
        
        alert.addAction(submitAction)
        present(alert, animated: true)
    }
    
    
}



