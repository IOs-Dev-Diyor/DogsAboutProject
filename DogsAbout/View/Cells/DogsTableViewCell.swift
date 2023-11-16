//
//  DogsTableViewCell.swift
//  DogsAbout
//
//  Created by Diyorbek Xikmatullayev on 15/10/23.
//

import UIKit

class DogsTableViewCell: UICollectionViewCell {
    
      let lifeIcon: UIImageView = {
        let image = UIImageView()
        image.layer.masksToBounds = true
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    let heightIcon: UIImageView = {
      let image = UIImageView()
      image.layer.masksToBounds = true
      image.contentMode = .scaleAspectFill
      return image
  }()
 
    let weightIcon: UIImageView = {
      let image = UIImageView()
      image.layer.masksToBounds = true
      image.contentMode = .scaleAspectFill
      return image
  }()
 
    let characterView: UIView = {
        let view = UIView()
        view.backgroundColor = .purple.withAlphaComponent(0.9)
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.cornerRadius = 8
        view.layer.shadowOffset = CGSize(width: 10,
                                         height: 10)
        view.layer.shadowRadius = 5
        view.layer.shadowOpacity = 0.3
        return view
    }()
    
    
    let backView: UIView = {
        let view = UIView()
        view.backgroundColor = .purple.withAlphaComponent(0.8)
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.cornerRadius = 8
        view.layer.shadowOffset = CGSize(width: 10,
                                         height: 10)
        view.layer.shadowRadius = 5
        view.layer.shadowOpacity = 0.3
        return view
    }()
    
    private func customShadowPath(viewLayer layer: CALayer,
                                  shadowHeight: CGFloat) -> UIBezierPath {
        let layerX = layer.bounds.origin.x
        let layerY = layer.bounds.origin.y
        let layerWidth = layer.bounds.size.width
        let layerHeight = layer.bounds.size.height
        
        let path = UIBezierPath()
        path.move(to: CGPoint.zero)
        
        path.addLine(to: CGPoint(x: layerX + layerWidth,
                                 y: layerY))
        path.addLine(to: CGPoint(x: layerX + layerWidth,
                                 y: layerHeight + 20))
        
        path.addCurve(to: CGPoint(x: 0,
                                  y: layerHeight),
                      controlPoint1: CGPoint(x: layerX + layerWidth,
                                             y: layerHeight),
                      controlPoint2: CGPoint(x: layerX,
                                             y: layerHeight))
        
        return path
    }
    
    let dogImage: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .magenta
        image.layer.masksToBounds = true
        image.contentMode = .scaleAspectFill
        image.layer.borderColor = UIColor.gray.cgColor
        image.layer.borderWidth = 2
        image.layer.cornerRadius = 12
        image.layer.cornerRadius = 8
        image.layer.shadowOffset = CGSize(width: 10,
                                         height: 10)
        image.layer.shadowRadius = 5
        image.layer.shadowOpacity = 0.3
        return image
    }()
    
    let nameLabel: UILabel = {
    let label = UILabel()
        label.text = "sdnfa dcl kn"
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont(name: "MarkerFelt-Wide", size: 14)
        label.clipsToBounds = true
        label.numberOfLines = 1
        return label
    }()
    
    let characterLabel: UILabel = {
    let label = UILabel()
        label.text = "sdnfa dcl kn"
        label.textColor = .black
        label.textAlignment = .left
        label.font = UIFont(name: "HoeflerText-Italic", size: 18)
        label.clipsToBounds = true
        label.numberOfLines = 2
        return label
    }()
    
    let yearLabel: UILabel = {
    let label = UILabel()
        label.textColor = .black
        label.textAlignment = .left
        label.font = UIFont(name: "AvenirNextCondensed-Bold", size: 13)
        label.clipsToBounds = true
        return label
    }()
    
    let weightLabel: UILabel = {
    let label = UILabel()
        label.textColor = .black
        label.textAlignment = .left
        label.font = UIFont(name: "AvenirNextCondensed-Bold", size: 13)
        label.clipsToBounds = true
        return label
    }()
    
    let heightLabel: UILabel = {
    let label = UILabel()
        label.textColor = .black
        label.textAlignment = .left
        label.font = UIFont(name: "AvenirNextCondensed-Bold", size: 13)
        label.clipsToBounds = true
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backView.layer.shadowPath = customShadowPath(viewLayer: backView.layer,
                                                      shadowHeight: 5).cgPath
        
        lifeIcon.image = UIImage(named: "life")
        heightIcon.image = UIImage(named: "height")
        weightIcon.image = UIImage(named: "weight")
        
        contentView.addSubview(backView)
        contentView.addSubview(dogImage)
        backView.addSubview(nameLabel)
        backView.addSubview(weightLabel)
        backView.addSubview(heightLabel)
        backView.addSubview(yearLabel)
        contentView.addSubview(characterView)
        characterView.addSubview(characterLabel)
        backView.addSubview(lifeIcon)
        backView.addSubview(heightIcon)
        backView.addSubview(weightIcon)
        
        backView.snp.makeConstraints { make in
            make.top.equalTo(5)
            make.left.equalTo(5)
            make.right.equalTo(-5)
            make.bottom.equalTo(-20)
        }
        
        dogImage.snp.makeConstraints { make in
            make.right.equalTo(-15)
            make.width.equalTo(contentView.frame.width/3 + 70)
            make.height.equalTo(contentView.frame.width/3 + 40)
            make.bottom.equalTo(5)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(5)
            make.left.equalTo(dogImage.snp.left).offset(10)
            make.right.equalTo(-10)
            make.height.equalTo(40)
        }
        
        characterLabel.snp.makeConstraints { make in
            make.top.equalTo(3)
            make.left.equalTo(10)
            make.right.equalTo(5)
            make.height.equalTo(60)
        }
        
        characterView.snp.makeConstraints { make in
            make.left.equalTo(0)
            make.right.equalTo(dogImage.snp.left).offset(-5)
            make.bottom.equalTo(dogImage.snp.bottom)
            make.height.equalTo(55)
        }
        
        lifeIcon.snp.makeConstraints { make in
            make.top.equalTo(20)
            make.left.equalTo(5)
            make.width.height.equalTo(35)
        }
        
        heightIcon.snp.makeConstraints { make in
            make.top.equalTo(lifeIcon.snp.bottom).offset(10)
            make.left.equalTo(5)
            make.width.height.equalTo(35)
        }
        
        weightIcon.snp.makeConstraints { make in
            make.top.equalTo(heightIcon.snp.bottom).offset(10)
            make.left.equalTo(5)
            make.width.height.equalTo(35)
            make.bottom.equalTo(characterView.snp.top).offset(-5)
        }
        
        
        weightLabel.snp.makeConstraints { make in
            make.top.equalTo(weightIcon.snp.top).offset(3)
            make.left.equalTo(weightIcon.snp.right).offset(5)
            make.width.equalTo(100)
            make.height.equalTo(25)
        }

        heightLabel.snp.makeConstraints { make in
            make.top.equalTo(heightIcon.snp.top).offset(3)
            make.left.equalTo(heightIcon.snp.right).offset(5)
            make.width.equalTo(100)
            make.height.equalTo(25)
        }

        yearLabel.snp.makeConstraints { make in
            make.top.equalTo(lifeIcon.snp.top).offset(3)
            make.left.equalTo(lifeIcon.snp.right).offset(5)
            make.width.equalTo(100)
            make.height.equalTo(25)
        }
        
    }
    
    func configure(_ model: Dogs) {
        dogImage.image = UIImage(named: model.image)
        nameLabel.text = model.name
        characterLabel.text = model.character
        weightLabel.text = "\(model.with) pounts"
        heightLabel.text = "\(model.height) inches "
        yearLabel.text = "\(model.lifeExpectancy) years"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
}
