//
//  Juego2.swift
//  ProyectoMac
//
//  Created by Karina Gonzalez Moreno on 15/03/16.
//  Copyright © 2016 Karina Gonzalez Moreno. All rights reserved.
//

import UIKit

class Juego2: UIViewController {
    var Numero :Int?
    var num = 0
    var Opciones:[String] = [String]()
    
    var Nivel1:[[String]] = [["paint","pintar"],["swim","nadar"],["write","escribir"],["run","correr"],["play","jugar"],["cook","cocinar"],["sing","cantar"], ["clap","aplaudir"], ["read","leer"],["cry","llorar"]]
    var ImagenesIngles = [["pintar.jpg","paint"], ["nadar.gif","swim"], ["llorar.jpg","cry"], ["leer.jpg","read"], ["jugar.jpg","play"],["escribir.gif","write"], ["dormir.gif", "sleep"], ["contar.gif", "count"], ["cocinar.gif", "cook"], ["cantar.gif", "sing"], ["bailar.gif","dance"], ["aplaudir.jpg", "clap"]]
    

    
    @IBOutlet weak var Imagen: UIImageView!
    @IBOutlet weak var EOp1: UIButton!
    @IBOutlet weak var EOp2: UIButton!
    @IBOutlet weak var EOp3: UIButton!
    @IBOutlet weak var EOp4: UIButton!

    
    @IBAction func Opcion1(sender: AnyObject) {
    }
    
    @IBAction func Opcion2(sender: AnyObject) {
    }
    
    @IBAction func Opcion3(sender: AnyObject) {
    }
    
    @IBAction func Opcion4(sender: AnyObject) {
    }
    
    
    override func viewDidLoad() {
        /*Nivel1 = [["paint","pintar"],["swim","nadar"],["write","escribir"],["run","correr"],["play","jugar"],["cook","cocinar"],["sing","cantar"], ["clap","aplaudir"], ["read","leer"],["cry","llorar"]] */
        
        Opciones = ["soon", "pencil", "sky", "newspaper", "man", "computer","box","best","bowl","more","music","power","actor","table","car","guitar","feel","firework","can", "sleep","now","eleven","head","arm","forever","always","stop","hello","yellow","animal","leopard","dream","time","hate","really","come","purple","banana","on", "wall","walk","spoke","virtual","follow","want","ten","mine","you","if", "do", "not", "what", "told", "when", "it", "will", "be", "punished", "understand", "our", "hopes", "and", "expectations", "black", "holes", "revelations"]
        
        
        super.viewDidLoad()
        //Imagen.hidden = false
        
        CalcularImagen()
        //CalcularImagenIngles()
    }
    
    func CalcularImagen(){
        num = Int(arc4random_uniform(11))
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
        
        //ViewController.SetPuntaje(Me)
        
        //Menu.Puntaje = 10
        //Op1.text = Nivel1[num][1]
    }
 
    
}