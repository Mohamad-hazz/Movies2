//
//  MovieDetailsViewController.swift
//  MoviesList
//
//  Created by Mohammad Hazimeh on 15/10/2024.
//

import UIKit

class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieAboutLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieDurationLabel: UILabel!
    
    @IBOutlet weak var movieRatingLabel: UILabel!
    
    
    @IBOutlet weak var movieDetailsText: UITextView!
    
    var movie:Movie!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.movieImageView.image = UIImage(named: movie.imageName)
        self.movieDetailsText.text = movie.details
        self.movieNameLabel.text = movie.name
        self.movieDurationLabel.text = movie.duration
        self.movieRatingLabel.text = "\(movie.rating)"
        
     
        
    }
    

 
}
