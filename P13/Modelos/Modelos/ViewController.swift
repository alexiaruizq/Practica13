//
//  ViewController.swift
//  Modelos
//
//  Created by Alumno on 10/4/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var restaurantes : [Restaurant] = []
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaRestaurante") as! CeldaRestaurantController
        celda.lblNombre.text = restaurantes[indexPath.row].nombre
        
        
        return celda
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        restaurantes.append(Restaurant(nombre: "La Hamburguesa Feliz", direccion: "Calle Uno #1323", horario: "De 12 pm a 10 pm "))
        restaurantes.append(Restaurant(nombre: "Carnitas el Puerco", direccion: "Calle Dos #1213", horario: "De 10 am a 10 pm "))
        restaurantes.append(Restaurant(nombre: "El Pollo Loco", direccion: "Calle Tres #7813", horario: "De 10 am a 3 pm "))
        restaurantes.append(Restaurant(nombre: "La Vaca Mu", direccion: "Calle Cuatro #4956", horario: "De 5 am a 3 pm "))
        restaurantes.append(Restaurant(nombre: "Ratatouille", direccion: "Calle Cinco #5796", horario: "De 9 am a 9 pm "))
        
        
    }


}

