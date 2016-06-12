//
//  ViewController.swift
//  ProyectoMac
//
//  Created by Karina Gonzalez Moreno on 04/03/16.
//  Copyright © 2016 Karina Gonzalez Moreno. All rights reserved.
//


import UIKit
import AVFoundation


var Puntaje = 0

var PuntajeJuego = 0
var PuntajeFrase = 0
var PuntajeMejor = 0
var PuntajeUltimo = 0

var PuntajeJuegoImagen = 0
var PuntajeMejorImagen = 0
var PuntajeUltimoImagen  = 0

var PuntajeMejorFrase = 0
var PuntajeUltimoFrase  = 0




public class ViewController: UIViewController {
    
    var ButtonAudioURL = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("ButtonAudio", ofType: "mp3")!)
    var ButtonAudioPlayer = AVAudioPlayer()

    
    @IBOutlet weak var etPuntaje: UILabel!
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        ButtonAudioPlayer = try! AVAudioPlayer(contentsOfURL: ButtonAudioURL)
    }
    

    
    func someHandler(alert: UIAlertAction!) {
        // Do something...
        exit(0)
    }
    
    
    
    @IBAction func Jugar(sender: AnyObject) {
        ButtonAudioPlayer.play()

    }
    @IBAction func Instrucciones(sender: AnyObject) {
        ButtonAudioPlayer.play()

    }
    @IBAction func Record(sender: AnyObject) {
        ButtonAudioPlayer.play()
    }
    
    
    @IBAction func botonSalir(sender: AnyObject) {
        
        ButtonAudioPlayer.play()

        //exit(0)
        // crear la alerta
        let alert = UIAlertController(title: "Espere...", message: "¿Está seguro que desea salir?", preferredStyle: UIAlertControllerStyle.Alert)
        
        // add the actions (buttons)
        
        alert.addAction(UIAlertAction(title: "SI", style: UIAlertActionStyle.Default, handler: someHandler))

        alert.addAction(UIAlertAction(title: "NO", style: UIAlertActionStyle.Cancel, handler: nil))
        
        // show the alert
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
    
    
    
}

