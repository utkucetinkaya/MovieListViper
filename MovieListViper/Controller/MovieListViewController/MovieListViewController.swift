//
//  MovieListViewController.swift
//  MovieListViper
//
//  Created by Utku Çetinkaya on 22.10.2022.
//  
//

import Foundation
import UIKit
import Kingfisher

class MovieListViewController: UIViewController, StoryboardLoadable {

    @IBOutlet weak var tableView: UITableView!
    // MARK: -Properties

    var presenter: IMovieListPresenter?

    // MARK: -Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Popular TV Series"
        presenter?.getMovieList()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "MovieCell", bundle: nil), forCellReuseIdentifier: "MovieCell")
    }
}

extension MovieListViewController: IMovieListView {
    func reloodView() {
        tableView.reloadData()
    }
    
    override func showProgressHUD() {
    }
    
    override func hideProgressHUD() {
    }
}

// MARK: -UITableView Data Source - Delegate
extension MovieListViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.fetchData()?.results?.count ?? 0
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        let movie = presenter?.fetchData()?.results?[indexPath.row]
        cell.configure(with: movie!)
        return cell
    }
}



