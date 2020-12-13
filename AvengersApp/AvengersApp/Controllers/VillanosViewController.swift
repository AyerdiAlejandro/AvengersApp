//
//  VillanosViewController.swift
//  AvengersApp
//
//  Created by Alejandro Marcelo Ayerdi on 12/12/20.
//

import UIKit

class VillanosViewController: UIViewController{
    
    private let characterRepo = CharacterRepository()
    private var villanos: [Villano] = []
    
    @IBOutlet var tableView: UITableView?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
        
    
        
        tableView?.dataSource = self
        tableView?.delegate = self
        
        tabBarController?.title = "Villanos"


       
        

        
    }
    
    
    

    
    
    private func loadData() {
        
        villanos = characterRepo.villanosSample
    }
    
}



extension VillanosViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return villanos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterCellView", for: indexPath) as? CharacterCellView
        
        if let villano = villano(at: indexPath) {
            cell?.configureView(character: villano)
        }
        
        return cell ?? UITableViewCell()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? DetailViewController,
              let data = sender as? Villano else {
            return
        }
        
        destination.character = data
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let villano = villano(at:indexPath){
            performSegue(withIdentifier: "SEGUE_FROM_TABLE_TO_DETAIL", sender: villano)
        }
    }
    
    
    func villano (at indexPath: IndexPath) -> Villano?{
        if (indexPath.row < villanos.count){
            return villanos[indexPath.row]
        } else {
            return nil
        }
        
    }
    
    
    
}
