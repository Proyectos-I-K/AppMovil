//
//  ElegirJuego.swift
//  ProyectoMac
//
//  Created by Karina Gonzalez Moreno on 11/04/16.
//  Copyright © 2016 Karina Gonzalez Moreno. All rights reserved.
//

import UIKit
import AVFoundation


class ElegirJuego: UIViewController {
    
    var ButtonAudioURL = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("ButtonAudio", ofType: "mp3")!)
    var ButtonAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()

        ButtonAudioPlayer = try! AVAudioPlayer(contentsOfURL: ButtonAudioURL)
    }

 
    @IBAction func Palabras(sender: AnyObject) {
        ButtonAudioPlayer.play()

    }
    @IBAction func Imagenes(sender: AnyObject) {
        ButtonAudioPlayer.play()

    }
    @IBAction func Frases(sender: AnyObject) {
        ButtonAudioPlayer.play()

    }

}
