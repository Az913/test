import UIKit

class TimelineHome2:NavTableHelperCtrl{
    @IBOutlet weak var table: UITableView!
    
    override func initCtrl(){
        clearTable()
        loadTable()
        
        self.title = "Home"
        
        self.addPlusButton(#selector(action_GoNew))
    }
    
    override func action_CellTap(section: Int, index: Int) {
        action_GoDetail()
    }
    
    func action_GoDetail(){
        navNext(TimelineDetail())
    }
    
    func action_GoNew(){
        navNext(TimelineNew())
    }
    
    func action_GoApple(){
        navNext(AppleView())
    }
    
    func clearTable(){
    }
    
    func loadTable(){
        table.registerClass(TimelineCell.self, forCellReuseIdentifier: "Cell")
        
        let section = TableViewSection()
        
        let datas = TimelineDao().latest()
        section.SetList(datas.all())
        section.SetHaader("ヘッダ", hight: CGFloat(30))
        
        addSection(section)
        
        table.reloadData()

    }
    
    //Cellを生成
    override func createCell(section:Int, index:Int, cell:UITableViewCell)->UITableViewCell{
        
        let newCell = cell as! TimelineCell
        newCell.setBodyText(String(index) + "番目:" + String(index))

        newCell.selector_Apple = #selector(self.action_GoApple)
        
        return newCell
    }
    
    //Cellを生成
    override func createNullCell(cell:UITableViewCell)->UITableViewCell{
        return cell
    }
    
    override func cellHight(section:Int, index:Int)->CGFloat{
        return 150
    }

}