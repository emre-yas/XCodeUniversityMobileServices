//
//  Studenti2.swift
//  Login In
//
//  Created by Emre Jashari on 22.3.24.
//

import UIKit

class Studenti2: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    var subjects: [String] = []
       
       override func viewDidLoad() {
           super.viewDidLoad()
           
           let tasarim: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
           let genislik = self.collectionView.frame.size.width
           tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
           tasarim.itemSize = CGSize(width: (genislik - 30) / 1, height: (genislik - 10) / 3.5)
           tasarim.minimumInteritemSpacing = 5
           tasarim.minimumLineSpacing = 5
           
           collectionView.collectionViewLayout = tasarim
           
           subjects = ["Matematichs", "Programming", "Syber Security","Telecomunication","Internet Technologies"]
           
           collectionView.delegate = self
           collectionView.dataSource = self
       }
   }

   extension Studenti2: UICollectionViewDelegate, UICollectionViewDataSource {

       func numberOfSections(in collectionView: UICollectionView) -> Int {
           return 1
       }
       
       func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           return subjects.count
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           
           let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ulkeHucre", for: indexPath) as! Studenti1_CollectionViewCell
           
           cell.hucreLabel.text = subjects[indexPath.row]
           return cell
       }
       
       func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
           print("Selected country: \(subjects[indexPath.row])")
       }
   }
