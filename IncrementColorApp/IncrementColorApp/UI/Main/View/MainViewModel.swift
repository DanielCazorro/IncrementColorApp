//
//  MainViewModel.swift
//  IncrementColorApp
//
//  Created by Daniel Cazorro Frias  on 19/1/24.
//

import UIKit

class MainViewModel  {
    
    // MARK: - Properties
    // Delegado para la comunicación con el ViewController
    weak var delegate: MainViewModelDelegate?
    
    private var dataManager: MainViewDataManager
    
    // MARK: - Initialization
    // Inicializador que recibe un delegado opcional y un MainViewDataManager
    init(delegate: MainViewModelDelegate? = nil, dataManager: MainViewDataManager) {
        self.delegate = delegate
        self.dataManager = dataManager
    }
    
    // MARK: - Public Methods
    /// Método público para aumentar el número y cambiar el color de fondo
    func increaseNumber() {
        // Aumentamos el número en 1
        dataManager.number += 1
        
        // Notificamos al ViewController para que actualice el número en la pantalla
        delegate?.updateNumberLabel(with: dataManager.number)
        
        // Generamos un color aleatorio y notificamos al ViewController para que cambie el color de fondo
        let randomColor = generateRandomColor()
        delegate?.updateBackgroundColor(with: randomColor)
    }
    
    
    // MARK: - Private Methods
    /// Genera aleatoriamente un color
    private func generateRandomColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
