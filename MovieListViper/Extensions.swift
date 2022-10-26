//
//  Extensions.swift
//  MovieListViper
//
//  Created by Utku Çetinkaya on 22.10.2022.
//

import Foundation
import UIKit

extension UIStoryboard {
    static func loadViewController<T>() -> T where T: StoryboardLoadable, T: UIViewController {
        return UIStoryboard(name: T.storyboardName(),
                            bundle: nil).instantiateViewController(withIdentifier: T.storyboardIdentifier()) as! T
        // swiftlint:disable:previous force_cast
    }
}

protocol StoryboardLoadable {
    static func storyboardName() -> String
    static func storyboardIdentifier() -> String
}

extension StoryboardLoadable where Self: UIViewController {
    static func storyboardName() -> String {
        return String(describing: Self.self).replacingOccurrences(of: "ViewController", with: "")
    }

    static func storyboardIdentifier() -> String {
        return String(describing: Self.self).replacingOccurrences(of: "ViewController", with: "")
    }
}

extension StoryboardLoadable where Self: UITableViewController {
    static func storyboardName() -> String {
        return String(describing: Self.self).replacingOccurrences(of: "TableViewController", with: "")
    }

    static func storyboardIdentifier() -> String {
        return String(describing: Self.self).replacingOccurrences(of: "TableViewController", with: "")
    }
}
