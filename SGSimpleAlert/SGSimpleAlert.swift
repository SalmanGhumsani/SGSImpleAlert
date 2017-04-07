//
//  SGSimpleAlert.swift
//  SGSimpleAlert
//
//  Created by AppsInvo  on 07/04/17.
//  Copyright © 2017 AppsInvo . All rights reserved.
//

import UIKit
var viewBackground:UIView?
extension UIViewController
{
    
    func showDescriptionInAlert(desc:String,title:String,animationDuration:Double,descFont:UIFont) {
        viewBackground?.removeFromSuperview()
        viewBackground = UIView(frame: UIScreen.mainScreen().bounds)
        let viewAlertContainer = UIView()
        let txtViewDesc = UITextView()
        viewAlertContainer.backgroundColor = UIColor.whiteColor()
        viewBackground!.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.5)
        txtViewDesc.backgroundColor = UIColor.whiteColor()
        viewBackground!.alpha = 0.0
        txtViewDesc.text = desc
        txtViewDesc.editable = false
        txtViewDesc.font = descFont
        viewAlertContainer.makeRoundCorner(10)
        txtViewDesc.textAlignment = .Center
        var txtViewHeight = CGRect(x: 0, y: 30, width: UIScreen.mainScreen().bounds.width-80, height: 100)
        let height = heightForLabel(desc, width: UIScreen.mainScreen().bounds.width-80, font: descFont)
        
        if height > 80 && height < 300 {
            txtViewHeight.size.height = height+20
        }
        let lblTitle = UILabel(frame: CGRect(x: 0, y: 8, width: UIScreen.mainScreen().bounds.width-80, height: 20))
        lblTitle.text = title
        lblTitle.textColor = UIColor.blackColor()
        lblTitle.font = UIFont.systemFontOfSize(18)
        lblTitle.backgroundColor = UIColor.whiteColor()
        lblTitle.textAlignment = .Center
        txtViewDesc.frame = txtViewHeight
        viewAlertContainer.frame = CGRect(x: 40, y: 100, width: UIScreen.mainScreen().bounds.width-80, height: txtViewHeight.size.height+30)
        viewAlertContainer.center = viewBackground!.center
        viewAlertContainer.addSubview(lblTitle)
        viewAlertContainer.addSubview(txtViewDesc)
        viewBackground!.addSubview(viewAlertContainer)
        self.view.addSubview(viewBackground!)
        
        UIView.animateWithDuration(animationDuration) {
            viewBackground!.alpha = 1.0
        }
    }
    
    func hideDescriptionAlert(animationDuration:Double) {
        UIView.animateWithDuration(animationDuration, animations: {
            viewBackground?.alpha = 0.0
        }) { (compelete) in
            if compelete {
                viewBackground?.removeFromSuperview()
            }
        }
    }

}

extension UIView {
    func makeRoundCorner(radius:CGFloat) {
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
}

func heightForLabel(text:String,width:CGFloat,font:UIFont) -> CGFloat {
    let label:UILabel = UILabel(frame: CGRectMake(0, 0, width, CGFloat.max))
    label.numberOfLines = 0
    label.lineBreakMode = NSLineBreakMode.ByWordWrapping
    label.font = font
    label.text = text
    label.sizeToFit()
    return label.frame.height
}


