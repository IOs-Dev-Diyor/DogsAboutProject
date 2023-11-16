//
//  LaunchScreenViewController.swift
//  DogsAbout
//
//  Created by Diyorbek Xikmatullayev on 21/10/23.
//

import UIKit

class BackViewController: UIViewController {
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.numberOfLines = .zero
        label.font = UIFont(name: "HelveticaNeue-MediumItalic", size: 13)
        return label
    }()
    
    private let backImage: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .quaternaryLabel
        image.layer.masksToBounds = true
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 8
        return image
    }()
    
    private let backLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .purple.withAlphaComponent(0.2)
        label.numberOfLines = 10
        label.textAlignment = .center
        label.font = UIFont(name: "MarkerFelt-Wide", size: 21)
        return label
    }()
    
    var imageObj: String?
    var labelObj: String?
    var textObj: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .magenta
        backImage.image = UIImage(named: imageObj ?? "")
        backLabel.text = labelObj
        textLabel.text = textObj
        view.addSubview(backImage)
        view.addSubview(backLabel)
        view.addSubview(textLabel)
        
        backImage.snp.makeConstraints { make in
            make.top.equalTo(30)
            make.left.equalTo(30)
            make.right.equalTo(-30)
            make.height.equalTo(backImage.snp.width)
        }
        
        backLabel.snp.makeConstraints { make in
            make.top.equalTo(backImage.snp.bottom).offset(15)
            make.left.equalTo(30)
            make.right.equalTo(-30)
            make.height.equalTo(50)
        }
        
        textLabel.snp.makeConstraints { make in
            make.top.equalTo(backLabel.snp.bottom).offset(0)
            make.left.equalTo(10)
            make.right.equalTo(-10)
            make.bottom.equalTo(-20)
           
        }
      
    }
    
}
