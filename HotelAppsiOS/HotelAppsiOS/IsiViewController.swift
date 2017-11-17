//
//  IsiViewController.swift
//  HotelAppsiOS
//
//  Created by Becak Holic on 11/17/17.
//  Copyright © 2017 Sam Pramudana. All rights reserved.
//

import UIKit

class IsiViewController: UIViewController {

    @IBOutlet weak var lokasiTerdekat: UILabel!
    @IBOutlet weak var fasilitas: UILabel!
    @IBOutlet weak var rate: UILabel!
    @IBOutlet weak var alamat: UILabel!
    @IBOutlet weak var hotelName: UILabel!
    
    var passHotelName:String?
    var passAlamat:String?
    var passRate:String?
    var passFasilitas:String?
    var passLokasiTerdekat:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hotelName.text = "" + passHotelName!
        alamat.text = "" + passAlamat!
        fasilitas.text = "fasilitas = " + passFasilitas!
        lokasiTerdekat.text = "Lokasi Terdekat = " + passLokasiTerdekat!
        rate.text = passRate! + " /10 Very Good"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
