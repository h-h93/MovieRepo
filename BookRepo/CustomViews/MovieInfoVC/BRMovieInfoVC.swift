//
//  BRMovieInfoVC.swift
//  MovieRepo
//
//  Created by hanif hussain on 20/03/2024.
//

import UIKit

protocol BRMovieItemDelegate: AnyObject {
    func didTapShowTrailer(for movieID: String)
}

class BRMovieInfoVC: UIViewController {
    weak var delegate: BRMovieItemDelegate!
    var movieTrailerView: BRMovieItemPlayerView!
    var movie: Movies!
    
    
    init(movie: Movies) {
        super.init(nibName: nil, bundle: nil)
        self.movie = movie
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        configureMovieTrailerView()
    }
    
    
    func configure() {
        view.backgroundColor = .systemBackground
        view.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    func configureMovieTrailerView() {
        movieTrailerView = BRMovieItemPlayerView(movie: movie)
        view.addSubview(movieTrailerView)
        movieTrailerView.trailerButton.addTarget(self, action: #selector(trailerButtonDidTap), for: .touchUpInside)
        NSLayoutConstraint.activate([
            movieTrailerView.topAnchor.constraint(equalTo: view.topAnchor),
            movieTrailerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            movieTrailerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            movieTrailerView.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    
    @objc func trailerButtonDidTap() {
        delegate.didTapShowTrailer(for: "\(movie.id!)")
    }
    

}
