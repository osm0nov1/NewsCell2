//
//  ViewController.swift
//  NewsCell2
//
//  Created by Rashit Osmonov on 17/2/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    
    private lazy var newsTableView: UITableView = {
        let view = UITableView()
        view.register(TableViewNewsVC.self, forCellReuseIdentifier: "TableViewNewsVC")
        view.delegate = self
        view.dataSource = self
        return view
    }()
    
    private lazy var news: [ModelViewController] = [ModelViewController(image: "image1", title: "ПСЖ - Реал Мадрид", discription: "«РЕАЛ» ПРОИГРАЛ «ПСЖ» В ПЕРВОМ МАТЧЕ 1/8 ФИНАЛА ЛИГИ ЧЕМПИОНОВ, ЛИОНЕЛЬ МЕССИ НЕ ЗАБИЛ ПЕНАЛЬТИ«Париж» имел кучу шансов."), ModelViewController(image: "image3", title: "Игра Престолов", discription: "Напоминая скоро на экран выйдет сиквел Игры Престолов ...Дом Дракона..."), ModelViewController(image: "image1", title:"ПСЖ - Реал Мадрид" , discription:"")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(newsTableView)
        newsTableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        }
        
    }
    
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
             return 150
         }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableViewNewsVC()
        cell.fill(model: news[indexPath.row])
        return cell
    }
    
    
}
