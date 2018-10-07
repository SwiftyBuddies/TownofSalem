//
//  IntroductionViewController.swift
//  Town of Salem
//
//  Created by Zsolt Pete on 2018. 10. 07..
//  Copyright © 2018. Zsolt Pete. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class IntroductionViewController: UIViewController {
    @IBOutlet weak var characterDescLabel: UILabel!
    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var characterImageView: UIImageView!
    @IBOutlet weak var characterContainerView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerNibs()
        self.initCollectionView()
        self.bindCollectionView()
        self.bindSelectRowCollectionView()
        self.present(role: DataProvider.shared.roles.value[0])
    }
    
    func registerNibs(){
        let consentSectionFooterCellNib = UINib(nibName: Constants.Cells.SimpleImageCell, bundle: nil)
        self.collectionView.register(consentSectionFooterCellNib, forCellWithReuseIdentifier: Constants.Cells.SimpleImageCell)
    }
    
    func initCollectionView(){
        self.collectionView.rx.setDelegate(self).disposed(by: disposeBag)
    }

}

//UICollectionViewDelegate with RX

extension IntroductionViewController {
    
    func bindCollectionView(){
        DataProvider.shared.roles.bind(to: self.collectionView.rx.items(cellIdentifier: Constants.Cells.SimpleImageCell)) { (_, model, cell: SimpleImageCell) in
            cell.bind(model: model)
        }.disposed(by: disposeBag)
    }
    
    func bindSelectRowCollectionView(){
        self.collectionView.rx.itemSelected.subscribe(onNext: { indexPath in
            let role = DataProvider.shared.roles.value[indexPath.row]
            self.present(role: role)
        }).disposed(by: disposeBag)
    }
    
}

//UICollectionViewDelegateFlowLayout
extension IntroductionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = self.view.frame.width/4.5
        let size = CGSize(width: width, height: width)
        return size
    }
    
}

extension IntroductionViewController: UICollectionViewDelegate {
    
}

extension IntroductionViewController: RolePresenting {
    
    func present(role: Role) {
        self.characterImageView.image = UIImage(named: role.pImageScr ?? "")
        self.characterNameLabel.text = role.name
        self.characterDescLabel.text = role.desc
    }
    
}
