//
//  BRMovieItemInfoView.swift
//  MovieRepo
//
//  Created by hanif hussain on 20/03/2024.
//

import UIKit
import AVKit

class BRMovieItemPlayerView: UIView {
    private var movie: Movies!
    let trailerButton = BRButton(colour: .black, title: "View trailer", systemImageName: "video")
    private var imageView: BRCoverImageView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    convenience init(movie: Movies) {
        self.init(frame: .zero)
        self.movie = movie
    }
    
    
    private func configure() {
        backgroundColor = .systemBackground
        translatesAutoresizingMaskIntoConstraints = false
        
        imageView = BRCoverImageView(frame: .zero)
        imageView.contentMode = .scaleToFill
        setCoverImage()
        addSubview(imageView)
        
        trailerButton.titleLabel?.adjustsFontSizeToFitWidth = true
        trailerButton.configuration?.titleAlignment = .trailing
        trailerButton.configuration?.baseBackgroundColor = .systemBackground
        addSubview(trailerButton)
    
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: self.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            trailerButton.topAnchor.constraint(equalTo: self.bottomAnchor, constant: -45),
            trailerButton.leadingAnchor.constraint(equalTo: self.trailingAnchor, constant: -145),
            trailerButton.widthAnchor.constraint(equalToConstant: 148),
            trailerButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
    
    
    func setCoverImage() {
        Task(priority: .background) {
            imageView.set(urlString: "\(movie.posterPath!)")
        }
    }
    
}
