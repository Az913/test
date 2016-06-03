import UIKit

// TableCell用ViewController
class TableHelperCtrl:ZtemplateCtrl, UITableViewDelegate, UITableViewDataSource{

    // テーブル表示データ（アダプター）
    var sections = [TableViewSection]()
    
    // データ追加（セクション単位）
    func addSection(section:TableViewSection){
        sections.append(section)
    }
    

    // Cellを生成
    func createCell(section:Int, index:Int, cell:UITableViewCell)->UITableViewCell{

        let row = sections[section].item(index)

        cell.textLabel!.text = String(index) + "番目:" + String(row)
        
        return cell
    }

    // 空Cellを生成
    func createNullCell(cell:UITableViewCell)->UITableViewCell{
        return cell
    }
    
    func cellHight(section:Int, index:Int)->CGFloat{
        return 30
    }
    
    func action_CellTap(section:Int, index:Int){
        
    }
    
    func actioin_AccessoryTap(section:Int, index:Int){
        
    }

    ////////UITableViewDataSource////////////////////////////////////////////
    //セクション中のセル数
    func tableView(tableView: UITableView,
                              numberOfRowsInSection section: Int) -> Int{
        if (sections.count == 0){
            return 0
        }
        
        let _section = sections[section]
        let count = _section.Count
        return count
    }
    
    //セルの内容
    func tableView(tableView: UITableView,
                              cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) 

        let section = sections[indexPath.section]
        
        let row = section.item(indexPath.item)
        
        var result:UITableViewCell? = nil

        let sectionIndex = indexPath.section
        let index = indexPath.item
        
        if (row == nil || sections.count <= sectionIndex || sections[sectionIndex].Count <= index){
            result = createNullCell(cell)
        } else {
            result = createCell(sectionIndex, index:index, cell:cell)
        }

        return result!
    }
    
    //セクション数
    func numberOfSectionsInTableView(tableView: UITableView) -> Int{
        let cnt = sections.count
        return cnt
    }


    //セクションヘッダー
    func tableView(tableView: UITableView,
                              titleForHeaderInSection section: Int) -> String?{
        if (sections.count == 0){
            return nil
        }
        
        let section = sections[section]
        return section.HeaderText
    }
    
    //セクションフッター
    func tableView(tableView: UITableView,
                              titleForFooterInSection section: Int) -> String?{
        if (sections.count == 0){
            return nil
        }
        
        let section = sections[section]
        return section.FooterText
    }
    
    ////////UITableViewDelegate/////////////////////////////////////////////
    //セルの高さ
    func tableView(tableView: UITableView,
                   heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{

        return cellHight(indexPath.section, index: indexPath.item)
    }
    
    //セクションヘッダーの高さ
    func tableView(tableView: UITableView,
                   heightForHeaderInSection section: Int) -> CGFloat{
        if (sections.count == 0){
            return CGFloat(0)
        }
        
        let section = sections[section]
        return section.HeaderHight
    }
    
    //セクションフッターの高さ
    func tableView(tableView: UITableView,
                   heightForFooterInSection section: Int) -> CGFloat{
        if (sections.count == 0){
            return CGFloat(0)
        }
        
        let section = sections[section]
        return section.FooterHight
    }
    
    
    //セルタップイベント
    func tableView(tableView: UITableView,
                   didSelectRowAtIndexPath indexPath: NSIndexPath){

        action_CellTap(indexPath.section, index:indexPath.item)
    }
    
    
    
    //アクセサリボタンタップイベント
    func tableView(tableView: UITableView,
                   accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath){

        actioin_AccessoryTap(indexPath.section, index:indexPath.item)

    }
    
    
    
}