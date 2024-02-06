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
    
    // Aquí creamos una variable number inicializada a cero, para que cada vez que cerremos y abramos la app vuelva a este valor.
    /// Variable que mostramos en pantalla y va variando al pulsar el botón
    private var number = 0
    
    // MARK: - Public Methods
    /// Aumenta el valor de la variable number en 1, además cambia el color de fondo de pantalla
    func increaseNumber() {
        number += 1
        delegate?.updateNumberLabel(with: number)
        
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
