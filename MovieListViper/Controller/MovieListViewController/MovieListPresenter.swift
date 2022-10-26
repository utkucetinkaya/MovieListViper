//
//  MovieListPresenter.swift
//  MovieListViper
//
//  Created by Utku Çetinkaya on 22.10.2022.
//  
//

import Foundation

class MovieListPresenter {

    // MARK: -Properties

    weak var view: IMovieListView?
    var router: IMovieListRouter?
    var interactor: IMovieListInteractor?
    var movie: Movie?
}

extension MovieListPresenter: IMovieListPresenter {
    func getMovieList() {
        self.interactor?.getMovieList()
    }
    
    func fetchData() -> Movie? {
        return movie
    }
}

extension MovieListPresenter: IMovieListInteractorToPresenter {
    func getMovieList(result: Movie?) {
        self.movie = result
        self.view?.reloodView()
    }
}
