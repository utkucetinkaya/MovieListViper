//
//  MovieListInteractor.swift
//  MovieListViper
//
//  Created by Utku Çetinkaya on 22.10.2022.
//  
//

import Foundation

class MovieListInteractor {

    // MARK: -Properties

    weak var output: IMovieListInteractorToPresenter?
}

extension MovieListInteractor: IMovieListInteractor {
    func getMovieList() {
        API.shared.getMovie { movie, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            self.output?.getMovieList(result: movie)
        }
    }
}
