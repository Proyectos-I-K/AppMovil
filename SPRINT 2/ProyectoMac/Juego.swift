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
    var Nivel1:[[String]] = [["HIDRÓGENO","H"],["HELIO","He"],["LITIO","Li"],["BERILIO","Be"],["BORO","B"],["CARBONO","C"],["NITRÓGENO","N"], ["OXÍGENO","O"], ["FLÚOR","F"],["NEÓN","Ne"], ["SODIO","Na"],["MAGNESIO","Mg"],["ALUMINIO","Al"],["SILICIO","Si"],["FÓSFORO","P"],["AZUFRE","S"],["CLORO","Cl"],["ARGÓN","Ar"], ["POTASIO","K"], ["CALCIO","Ca"], ["ESCANDIO","Sc"], ["TITANIO","Ti"], ["VANADIO","V"], ["CROMO","Cr"], ["MANGANESO","Mn"], ["HIERRO","Fe"], ["COBALTO","Co"], ["NIQUEL","Ni"], ["COBRE","Cu"], ["CINC/ZINC","Zn"], ["GALIO","Ga"], ["GERMANIO","Ge"], ["ARSÉNICO","As"], ["SELENIO","Se"], ["BROMO","Br"], ["KRIPTÓN","Kr"], ["RUBIDIO","Rb"], ["ESTRONCIO","Sr"], ["YTRIO","Y"], ["CIRCONIO","Zr"], ["NIOBIO","Nb"], ["MOLIBDENO","Mo"], ["TECNECIO","Tc"], ["RUTENIO","Ru"], ["RODIO","Rh"], ["PALADIO","Pd"], ["PLATA","Ag"], ["CADMIO","Cd"], ["INDIO","In"], ["ESTAÑO","Sn"], ["ANTIMONIO","Sb"], ["TELURO","Te"], ["YODO","I"], ["XENÓN","Xe"], ["CESIO","Cs"], ["BARIO","Ba"], ["LANTANO","La"], ["CERIO","Ce"], ["PRASEODIMIO","Pr"], ["NEODIMIO","Nd"], ["PROMETIO","Pm"], ["SAMARIO","Sm"], ["EUROPIO","Eu"], ["GADOLINIO","Gd"], ["TERBIO","Tb"], ["DISPROSIO","Dy"], ["HOLMIO","Ho"], ["ERBIO","Er"], ["TULIO","Tm"], ["YTERBIO","Yb"], ["LUTECIO","Lu"], ["HAFNIO","Hf"], ["TÁNTALO","Ta"], ["WOLFRAMIO","W"], ["RENIO","Re"], ["OSMIO","Os"], ["IRIDIO","Ir"], ["PLATINO","Pt"], ["ORO","Au"], ["MERCURIO","Hg"], ["TALIO","Tl"], ["PLOMO","Pb"], ["BISMUTO","Bi"], ["POLONIO","Po"], ["ASTATO","At"], ["RADÓN","Rn"], ["FRANCIO","Fr"], ["RADIO","Ra"], ["ACTINIO","Ac"], ["TORIO","Th"], ["PROTACTINIO","Pa"], ["URANIO","U"], ["NEPTUNIO","Np"], ["PLUTONIO","Pu"], ["AMERICIO","Am"], ["CURIO","Cm"], ["BERKELIO","Bk"], ["CALIFORNIO","Cf"], ["EINSTEINIO","Es"], ["FERMIO","Fm"], ["MENDELEVIO","Md"], ["NOBELIO","No"], ["LAWRENCIO","Lr"], ["RUTHERFORDIO","Rf"], ["DUBNIO","Db"], ["SEABORGIO","Sg"], ["BOHRIO","Bh"], ["HASSIO","Hs"], ["MEITNERIO","Mt"], ["DARMSTADTIO","Ds"], ["ROENTGENIO","Rg"], ["COPERNICIO","Cn"], ["UNUNTRIO","Uut"], ["FLEROVIO","Fl"], ["UNUNPENTIO","Uup"], ["LIVERMORIO","Lv"], ["UNUNSEPTIO","Uus"], ["UNUNOCTIO","Uuo"]]
    

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


        OpcionesEsp = ["Av", "Bo", "Hi", "Le", " Wo", "Ps", "Uo", "Us", "Lm", "Gr", "Nt", "Lt","Me","Cb","Ec","Ci","Tv","Du","Or","Pe","It","Go","Fo","Az","Ma","Gn","We","Oz","Ts","Ko","Pn","Ik","Fz","St","En","Ya", "Mp","Eo","Yu","Ia","Hr","Bc","Ll","Mh","Tr","Hb","Ri","Dt","Mu","Pz","So","Ad","Cz","Kc","Id","Ic","Un","My","Lo","Nr","An ","Rc","Mi","Oc","On","Nu","Tk","Tw","Mj","Ju","Ck","Oo","Di","Ue ","Lf","Ch","Et","Io","Lm","Jp","Td","Wr","Z","Up","Ls","Dn","Ms","Ln","Ud","Nn","Nl","Dr","Ot","Tp","Vc","Mv","Vn","Pl","Sa","Ol","Xo","Mw","Ww","Xi","Tq","Qr","Yz"]
        
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
        num = Int(arc4random_uniform(115))
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
