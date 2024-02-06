//
//  MainViewWireframe.swift
//  IncrementColorApp
//
//  Created by Daniel Cazorro Frias  on 6/2/24.
//

import Foundation

class MainViewWireframe {
    // MARK: - Properties
    
    var viewController: MainViewController {
        // Generating module components
        let viewController = MainViewController()
        let dataManager: MainViewDataManager = createDataManager()
        let viewModel: MainViewModel = createViewModel(with: dataManager)
        viewController.set(viewModel: viewModel)
        return viewController
    }
    
    // MARK: - Private methods
    private func createViewModel(with dataManager: MainViewDataManager) -> MainViewModel {
        return MainViewModel(dataManager: MainViewDataManager())
    }
    
    private func createDataManager() ->  MainViewDataManager {
        let dataManager = MainViewDataManager()
        return dataManager
    }
    
}
