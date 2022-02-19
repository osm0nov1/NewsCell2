//
//  TableViewNewsVC.swift
//  NewsCell2
//
//  Created by Rashit Osmonov on 17/2/22.
//

import Foundation
import UIKit
import SnapKit

class TableViewNewsVC: UITableViewCell {
  
    private lazy var layoutScreen: UIView = {
            let view = UIView()
//            view.contentMode = .scaleAspectFit
            return view
        }()
        
    private lazy var imageNews: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
        return view
    }()
      
        
        private lazy var title: UILabel = {
            let view = UILabel()
            view.font = .systemFont(ofSize: 14, weight: .medium)
            view.textColor = .black
            view.numberOfLines = 0
            return view
        }()
        
        private lazy var discription: UILabel = {
            let view = UILabel()
            view.font = .systemFont(ofSize: 10, weight: .regular)
            view.textColor = .lightGray
            return view
        }()
    
    override func layoutSubviews() {
        setView()
    
    }
    private func setView() {
    
        addSubview(title)
                title.snp.makeConstraints { make in
                    make.top.equalToSuperview().offset(8)
                    make.width.equalTo(frame.width / 1.5)
                    make.left.equalToSuperview()
                    make.bottom.equalTo(snp.centerY)
                }
                addSubview(discription)
                discription.snp.makeConstraints { make in
                    make.top.equalTo(title.snp.bottom).offset(8)
                    make.width.equalTo(frame.width / 1.5)
                    make.left.equalToSuperview()
                    
                    
                }
                addSubview(imageNews)
                imageNews.snp.makeConstraints { make in
                    make.right.equalToSuperview().offset(-16)
                    make.height.equalToSuperview().multipliedBy(0.7)
                    make.centerY.equalToSuperview()
                    make.width.equalTo(frame.height / 1.5)
                  
                }
             
        }
    
    func fill(model: ModelViewController){
           self.title.text = model.title
           self.discription.text = model.discription
           self.imageNews.image = UIImage(named: model.image)
          
       }
    

}
