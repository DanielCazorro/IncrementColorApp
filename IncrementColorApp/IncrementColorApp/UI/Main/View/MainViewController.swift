//
//  MainViewController.swift
//  IncrementColorApp
//
//  Created by Daniel Cazorro Frías on 9/1/24.
//

import UIKit

// MARK: - Protocol
/// Creamos el protocolo para la comunicación entre ViewController y ViewModel
protocol MainViewModelDelegate: AnyObject {
    func updateNumberLabel(with number: Int)
    func updateBackgroundColor(with color: UIColor)
}

class MainViewController: UIViewController, MainViewModelDelegate {
    
    // MARK: - Properties
    private var viewModel = MainViewModel(dataManager: MainViewDataManager())
    
    // MARK: - IBOutlet
    @IBOutlet weak var numberLabel: UILabel!
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        
    }
    
    //MARK: - IBAction
    // Esta es la acción de pulsar el botón, dentro pondremos el código que queremos realizar
    @IBAction func IncreaseButtonPush(_ sender: Any) {
        viewModel.increaseNumber()
    }
    
    //MARK: - Functions
    
    func set(viewModel: MainViewModel) {
        self.viewModel = viewModel
    }
    
    // MARK: - MainViewModelDelegate Methods
    /// Actualiza el texto del label con el número proporcionado.
    func updateNumberLabel(with number: Int) {
        numberLabel.text = "\(number)"
    }
    
    /// Actualiza el color de fondo de la vista con el color proporcionado.
    func updateBackgroundColor(with color: UIColor) {
        view.backgroundColor = color
    }
}
