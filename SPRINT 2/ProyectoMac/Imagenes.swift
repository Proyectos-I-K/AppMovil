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
    
    
    var ImagenesIngles = [["1.png","HIDRÓGENO"], ["2.png","HELIO"], ["3.png","LITIO"], ["4.png","BERILIO"],
    ["5.png","BORO"], ["6.png","CARBONO"], ["7.png", "NITRÓGENO"], ["8.png", "OXÍGENO"],
    ["9.png", "FLÚOR"], ["10.png", "NEÓN"], ["11.png","SODIO"], ["12.png", "MAGNESIO"],
    ["13.png","ALUMINIO"], ["14.png","SILICIO"], ["15.png","FÓSFORO"], ["16.png","AZUFRE"],
    ["17.png","CLORO"], ["18.png","ARGÓN"], ["19.png","POTASIO"], ["20.png","CALCIO"],
    ["21.png","ESCANDIO"], ["22.png","TITANIO"], ["23.png","VANADIO"], ["24.png","CROMO"],
    ["25.png","MANGANESO"], ["26.png","HIERRO"], ["27.png","COBALTO"], ["28.png","NIQUEL"],
    ["29.png","COBRE"], ["30.png","CINC/ZINC"], ["31.png","GALIO"], ["32.png","GERMANIO"],
    ["33.png","ARSÉNICO"], ["34.png","SELENIO"], ["35.png","BROMO"], ["36.png","KRIPTÓN"],
    ["37.png","RUBIDIO"], ["38.png","ESTRONCIO"], ["39.png","ITRIO"], ["40.png","CIRCONIO"],
    ["41.png","NIOBIO"], ["42.png","MOLIBDENO"], ["43.png","TECNECIO"], ["44.png","RUTENIO"],
    ["45.png","RODIO"], ["46.png","PALADIO"], ["47.png","PLATA"], ["48.png","CADMIO"],
    ["49.png","INDIO"], ["50.png","ESTA—O"], ["51.png","ANTIMONIO"], ["52.png","TELURIO"],
    ["53.png","YODO"], ["54.png","XENÓN"], ["55.png","CESIO"], ["56.png","BARIO"],
    ["57.png","LANTANO"], ["58.png","CERIO"], ["59.png","PRASEODIMIO"], ["60.png","NEODIMIO"],
    ["61.png","PROMETIO"], ["62.png","SAMARIO"], ["63.png","EUROPIO"], ["64.png","GADOLINIO"],
    ["65.png","TERBIO"], ["66.png","DISPROSIO"], ["67.png","HOLMIO"], ["68.png","ERBIO"],
    ["69.png","TULIO"], ["70.png","ITERBIO"], ["71.png","LUTECIO"], ["72.png","HAFNIO"],
    ["73.png","TANTALIO"], ["74.png","WOLFRAMIO"], ["75.png","RENIO"], ["76.png","OSMIO"],
    ["77.png","IRIDIO"], ["78.png","PLATINO"], ["79.png","ORO"], ["80.png","MERCURIO"],
    ["81.png","TALIO"], ["82.png","PLOMO"], ["83.png","BISMUTO"], ["84.png","POLONIO"],
    ["85.png","ASTATO"], ["86.png","RADÓN"], ["87.png","FRANCIO"], ["88.png","RADIO"],
    ["89.png","ACTINIO"], ["90.png","TORIO"], ["91.png","PROCTACTINIO"], ["92.png","URANIO"],
    ["93.png","NEPTUNIO"], ["94.png","PLUTONIO"], ["95.png","AMERICIO"], ["96.png","CURIO"],
    ["97.png","BERKELIO"], ["98.png","CALIFORNIO"], ["99.png","EINSTENIO"], ["100.png","FERMIO"],
    ["101.png","MENDELEVIO"], ["102.png","NOBELIO"], ["103.png","LAWRENCIO"],["104.png","RUTHERFORDIO"],
    ["105.png","DUBNIO"], ["106.png","SEABORGIO"], ["107.png","BOHRIO"], ["108.png","HASSIO"],
    ["109.png","MEITNERIO"], ["110.png","DARMSTADIO"], ["111.png","ROENTGENIO"], ["112.png","COPERNICIO"],
    ["113.png","NIHONIUM"], ["114.png","FLEROVIO"], ["115.png","MOSCOVIUM"], ["116.png","LIVERMORIO"],
    ["117.png","TENNESSINE"], ["118.png","OGANESSON"]]
    

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
       Opciones = ["UCRANIO", " LIVERMOR", " COPERNICO", " LARENCIO ", " GASOLINIO ", "SAMANIO","NOVELIO"," PROMETTIO"," BIZMUTO"," INDIRO","ABSTATO","ROCTINIO","RODO","PENTUNIUM","BORHIO","RUTTENIO","POLONIUM","HANNIO","FRAMIO", "VARIO","CELSO","RODON","NOCTIO","METNERIO","ARMSTADTIO","HACIO","DINIO","ENTENIO","MORIO","CARNITRIO","BORGIUS","CANDIDUS","ASTACIO","KRIPTONIO","OZMIO","TANTALIM","VERQUELIO","TOLIO","PLATTA", "COFRE","HANIO","AMERICO","PLUTTON","MENDELEZO","LUCRECIO","PLANTANIUM","NEODIM","CADNIO","PALADO", "ESTRON", "KERMIO", "OCCI", "UNNSEPTIO", "FLAROVIO", "LOVERMORIO", "PRACEODINIO", "LAWRENCIO", "EUROPPIO", "MEITNERIOL", "HILITIO", "DUBIO", "FORDIO", "RUTENUO"]
        
        
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
        num = Int(arc4random_uniform(115))
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
