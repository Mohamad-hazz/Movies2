//
//  MoviesTableViewCell.swift
//  MoviesList
//
//  Created by Mohammad Hazimeh on 15/10/2024.
//

import UIKit

class MoviesTableViewCell: UITableViewCell {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieDateLabel: UILabel!
    @IBOutlet weak var movieRatingLabel: UILabel!
    @IBOutlet weak var movieDurationLabel: UILabel!
    @IBOutlet weak var movieDetailsText: UITextView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      
    }
    
    func setup (movie : Movie){
        movieNameLabel.text = movie.name
       movieDateLabel.text = movie.date
        movieDurationLabel.text = movie.duration
        movieRatingLabel.text = "\(movie.rating)"
        movieImageView.image = UIImage(named: movie.imageName)
        movieDetailsText.text = movie.details
    }
    
}
