//
//  AddMovieViewController.swift
//  MoviesList
//
//  Created by Mohammad Hazimeh on 17/10/2024.
//

import UIKit

protocol AddMovieViewControllerdelegate {
    func didAddMovie(movie:Movie)
}

class AddMovieViewController: UIViewController {
    

 
    @IBOutlet weak var movieTitleTextField: UITextField!
    @IBOutlet weak var movieDurationTextField: UITextField!
    @IBOutlet weak var movieDateTextField: UITextField!
    @IBOutlet weak var movieRateTextField: UITextField!
    @IBOutlet weak var movieDescriptionTextView: UITextView!
    
    var delegate:AddMovieViewControllerdelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    @IBAction func onSaveButtonTap(_ sender: Any) {
        
        let movie = Movie(name: movieTitleTextField.text!, rating: Double.infinity , date: movieDateTextField.text!, imageName:movieTitleTextField.text!, duration: movieDurationTextField.text!, details: movieDescriptionTextView.text!)
        
        delegate?.didAddMovie(movie: movie)
        
        
        
        dismiss(animated: true)
        
    
    }
    
 

}
