//
//  SimplinitUIImageView.swift
//  Simplinit
//
//  Created by wanglei on 12/26/24.
//

import UIKit

extension UIImageView {
    
    func imageName(_ imgName: String) -> Self {
        self.image = BaseImage(named: imgName)?.image
        return self
    }
    
}
