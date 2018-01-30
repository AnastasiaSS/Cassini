//
//  CassiniViewController.swift
//  Cassini
//
//  Created by Анастасия Соколан on 14.01.18.
//  Copyright © 2018 Анастасия Соколан. All rights reserved.
//

import UIKit

class CassiniViewController: UIViewController, UISplitViewControllerDelegate {
    
    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
        if primaryViewController.contents == self {
            if let ivc = secondaryViewController.contents as? ImageViewController,
                ivc.imageURL == nil {
                return true
            }
        }
        return false
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        self.splitViewController?.delegate = self
    }
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let url = DemoURL.NASA[segue.identifier ?? ""],
            let imageVC = (segue.destination.contents as? ImageViewController) {
            imageVC.imageURL = url
            imageVC.title = (sender as? UIButton)?.currentTitle
        }
    }
}

extension UIViewController {
    var contents: UIViewController {
        if let navCon = self as? UINavigationController {
            return navCon.visibleViewController ?? self
        }
        else {
            return self
        }
    }
}
