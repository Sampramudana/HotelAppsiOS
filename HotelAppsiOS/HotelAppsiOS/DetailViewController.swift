//
//  DetailViewController.swift
//  HotelAppsiOS
//
//  Created by Becak Holic on 11/17/17.
//  Copyright © 2017 Sam Pramudana. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var etLokasiTerdekat: UITextField!
    @IBOutlet weak var etFasilitas: UITextField!
    @IBOutlet weak var etRate: UITextField!
    @IBOutlet weak var etAlamat: UITextField!
    @IBOutlet weak var etNamaHotel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnSaveTask(_ sender: Any) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let nameHotel = DataHotel(context : context)
        
        nameHotel.nama_hotel = etNamaHotel.text
        nameHotel.alamat = etAlamat.text
        nameHotel.rate = etRate.text
        nameHotel.fasilitas = etFasilitas.text
        nameHotel.lokasi_terdekat = etLokasiTerdekat.text
        
        if etNamaHotel.text == "" {
            let alert = UIAlertController(title: "Warning", message: "Task Cannot Be Empty", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else if etAlamat.text == "" {
            let alert = UIAlertController(title: "Warning", message: "Task Cannot Be Empty", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else if etRate.text == "" {
            let alert = UIAlertController(title: "Warning", message: "Task Cannot Be Empty", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else if etFasilitas.text == "" {
            let alert = UIAlertController(title: "Warning", message: "Task Cannot Be Empty", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else if etLokasiTerdekat.text == "" {
            let alert = UIAlertController(title: "Warning", message: "Task Cannot Be Empty", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else if (etNamaHotel.text == "")&&(etAlamat.text == "")&&(etRate.text == "")&&(etFasilitas.text == "")&&(etLokasiTerdekat.text == "") {
            let alert = UIAlertController(title: "Warning", message: "This Is Required", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else{
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            _ = navigationController?.popViewController(animated: true)
            
            print("Data berhasil disimpan")
        }
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
