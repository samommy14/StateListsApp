import UIKit

class StatesTableViewController: UITableViewController {

    var states = [State]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadStateData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return states.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StatesCell", for: indexPath) as! StateTableViewCell
        
        //Cell 
        cell.stateNameLabel?.text = "\(states[indexPath.row].name)"
        cell.stateFlagImage?.image = states[indexPath.row].flag
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let row = tableView.indexPathForSelectedRow?.row
        let stateDetailViewController = segue.destination as! StateDetailViewController
        
        let selectedState = states[row!]
            
        stateDetailViewController.name = selectedState.name
        stateDetailViewController.flag = selectedState.flag
        stateDetailViewController.abbreviation = selectedState.abbreviation
        stateDetailViewController.seal = selectedState.seal
        stateDetailViewController.captial = selectedState.capital
        stateDetailViewController.largestCity = selectedState.largestCity
        stateDetailViewController.population = selectedState.population
        stateDetailViewController.area = selectedState.area
        
    }
    
    func loadStateData() {
        
        let state1 = State(name: "California", flag: UIImage(named: "California"), abbreviation: "CA", seal: UIImage(named: "CaliforniaSeal"), capital: "Sacramento", largestCity: "Los Angeles", population: 39.41, area: 163696)
        
        let state2 = State(name: "Nevada", flag: UIImage(named: "Nevada"), abbreviation: "NV", seal: UIImage(named: "NevadaSeal"), capital: "Carson City", largestCity: "Las Vegas", population: 3.08, area: 110567)
        
        let state3 = State(name: "Texas", flag: UIImage(named: "Texas"), abbreviation: "TX", seal: UIImage(named: "TexasSeal"), capital: "Austin", largestCity: "Houston", population: 29, area: 110567)
        
        let state4 = State(name: "Montana", flag: UIImage(named: "Montana"), abbreviation: "MT", seal: UIImage(named: "MontanaSeal"), capital: "Helena", largestCity: "Billings", population: 1.07, area: 147040)
        
        let state5 = State(name: "Florida", flag: UIImage(named: "Florida"), abbreviation: "FL", seal: UIImage(named: "FloridaSeal"), capital: "Tallahassee", largestCity: "Jacksonville", population: 21.5, area: 65755)
        
        let state6 = State(name: "Idaho", flag: UIImage(named: "Idaho"), abbreviation: "ID", seal: UIImage(named: "IdahoSeal"), capital: "Boise", largestCity: "Boise", population: 1.87, area: 8642)
        

        states += [state1, state2, state3, state4, state5, state6]
    }
    
}



