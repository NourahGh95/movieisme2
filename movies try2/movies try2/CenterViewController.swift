//
//  CenterViewController.swift
//  movies try2
//
//  Created by Nourah on 29/08/1444 AH.
//

import UIKit

class CenterViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionMovie: UICollectionView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    var arrMoviePhoto = [UIImage(named: "mov1")!, UIImage(named: "mov2")!, UIImage(named: "mov3")!, UIImage(named: "mov4")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionMovie.delegate = self
        collectionMovie.dataSource = self
        collectionMovie.layer.cornerRadius = 10
        pageControl.numberOfPages = arrMoviePhoto.count
        
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrMoviePhoto.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! CenterCollectionViewCell
        cell.MoviePhoto.image = arrMoviePhoto[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
