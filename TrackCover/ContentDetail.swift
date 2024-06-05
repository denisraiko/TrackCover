//
//  ContentDetail.swift
//  TrackCover
//
//  Created by Denis Raiko on 18.12.23.
//

import UIKit

class ContentDetail: UIViewController {
    @IBOutlet weak var imageCover: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var trackName = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = trackName
        imageCover.image = UIImage(named: trackName)
        nameLabel.textAlignment = .center
        imageCover.layer.cornerRadius = 25

    }
    


}
