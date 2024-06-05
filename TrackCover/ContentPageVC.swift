//
//  ContentPageVC.swift
//  TrackCover
//
//  Created by Denis Raiko on 18.12.23.
//

import UIKit

private let reuseIdentifier = "TrackCoverCell"

class ContentPageVC: UICollectionViewController {
    
    let images = ["Badmansboss-Never know", "image2", "image3", "image4", "image5", "image6", "image7", "image8", "image9"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! TrackCoverCell
        cell.imageCover.image = UIImage(named: images[indexPath.row])
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.collectionView.indexPathsForSelectedItems?.first {
                guard let detailVC = segue.destination as? ContentDetail else { return }
                detailVC.trackName = images[indexPath.row]
            }
        }
    }
}
