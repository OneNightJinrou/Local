//
//  RoleSettingVC.swift
//  APP
//
//  Created by 西尾俊輝 on 2018/06/25.
//  Copyright © 2018年 myname. All rights reserved.
//

import UIKit

class RoleSettingVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(GlobalVar.shared.roleList)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /// セルの個数を指定するデリゲートメソッド（必須）
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return GlobalVar.shared.roleList.count
    }
    
    /// セルに値を設定するデータソースメソッド（必須）
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得
        let cell = tableView.dequeueReusableCell(withIdentifier: "RoleCell") as! RoleSettingCustomTableViewCell
        
        // セルに値を設定
        cell.roleImageView.image = UIImage(named: GlobalVar.shared.roleList[indexPath.row].roleImageName)
        cell.roleNameLabel.text = GlobalVar.shared.roleList[indexPath.row].roleName
        
        return cell
    }
    
    ///セルをクリックされた時のメソッド
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell：\(indexPath.row) roleName：\(GlobalVar.shared.roleList[indexPath.row].roleName) imageName: \(GlobalVar.shared.roleList[indexPath.row].roleImageName)")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

class RoleSettingCustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var roleImageView: UIImageView!
    @IBOutlet weak var roleNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
