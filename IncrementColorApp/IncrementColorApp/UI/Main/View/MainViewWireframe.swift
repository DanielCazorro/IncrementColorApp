//
//  MainViewWireframe.swift
//  IncrementColorApp
//
//  Created by Daniel Cazorro Frias  on 6/2/24.
//

import Foundation

class MainViewWireframe {
    
    // MARK: - Properties
    // Esta propiedad calculada proporciona una instancia de MainViewController cuando se accede a ella.
    var viewController: MainViewController {
        // Generando los componentes del módulo
        
        // Creamos una instancia de MainViewController
        let viewController = MainViewController()
        
        // Creamos una instancia de MainViewDataManager utilizando el método privado createDataManager()
        let dataManager: MainViewDataManager = createDataManager()
        
        // Creamos una instancia de MainViewModel utilizando el método privado createViewModel(with:)
        let viewModel: MainViewModel = createViewModel(with: dataManager)
        
        // Configuramos el viewModel creado en el viewController
        viewController.set(viewModel: viewModel)
        
        // Devolvemos el viewController configurado
        return viewController
    }
    
    // MARK: - Private methods
    
    // Este método privado crea una instancia de MainViewModel con un MainViewDataManager proporcionado como argumento.
    private func createViewModel(with dataManager: MainViewDataManager) -> MainViewModel {
        // Aquí, estamos creando una nueva instancia de MainViewDataManager en lugar de utilizar la que se pasa como argumento.
        // Esto debería corregirse para usar el dataManager proporcionado.
        return MainViewModel(dataManager: dataManager)
    }
    
    // Este método privado crea y devuelve una instancia de MainViewDataManager.
    private func createDataManager() ->  MainViewDataManager {
        // Creamos una nueva instancia de MainViewDataManager y la devolvemos.
        return MainViewDataManager()
    }
}
