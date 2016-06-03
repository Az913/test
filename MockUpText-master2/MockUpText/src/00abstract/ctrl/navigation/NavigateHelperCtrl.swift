import UIKit

class NavigateHelperCtrl:ZtemplateCtrl{
    
    func addPlusButton(selector:Selector){
        let plus = UIBarButtonItem(barButtonSystemItem:.Add, target:self, action:selector)
        self.navigationItem.rightBarButtonItem = plus
    }

    func addAlbumButton(selector:Selector){
        let album = UIBarButtonItem(barButtonSystemItem:.Action, target:self, action:selector)
        album.title = "Album"
        self.navigationItem.rightBarButtonItem = album
    }
    
    func navNext(vc:UIViewController){
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}