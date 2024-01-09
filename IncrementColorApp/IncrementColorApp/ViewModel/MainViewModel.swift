//
//  MainViewController.swift
//  IncrementColorApp
//
//  Created by Daniel Cazorro Frías on 9/1/24.
//

import UIKit

class MainViewController: UIViewController {

    // Aquí creamos una variable number inicializada a cero, para que cada vez que cerremos y abramos la app vuelva a este valor.
    private var number = 0
    
    // MARK: - IBOutlet
    @IBOutlet weak var NumberLabel: UILabel!
    
    //MARK: - IBAction
    // Esta es la acción de pulsar el botón, dentro pondremos el código que queremos realizar
    @IBAction func IncreaseButtonPush(_ sender: Any) {
        number += 1
        NumberLabel.text = "\(number)"
        
        let randomColor = generateRandomColor()
        view.backgroundColor = randomColor
    }
    
    // Creamos una función que genere un color
    func generateRandomColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
