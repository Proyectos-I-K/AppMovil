//
//  Estadistica.swift
//  ProyectoMac
//
//  Created by Karina Gonzalez Moreno on 17/03/16.
//  Copyright © 2016 Karina Gonzalez Moreno. All rights reserved.
//



import UIKit
import AVFoundation



class Estadistica: UIViewController {
    var PuntajeAlto = 0
    
    var ButtonAudioURL = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("ButtonAudio", ofType: "mp3")!)
    var ButtonAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AltaPuntuacion.text = "Mejor puntuación: \(PuntajeMejor)"
        Estadistica.text = "Última puntuación: \(PuntajeUltimo)"
        
        AltaPuntuacionImagen.text = "Mejor puntuación: \(PuntajeMejorImagen)"
        EstadisticaImagen.text = "Última puntuación: \(PuntajeUltimoImagen)"
        
        AltaPuntuacionFrase.text = "Mejor puntuación: \(PuntajeMejorFrase)"
        EstadisticaFrase.text = "Última puntuación: \(PuntajeUltimoFrase)"
        
        
        ButtonAudioPlayer = try! AVAudioPlayer(contentsOfURL: ButtonAudioURL)
    }

    @IBAction func Menu(sender: AnyObject) {
        ButtonAudioPlayer.play()

    }
    
    @IBOutlet weak var AltaPuntuacion: UILabel!
    @IBOutlet weak var Estadistica: UILabel!

    
    @IBOutlet weak var AltaPuntuacionImagen: UILabel!
    @IBOutlet weak var EstadisticaImagen: UILabel!
    
 
    @IBOutlet weak var AltaPuntuacionFrase: UILabel!
    @IBOutlet weak var EstadisticaFrase: UILabel!
    
    
}
