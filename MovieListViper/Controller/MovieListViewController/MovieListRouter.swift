//
//  MovieListRouter.swift
//  MovieListViper
//
//  Created by Utku Çetinkaya on 22.10.2022.
//  
//

import Foundation
import UIKit

class MovieListRouter {

    // MARK: -Properties

    weak var view: UIViewController?

    // MARK: -Static methods

    static func setupModule() -> MovieListViewController {
        let viewController = UIStoryboard.loadViewController() as MovieListViewController
        let presenter = MovieListPresenter()
        let router = MovieListRouter()
        let interactor = MovieListInteractor()

        viewController.presenter =  presenter
        viewController.modalPresentationStyle = .fullScreen

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor

        router.view = viewController

        interactor.output = presenter

        return viewController
    }
}

extension MovieListRouter: IMovieListRouter {
}
