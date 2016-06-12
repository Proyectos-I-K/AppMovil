//
//  Juego.swift
//  ProyectoMac
//
//  Created by Karina Gonzalez Moreno on 04/03/16.
//  Copyright © 2016 Karina Gonzalez Moreno. All rights reserved.
//

import UIKit
import AVFoundation



class Juego: UIViewController {
    var Numero :Int?
    var Menu = ViewController()
    var num = 0
    var Opciones:[String] = [String]()
    var OpcionesEsp:[String] = [String]()
    
    var ButtonAudioURL = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Correcto", ofType: "mp3")!)
    var ButtonAudioURL2 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Incorrecto", ofType: "mp3")!)

    var ButtonAudioPlayer = AVAudioPlayer()
    var ButtonAudioPlayer2 = AVAudioPlayer()

    
    @IBOutlet weak var Regresar: UIButton!
    var Nivel1:[[String]] = [["H","Hidrógeno"],["He","Helio"],["Li","Litio"],["Be","Berilio"],["B","Boro"],["C","Carbono"],["N","Nitrógeno"], ["O","Oxígeno"], ["F","Flúor"],["Ne","Neón"], ["Na","Sodio"],["Mg","Magnesio"],["Al","Aluminio"],["Si","Silicio"],["P","Fósforo"],["S","Azufre"],["actor","actor"],["Cl","Cloro"],["Ar","Argón"], ["K","Potasio"], ["Ca","Calcio"], ["Sc","Escandio"], ["Ti","Titanio"], ["V","Vanadio"], ["Cr","Cromo"], ["Mn","Manganeso"], ["Fe","Hierro"], ["Co","Cobalto"], ["Ni","Niquel"], ["Cu","Cobre"], ["Zn","Cinc/Zinc"], ["Ga","Galio"], ["Ge","Germanio"], ["As","Arsénico"], ["Se","Selenio"], ["Br","Bromo"], ["Kr","Kriptón"], ["Rb","Rubidio"], ["Sr","Estroncio"], ["Y","Ytrio"], ["Zr","Circonio"], ["Nb","Niobio"], ["Mo","Molibdeno"], ["Tc","Tecnecio"], ["Ru","Rutenio"], ["Rh","Rodio"], ["Pd","Paladio"], ["Ag","Plata"], ["Cd","Cadmio"], ["In","Indio"], ["Sn","Estaño"], ["Sb","Antimonio"], ["Te","Teluro"], ["I","Yodo"], ["Xe","Xenón"], ["Cs","Cesio"], ["Ba","Bario"], ["La","Lantano"], ["Ce","Cerio"], ["Pr","Praseodimio"], ["Nd","Neodimio"], ["Pm","Prometio"], ["Sm","Samario"], ["Eu","Europio"], ["Gd","Gadolinio"], ["Tb","Terbio"], ["Dy","Disprosio"], ["Ho","Holmio"], ["Er","Erbio"], ["Tm","Tulio"], ["Yb","Yterbio"], ["Lu","Lutecio"], ["Hf","Hafnio"], ["Ta","Tántalo"], ["W","Wolframio"], ["Re","Renio"], ["Os","Osmio"], ["Ir","Iridio"], ["Pt","Platino"], ["Au","Oro"], ["Hg","Mercurio"], ["Tl","Talio"], ["Pb","Plomo"], ["Bi","Bismuto"], ["Po","Polonio"], ["At","Astato"], ["Rn","Radón"], ["Fr","Francio"], ["Ra","Radio"], ["Ac","Actinio"], ["Th","Torio"], ["Pa","Protactinio"], ["U","Uranio"], ["Np","Neptunio"], ["Pu","Plutonio"], ["Am","Americio"], ["Cm","Curio"], ["Bk","Berkelio"], ["Cf","Californio"], ["Es","Einsteinio"], ["Fm","Fermio"], ["Md","Mendelevio"], ["No","Nobelio"], ["Lr","Lawrencio"], ["Rf","Rutherfordio"], ["Db","Dubnio"], ["Sg","Seaborgio"], ["Bh","Bohrio"], ["Hs","Hassio"], ["Mt","Meitnerio"], ["Ds","Darmstadtio"], ["Rg","Roentgenio"], ["Cn","Copernicio"], ["Uut","Ununtrio"], ["Fl","Flerovio"], ["Uup","Ununpentio"], ["Lv","Livermorio"], ["Uus","Ununseptio"], ["Uuo","Ununoctio"]]
    

    @IBOutlet weak var PalabraIngles: UILabel!
    @IBOutlet weak var EOp1: UIButton!
    @IBOutlet weak var EOp2: UIButton!
    @IBOutlet weak var EOp3: UIButton!
    @IBOutlet weak var EOp4: UIButton!

    @IBOutlet weak var Mensaje: UILabel!    
    @IBOutlet weak var Puntos: UILabel!

    @IBAction func Opcion1(sender: AnyObject) {
        if (EOp1.titleLabel!.text! == Nivel1[num][1] ){
            Mensaje.text = "Tu respuesta es: Correcta"
            CalcularPalabraIngles()
            IncrementarPuntaje()
            ButtonAudioPlayer.play()
            
        }else{
            Mensaje.text = "Incorrecto, su puntaje final es: \(PuntajeJuego)"
            MensajeUsuario(Nivel1[num][1])
            Desactivar()
            ActualizarPuntaje()
            ButtonAudioPlayer2.play()

            
        }
        
    }
    
    @IBAction func Opcion2(sender: AnyObject) {
        if (EOp2.titleLabel!.text! == Nivel1[num][1] ){
            Mensaje.text = "Tu respuesta es: Correcta"
            CalcularPalabraIngles()
            IncrementarPuntaje()
            ButtonAudioPlayer.play()


            
        }else{
            Desactivar()
            Mensaje.text = "Incorrecto, su puntaje final es: \(PuntajeJuego)"
            MensajeUsuario(Nivel1[num][1])
            ActualizarPuntaje()
            ButtonAudioPlayer2.play()

        }
        
    }
    
    @IBAction func Opcion3(sender: AnyObject) {
        if (EOp3.titleLabel!.text! == Nivel1[num][1] ){
            Mensaje.text = "Tu respuesta es: Correcta"
            CalcularPalabraIngles()
            IncrementarPuntaje()
            ButtonAudioPlayer.play()


        }else{
            Desactivar()
            Mensaje.text = "Incorrecto, su puntaje final es: \(PuntajeJuego)"
            MensajeUsuario(Nivel1[num][1])
            ActualizarPuntaje()
            ButtonAudioPlayer2.play()

        }
    }
    
    @IBAction func Opcion4(sender: AnyObject) {
        if (EOp4.titleLabel!.text! == Nivel1[num][1] ){
            Mensaje.text = "Tu respuesta es: Correcta"
            CalcularPalabraIngles()
            IncrementarPuntaje()
            ButtonAudioPlayer.play()


        }else{
            Desactivar()
            Mensaje.text = "Incorrecto, su puntaje final es: \(PuntajeJuego)"
            MensajeUsuario(Nivel1[num][1])
            ActualizarPuntaje()
            ButtonAudioPlayer2.play()

       }
    }
    
    override func viewDidLoad() {


        OpcionesEsp = ["hola", "celular", "mesa", "libro", "saltar", "casa", "perro", "naranja", "comenzar", "pantalla", "raton", "agregar","pelon","redactar","clase","pizarron","silla","persona","mono","planta","vaso","pinche","perro","cachorro","mar","guardian","wey","mula","tres","corazon","pulmon","reir","feliz","triste","enojado","ya", "revista","correo","especialidad/importante","mayoria","hacer","fabricar","maquillaje","macho","centro comercial","hombre","dirigir/tratar","director/encargado","muchos","mapa","marzo","mercado","casar","casarse","partido","matematicas","materia/asunto","mayo","a lo mejor/quiza","","tacano/malo","carne","medicina","conocer/encontrarse con","encuentro/reunion","menu","metal","metro","mejicano","Mejico","microfono","microondas","medio","fuerza/poder","millas","leche","mente","mio","minuto","espejo","senorita","error","senorita","moderno","lunes","dinero","mes","luna","mas","manana","el mas","madre","motocicleta","montana","boca","mover","movimiento","pelicula","senora","mucho","musculo","museo","musica","musulman","deber/tener que","mi","mi mismo"]
        
        super.viewDidLoad()
        //
        Regresar.enabled = false
        Regresar.hidden = true
        
        CalcularPalabraIngles()
        PuntajeJuego = 0
        Puntos.text = "Puntaje: \(PuntajeJuego)"
        
        
        ButtonAudioPlayer = try! AVAudioPlayer(contentsOfURL: ButtonAudioURL)
        ButtonAudioPlayer2 = try! AVAudioPlayer(contentsOfURL: ButtonAudioURL2)


    }

    func CalcularPalabraIngles(){
        num = Int(arc4random_uniform(116))
        let posicion = Int(arc4random_uniform(4))
        PalabraIngles.text = Nivel1[num][0]
        
        let Opalabra = Int(arc4random_uniform(103))


        switch (posicion){
            case 1:
                EOp1.setTitle(Nivel1[num][1],forState: UIControlState.Normal)
                EOp2.setTitle(OpcionesEsp[Opalabra],forState: UIControlState.Normal)
                EOp3.setTitle(OpcionesEsp[Opalabra+1],forState: UIControlState.Normal)
                EOp4.setTitle(OpcionesEsp[Opalabra+2],forState: UIControlState.Normal)
                break;
            case 2:
                EOp4.setTitle(Nivel1[num][1],forState: UIControlState.Normal)
                EOp3.setTitle(OpcionesEsp[Opalabra],forState: UIControlState.Normal)
                EOp2.setTitle(OpcionesEsp[Opalabra+1],forState: UIControlState.Normal)
                EOp1.setTitle(OpcionesEsp[Opalabra+2],forState: UIControlState.Normal)
                break;
            case 3:
                EOp2.setTitle(Nivel1[num][1],forState: UIControlState.Normal)
                EOp3.setTitle(OpcionesEsp[Opalabra],forState: UIControlState.Normal)
                EOp4.setTitle(OpcionesEsp[Opalabra+1],forState: UIControlState.Normal)
                EOp1.setTitle(OpcionesEsp[Opalabra+2],forState: UIControlState.Normal)
                break;
            default:
                EOp3.setTitle(Nivel1[num][1],forState: UIControlState.Normal)
                EOp4.setTitle(OpcionesEsp[Opalabra],forState: UIControlState.Normal)
                EOp1.setTitle(OpcionesEsp[Opalabra+1],forState: UIControlState.Normal)
                EOp2.setTitle(OpcionesEsp[Opalabra+2],forState: UIControlState.Normal)
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
        PuntajeJuego = PuntajeJuego+5
        print(PuntajeJuego)
        Puntos.text = "Puntaje: \(PuntajeJuego)"
    }
    
    func ActualizarPuntaje(){
        PuntajeUltimo = PuntajeJuego
        if (PuntajeMejor<PuntajeJuego){
            PuntajeMejor = PuntajeJuego
        }
    }
    

}
