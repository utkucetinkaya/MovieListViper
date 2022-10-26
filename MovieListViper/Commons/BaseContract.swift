//
//  BaseContract.swift
//  MovieListViper
//
//  Created by Utku Çetinkaya on 22.10.2022.
//

import Foundation
import UIKit

// MARK: - View
@objc protocol IBaseView: AnyObject {
    func showProgressHUD()
    func hideProgressHUD()
}

extension UIViewController: IBaseView {

    func showProgressHUD() {
//        LoadingManager.shared.showLoading()
    }

    func hideProgressHUD() {
//        LoadingManager.shared.hideLoading()
    }

}

// MARK: - Presenter
@objc protocol IBasePresenter: AnyObject {
    @objc optional func viewDidLoad()
    @objc optional func viewWillAppear()
    @objc optional func viewDidAppear()
}

protocol IBaseInteractorToPresenter: AnyObject {
    func wsErrorOccurred(message: String)
}

// MARK: - Interactor
protocol IBaseInteractor: AnyObject {}

protocol IBaseAdapter: AnyObject {
    func isLastItem(_ index: Int) -> Bool
    func itemCount() -> Int
}

extension IBaseAdapter {
    func isLastItem(_ index: Int) -> Bool {
        itemCount() == index
    }
}
