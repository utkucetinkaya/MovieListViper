//
//  MovieListContract.swift
//  MovieListViper
//
//  Created by Utku Çetinkaya on 22.10.2022.
//  
//

import Foundation

protocol IMovieListView: IBaseView {
    func reloodView()
}

protocol IMovieListPresenter: AnyObject {
    func fetchData() -> Movie?
    func getMovieList()
}

protocol IMovieListInteractor: AnyObject {
    func getMovieList()
}

protocol IMovieListInteractorToPresenter: AnyObject {
    func getMovieList(result: Movie?)
}

protocol IMovieListRouter: AnyObject {
}
