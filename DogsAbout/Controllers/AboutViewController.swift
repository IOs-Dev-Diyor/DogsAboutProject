//
//  SettingViewController.swift
//  Dogs
//
//  Created by Diyorbek Xikmatullayev on 14/10/23.
//

import UIKit

class AboutViewController: UIViewController {
    
    private let imageView: UIImageView = {
        let image = UIImageView()
        image.layer.masksToBounds = true
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 24
        return image
    }()
    
    private let aboutLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textAlignment = .left
        label.font = UIFont(name: "Noteworthy-Bold", size: 17)
        label.numberOfLines = .zero
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        
        aboutLabel.text = """
"A dog app can serve a variety of purposes and provide a number of opportunities for dog owners, hobbyists, and anyone interested in learning about dogs. Here are the general goals and capabilities of such an application.
The app can provide a complete database of dog breeds, including their history, physical characteristics, temperament, exercise needs, grooming requirements, and more. Users can search for specific breeds or research breeds based on size, type or characteristics.
in the application you will have the opportunity to do quiz tests to strengthen your knowledge about dogs.
"""
        imageView.image = UIImage(named: "aboutdogs")
        
        view.addSubview(imageView)
        view.addSubview(aboutLabel)
        
        imageView.snp.makeConstraints { make in
            make.top.equalTo(100)
            make.left.equalTo(40)
            make.right.equalTo(-40)
            make.height.equalTo(250)
        }
        
        aboutLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(0)
            make.left.equalTo(10)
            make.right.equalTo(-10)
            make.bottom.equalTo(-100)
        }
        
    }

}
