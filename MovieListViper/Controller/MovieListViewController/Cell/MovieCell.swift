//
//  MovieCell.swift
//  MovieListViper
//
//  Created by Utku Çetinkaya on 22.10.2022.
//

import UIKit

class MovieCell: UITableViewCell {
    
    // MARK: - UI Elements
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    @IBOutlet weak var firstAirDateLabel: UILabel!    
    
    // MARK: - Function
    func configure(with movie: Result) {

        movieNameLabel.text = movie.name
        movieImageView.kf.setImage(with: URL(string: Constants.shared.imageURL + (movie.posterPath ?? "")))
        overviewLabel.text = movie.overview
        firstAirDateLabel.text = movie.firstAirDate
    }
}
