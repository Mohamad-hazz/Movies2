//
//  ViewController.swift
//  MoviesList
//
//  Created by Mohammad Hazimeh on 15/10/2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, AddMovieViewControllerdelegate {

    
    


    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = [
        
        Movie(name: "SHAWSHANK REDEMPTION", rating: 9.3, date: "1994", imageName: "shaw", duration: "2h 22m", details: "Synopsis. In 1947, Andy Dufresne (Tim Robbins), a banker in Maine, is convicted of murdering his wife and her lover, a golf pro. Since the state of Maine has no death penalty, he is given two consecutive life sentences and sent to the notoriously harsh Shawshank Prison"),
        Movie(name: "THE GODFATHER", rating: 9.2 , date: "1972", imageName: "one", duration: "2h 55m", details: "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son."),
        Movie(name: "THE DARK KNIGHT", rating: 9.0, date: "2008", imageName: "batman", duration: "2h 32m", details: "When a menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman, James Gordon and Harvey Dent must work together to put an end to the madness."),
        Movie(name: "THE GODFATHER PART II", rating: 9.0, date: "1974", imageName: "two", duration: "3h 22m", details: "The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.") ,
        Movie(name: "12 ANGRY MEN", rating: 9.0, date: "1957", imageName: "angry", duration: "1h 36m", details: "The jury in a New York City murder trial is frustrated by a single member whose skeptical caution forces them to more carefully consider the evidence before jumping to a hasty verdict.") ,
        Movie(name: "THE LORD OF THE RINGS", rating: 9.0, date: "2003", imageName: "lord", duration: "3h 21m", details: "Gandalf and Aragorn lead the World of Men against Sauron's army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.")
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Top Movies"
    
        
        tableView.dataSource = self
        tableView.delegate = self
        let nib = UINib(nibName: "MoviesTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "MoviesTableViewCell")
    }
    
    @IBAction func onAddMovieButtonTap(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyBoard.instantiateViewController(withIdentifier: "AddMovieViewController") as! AddMovieViewController
        present(destination, animated: true)
        
        destination.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MoviesTableViewCell", for: indexPath) as! MoviesTableViewCell
        
        let movie = movies[indexPath.row]
        
        cell.setup(movie: movie)

        
        
        return cell
        
    }
    
    func didAddMovie(movie: Movie) {
        movies.append(movie)
        
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "MovieDetailsViewController") as! MovieDetailsViewController
        let movie = movies[indexPath.row]
        viewController.movie = movie
        
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}

