//
//  Imagenes.swift
//  ProyectoMac
//
//  Created by Karina Gonzalez Moreno on 15/03/16.
//  Copyright © 2016 Karina Gonzalez Moreno. All rights reserved.
//

import UIKit
import AVFoundation


class Imagenes: UIViewController {
    var Opciones:[String] = [String]()
    
    
    var ImagenesIngles = [["pintar.jpg","paint"], ["nadar.gif","swim"], ["llorar.jpg","cry"], ["leer.jpg","read"], ["jugar.jpg","play"],["escribir.gif","write"], ["dormir.gif", "sleep"], ["contar.gif", "count"], ["cocinar.gif", "cook"], ["cantar.gif", "sing"], ["bailar.gif","dance"], ["aplaudir.jpg", "clap"]]
    


    var num = 0
    
    var ButtonAudioURL = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Correcto", ofType: "mp3")!)
    var ButtonAudioURL2 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Incorrecto", ofType: "mp3")!)
    var ButtonAudioPlayer = AVAudioPlayer()
    var ButtonAudioPlayer2 = AVAudioPlayer()

    
    @IBOutlet weak var Imagen: UIImageView!
    @IBOutlet weak var EOp1: UIButton!
    @IBOutlet weak var EOp2: UIButton!
    @IBOutlet weak var EOp3: UIButton!
    @IBOutlet weak var EOp4: UIButton!
    @IBOutlet weak var Mensaje: UILabel!
    
    @IBOutlet weak var Puntos: UILabel!
    
 
    @IBOutlet weak var Regresar: UIButton!
    
    @IBAction func Opcion1(sender: AnyObject) {
        if (EOp1.titleLabel!.text! == ImagenesIngles[num][1] ){
            Mensaje.text = "Tu respuesta es: Correcta "
            IncrementarPuntaje()
            CalcularImagen()
            ButtonAudioPlayer.play()
        }else{
            Mensaje.text = "Incorrecto, su puntaje final es: \(PuntajeJuegoImagen)"
            ActualizarPuntaje()
            Desactivar()
            MensajeUsuario(ImagenesIngles[num][1])
            ButtonAudioPlayer2.play()

            
        }

    }
    
    @IBAction func Opcion2(sender: AnyObject) {
        if (EOp2.titleLabel!.text! == ImagenesIngles[num][1] ){
            Mensaje.text = "Tu respuesta es: Correcta "
            IncrementarPuntaje()
            CalcularImagen()
            ButtonAudioPlayer.play()

        }else{
            Mensaje.text = "Incorrecto, su puntaje final es: \(PuntajeJuegoImagen)"
            ActualizarPuntaje()
            Desactivar()
            MensajeUsuario(ImagenesIngles[num][1])
            ButtonAudioPlayer2.play()

        }
    }
    
    
    @IBAction func Opcion3(sender: AnyObject) {
        if (EOp3.titleLabel!.text! == ImagenesIngles[num][1] ){
            Mensaje.text = "Tu respuesta es: Correcta "
            IncrementarPuntaje()
            CalcularImagen()
            ButtonAudioPlayer.play()
        }else{
            Mensaje.text = "Incorrecto, su puntaje final es: \(PuntajeJuegoImagen)"
            ActualizarPuntaje()
            Desactivar()
            MensajeUsuario(ImagenesIngles[num][1])
            ButtonAudioPlayer2.play()

        }
    }
    
    
    @IBAction func Opcion4(sender: AnyObject) {
        if (EOp4.titleLabel!.text! == ImagenesIngles[num][1] ){
            Mensaje.text = "Tu respuesta es: Correcta "
            IncrementarPuntaje()
            CalcularImagen()
            ButtonAudioPlayer.play()

        }else{
            Mensaje.text = "Incorrecto, su puntaje final es: \(PuntajeJuegoImagen)"
            ActualizarPuntaje()
            Desactivar()
            MensajeUsuario(ImagenesIngles[num][1])
            ButtonAudioPlayer2.play()


        }
    }
    
    
    override func viewDidLoad() {
        Opciones = ["soon", "pencil", "sky", "newspaper", "man", "computer","box","best","bowl","more","music","power","actor","table","car","guitar","feel","firework","can", "sleep","now","eleven","head","arm","forever","always","stop","hello","yellow","animal","leopard","dream","time","hate","really","come","purple","banana","on", "wall","walk","spoke","virtual","follow","want","ten","mine","you","if", "do", "not", "what", "told", "when", "it", "will", "be", "punished", "understand", "our", "hopes", "and", "expect"]
        
        
        super.viewDidLoad()
        Regresar.enabled = false
        Regresar.hidden = true
        CalcularImagen()
        Puntos.text = "Puntaje : 0"
        PuntajeJuegoImagen = 0
        
        
        ButtonAudioPlayer = try! AVAudioPlayer(contentsOfURL: ButtonAudioURL)
        ButtonAudioPlayer2 = try! AVAudioPlayer(contentsOfURL: ButtonAudioURL2)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func CalcularImagen(){
        num = Int(arc4random_uniform(10))
        let posicion = Int(arc4random_uniform(4))
        Imagen.image = UIImage(named: ImagenesIngles[num][0])

        switch (posicion){
        case 1:
            EOp1.setTitle(ImagenesIngles[num][1],forState: UIControlState.Normal)
            EOp2.setTitle(Opciones[1],forState: UIControlState.Normal)
            EOp3.setTitle(Opciones[2],forState: UIControlState.Normal)
            EOp4.setTitle(Opciones[3],forState: UIControlState.Normal)
            break;
        case 2:
            EOp4.setTitle(ImagenesIngles[num][1],forState: UIControlState.Normal)
            EOp3.setTitle(Opciones[1],forState: UIControlState.Normal)
            EOp2.setTitle(Opciones[2],forState: UIControlState.Normal)
            EOp1.setTitle(Opciones[3],forState: UIControlState.Normal)
            break;
        case 3:
            EOp2.setTitle(ImagenesIngles[num][1],forState: UIControlState.Normal)
            EOp3.setTitle(Opciones[1],forState: UIControlState.Normal)
            EOp4.setTitle(Opciones[2],forState: UIControlState.Normal)
            EOp1.setTitle(Opciones[3],forState: UIControlState.Normal)
            break;
        default:
            EOp3.setTitle(ImagenesIngles[num][1],forState: UIControlState.Normal)
            EOp4.setTitle(Opciones[1],forState: UIControlState.Normal)
            EOp1.setTitle(Opciones[2],forState: UIControlState.Normal)
            EOp2.setTitle(Opciones[3],forState: UIControlState.Normal)
            break;
        }
      
    }
    
    func MensajeUsuario(PalabraCorrecta: String) {
        
        
        
        // crear la alerta
        let alert = UIAlertController(title: "Lo sentimos", message: "Ha perdido. La respuesta es: " +  PalabraCorrecta, preferredStyle: UIAlertControllerStyle.Alert)
        
        
        alert.addAction(UIAlertAction(title: "ACEPTAR", style: UIAlertActionStyle.Default, handler: nil))
        
        // show the alert
        self.presentViewController(alert, animated: true, completion: nil)
        
        Regresar.hidden = false
        Regresar.enabled = true
        
        
    }
    
    func Desactivar() {
        EOp1.enabled = false
        EOp2.enabled = false
        EOp3.enabled = false
        EOp4.enabled = false
    }
    func IncrementarPuntaje(){
        PuntajeJuegoImagen = PuntajeJuegoImagen+5
        print(PuntajeJuegoImagen)
        Puntos.text = "Puntaje: \(PuntajeJuegoImagen)"
    }
    
    func ActualizarPuntaje(){
        PuntajeUltimoImagen = PuntajeJuegoImagen
        if (PuntajeMejorImagen<PuntajeJuegoImagen){
            PuntajeMejorImagen = PuntajeJuegoImagen
        }
    }


}
