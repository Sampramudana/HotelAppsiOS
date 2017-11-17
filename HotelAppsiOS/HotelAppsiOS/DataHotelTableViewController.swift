//
//  DataHotelTableViewController.swift
//  HotelAppsiOS
//
//  Created by Becak Holic on 11/17/17.
//  Copyright © 2017 Sam Pramudana. All rights reserved.
//

import UIKit

class DataHotelTableViewController: UITableViewController {
    
    var datas : [DataHotel] = []
    
    var hotelNameSelected:String?
    var alamatSelected:String?
    var rateSelected:String?
    var fasilitasSelected:String?
    var lokasiTerdekatSelected:String?
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return datas.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellData", for: indexPath) as! DataTableViewCell

        // Configure the cell...
        
        let dataTask = datas[indexPath.row]
        if let myDataTask = dataTask.nama_hotel {
            cell.labelNamaHotel.text = myDataTask
        }
        if let myDataTask1 = dataTask.alamat {
            cell.labelAlamat.text = myDataTask1
        }
        if let myDataTask2 = dataTask.rate {
            cell.labelRate.text = myDataTask2
        }

        return cell
    }
    override func viewWillAppear(_ animated: Bool) {
        
        getData()
        tableView.reloadData()
    }
    func getData() {
        
        do{
            datas = try context.fetch(DataHotel.fetchRequest())
        }
        catch{
            print("Fetching Failed")
        }
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            let task = datas[indexPath.row]
            context.delete(task)
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            
            do{
                datas = try context.fetch(DataHotel.fetchRequest())
            }
            catch{
                print("Fetching Failed")
            }
        }
        tableView.reloadData()
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("Row \(indexPath.row)selected")
        
        let dataTask = datas[indexPath.row]
        hotelNameSelected = dataTask.nama_hotel
        alamatSelected = dataTask.alamat
        rateSelected = dataTask.rate
        fasilitasSelected = dataTask.fasilitas
        lokasiTerdekatSelected = dataTask.lokasi_terdekat
        
        performSegue(withIdentifier: "passData", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "passData"{
            
            let kirimData = segue.destination as! IsiViewController
            kirimData.passHotelName = hotelNameSelected
            kirimData.passAlamat = alamatSelected
            kirimData.passRate = rateSelected
            kirimData.passFasilitas = fasilitasSelected
            kirimData.passLokasiTerdekat = lokasiTerdekatSelected
        }
    }
}
