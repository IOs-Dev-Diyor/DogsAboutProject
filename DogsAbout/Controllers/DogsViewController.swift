//
//  HomeViewController.swift
//  Dogs
//
//  Created by Diyorbek Xikmatullayev on 14/10/23.
//

import SnapKit
import SDWebImage
import UIKit


class DogsViewController: UIViewController {
    let wd = UIScreen.main.bounds.width
    
    private let backImage: UIImageView = {
        let image = UIImageView()
        image.layer.masksToBounds = true
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 8
        image.image = UIImage(named: "dogsback")
        return image
    }()
    
    lazy var collectionView: UICollectionView = {
        
        let layot = UICollectionViewFlowLayout()
        layot.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layot)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = true
        collectionView.backgroundColor = .clear
        collectionView.layer.cornerRadius = 20
        collectionView.largeContentTitle = "Dogs"
        collectionView.contentInset = UIEdgeInsets(top: 10, left: 5, bottom: 70, right: 5)
        collectionView.register(DogsTableViewCell.self, forCellWithReuseIdentifier: "DogsTableViewCell")
        return collectionView
    }()
    
    var dogsArray = DogsObject.shared.dogsArray
    var aboutArray = DogsObject.shared.aboutArray
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Dogs"
        view.addSubview(backImage)
        view.addSubview(collectionView)
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(50)
            make.right.left.equalTo(0)
            make.height.equalTo(view.frame.height)
        }
        
        backImage.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.left.right.equalTo(0)
        }
        
    }
    
}

extension DogsViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dogsArray.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DogsTableViewCell", for: indexPath) as! DogsTableViewCell
        let obj = dogsArray[indexPath.row]
        cell.configure(obj)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: wd - 20, height:  wd/3 + 70 )
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
let vc = BackViewController()
        
        vc.labelObj = dogsArray[indexPath.row].name
        vc.imageObj = dogsArray[indexPath.row].image
        vc.textObj = aboutArray[indexPath.row]
//        self.navigationController?.pushViewController(vc, animated: true)
        self.present(vc, animated: true)
    }
    
}
