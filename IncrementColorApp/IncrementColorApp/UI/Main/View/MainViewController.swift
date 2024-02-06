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
    // Instancia del ViewModel que maneja la lógica de la vista
    private var viewModel = MainViewModel(dataManager: MainViewDataManager())
    
    // MARK: - IBOutlet
    // IBOutlet para el label que muestra el número
    @IBOutlet weak var numberLabel: UILabel!
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Asignamos el ViewController como delegado del ViewModel
        viewModel.delegate = self
        
    }
    
    //MARK: - IBAction
    
    // Método llamado cuando se pulsa el botón
    @IBAction func IncreaseButtonPush(_ sender: Any) {
        // Llamamos al método del ViewModel para incrementar el número
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
