//
//  ConactListingTableViewController.swift
//  CDP
//
//  Created by Deepak Singh07 on 12/27/22.
//

import UIKit
import RxCocoa
import RxSwift

class ConactListingTableViewController: UITableViewController, Storyboarded {

    var viewModel: ContactListingViewModel?
    let disposeBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        setupDataSource()
    }
    func setUpUI(){
        self.tableView.delegate = nil
        self.tableView.dataSource = nil
        tableView.rowHeight = 100
    }
    func setupDataSource(){
        viewModel?.contacts.asDriver(onErrorJustReturn: [])
            .drive(tableView.rx.items(cellIdentifier: "Cell", cellType: ContactTableViewCell.self)){ _, contact, cell in
                print("cell")
                cell.contact = contact
        }.disposed(by: disposeBag)
    }
}
