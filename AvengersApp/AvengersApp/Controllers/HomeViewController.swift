//
//  HomeViewController.swift
//  AvengersApp
//
//  Created by Alejandro Marcelo Ayerdi on 12/12/20.
//

import UIKit


class HomeViewController: UIViewController {
    
    private let characterRepo = CharacterRepository()
    private var heroes: [Superheroe] = []
    
    @IBOutlet var tableView: UITableView?


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
        
    
        
        tableView?.dataSource = self
        tableView?.delegate = self
        
        tabBarController?.title = "Superheroes"
      

       
        

        
    }
    
    
    
}


extension HomeViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterCellView", for: indexPath) as? CharacterCellView
        

        
        if let hero = hero(at: indexPath) {
            cell?.configureView(character: hero)
        }
        
        
        return cell ?? UITableViewCell()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? DetailViewController,
              let data = sender as? Superheroe else {
            return
        }
        
        destination.character = data
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let hero = hero(at:indexPath){
            performSegue(withIdentifier: "SEGUE_FROM_TABLE_TO_DETAIL", sender: hero)
        }
    }
    
    
    private func loadData() {
        heroes = characterRepo.superheroesSample
    }
    
    
    func hero (at indexPath: IndexPath) -> Superheroe?{
        if (indexPath.row < heroes.count){
            return heroes[indexPath.row]
        } else {
            return nil
        }
        
    }
    
}
