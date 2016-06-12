//
//  Frases.swift
//  ProyectoMac
//
//  Created by Karina Gonzalez Moreno on 31/03/16.
//  Copyright © 2016 Karina Gonzalez Moreno. All rights reserved.
//

import UIKit
import AVFoundation



class Frases: UIViewController {

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
    
    var Nivel1:[[String]] = [["a while back/a while ago","hace un tiempo"],["about time","ya era hora"],["after a while","después de un rato"],["ahead of time","con anticipación/previamente"],["all along","todo el tiempo"],["all day along","todo el dÌa"],["all in all","en cualquier momento"],["all the same","después de todo/al final de cuentas"],["all the while","da lo mismo/da igual"],["any day (now)","en cualquier momento"],["About the middle of (periods of time week month)","A mediados de"],["About, to deal with","Tratar acerca de"],["Above all","Sobre todo"],["Add up","Tener sentido"],["After all","Al fin y al cabo"],["After all","Después de todo"],["Again","Otra vez"],["All along","Desde el principio"],["All of a sudden","De pronto"],["All over","Por todas partes"],["All the same","Ser lo mismo"],["Anyhow","De todos modos"],["Apparently","Al parecer"],["As a matter of fact","En realidad"],["As soon as","En cuanto"],["As soon as possible","Cuanto antes"],["As soon as possible","Lo más pronto posible"],["As usual","Como de costumbre"],["At first","Al principio"],["At first sight","A primera vista"],["At full speed, at full blast","A más no poder"],["At heart","En el fondo"],["At home","En casa"],["At last","Al fin"],["At least","Por lo menos"],["At the latest","A más tardar"],["At the present time","En la actualidad"],["At the same time","A la vez"],["At times","A veces"],["At will","A gusto"],["Brand new","Totalmente nueva"],["By all means","De todos modos"],["By and large","En general"],["By day or by daytime","De día"],["By night, in the nighttime","De noche"],["By proxy","Por poder"],["By the way","A propósito"],["Consequently","Por consiguiente"],["Day by day","Día por día"],["Early in (periods of time week, year)","A principios de"],["Exactly, word for word","Al pie de la letra"],["Face down","Boca abajo"],["Face to face","Cara a cara"],["For good","Para siempre"],["For instance","Por ejemplo"],["For the time being","Por el momento"],["For the time being","Por lo pronto"],["From time to time","De cuando en cuando"],["Fully, completely","A fondo"],["Generally, as a general rule","Generalmente"],["Good morning","Buenos días"],["Immediately","En el acto, en seguida"],["In a hurry","Apurado"],["In a short time","Dentro de poco"],["In a way","Hasta cierto punto"],["In any event","En todo caso"],["In broad daylight","En pleno día"],["In case of","En caso de"],["In due","En debido"],["In fashion","De moda"],["In force","En vigor"],["In front of","En frente de"],["In general","En general"],["In order to","Para"],["In place of","En lugar de"],["In regard to","Con respecto a"],["In short","En fin"],["In spite of","A pesar de"],["In the dark","A obscuras"],["In the future","En adelante"],["In the hands of","En poder de"],["In the long run","A la larga"],["In the middle of","En medio de"],["In the twinkling of an eye","En un santiamén"],["In this way or that way","De este modo"],["In time","A tiempo"],["In vain","En vano"],["Instead of","En vez de, en lugar de"],["Just in case","Por si acaso"],["Knowingly, consciously","A sabiendas"],["Let's see","A ver"],["Little by little","Poco a poco"],["Meanwhile","Mientras tanto"],["Next to","Al lado de"],["No wonder","Con razón"],["Now and again","De vez en cuando"],["Of course","Desde luego"],["On account of","Por motivo"],["On credit","A crédito"],["On foot","A pie"],["On the contrary","Al contrario"],["On the house","Ir por cuenta de la casa, o del dueño"],["On the inside","Por adentro"],["On the whole","En general"],["Once","Una vez"],["Perhaps","Tal vez"],["Provided","Con tal que"],["Quickly","Muy rápido"],["Rarely, seldom","Raras veces"],["Rather","Más bien"],["Red tape","Papeleo"],["Regardless of the cost, at all costs","Cueste lo que cueste"],["Retail","Al por menor"],["Right? Isn't it?","¿Verdad?"],["Sharp","En punto"],["Shortly, in a short while","Al poco rato"],["Since","Dado que, ya que"],["So that","Para que"],["So, so that","De manera que"],["That is to say","Es decir"],["This way","Por aquí"],["Twice","Dos veces"],["Two of a kind","Tal para cual"],["Unexpectedly","De improviso"],["Unless","A menos que"],["Unwillingly","De mala gana"],["Very often","Muy a menudo"],["Wholesale","Al por mayor"],["Willingly, voluntarily","De buena gana"],["Without more ado","Sin más ni más"],["Yes indeed","Ya lo creo"],["You are welcome","De nada"],["To agree, in accordance","Estar de acuerdo"],["To argue about, over","Discutir"],["To back out","Retirarse"],["To back off","Retroceder, alejarse"],["To back up","Apoyar, retroceder"],["To bear in mind","Tener presente, recordar"],["To beat one's brains out","Romperse la cabeza"],["To become","Llegar a ser"],["To become","Ponerse (mas un adjetivo)"],["To become of","Hacerse, suceder"],["To begin to (do something)","Ponerse a (hacer algo)"],["To believe in","Creer en"],["To blow down","Tumbar, derrumbo"],["To blow up","Enfurecer, estallar"],["To borrow","Pedir o tomar prestado"],["To break in","Estrenar"],["To break into","Entrar en (con violencia)"],["To break into","Asaltar"],["To break loose","Soltarse, escapar"],["To break off","Terminar, acabar"],["To break out","Estallar, empezar"],["To bring about","Causar"],["To bring back","Devolver"],["To bring out","Presentar"],["To bring to","Revivir"],["To bring up","Criarse"],["To build up","Aumentar"],["To burn down","Quemarse hasta el suelo"],["To burn out","Fundirse (de eléctricos)"],["To burn up","Quemarse todo"],["To buy for cash","Comprar al contado"],["To buy out","Comprar la parte de (negocios, axiones)"],["To buy up","Adquirir, acaparar"],["To be about to","Estar para, apunto de"],["To be becoming","Le queda bien, apropiado"],["To be better off","Estar mejor"],["To be bound for","Dirigirse a, ir hacia"],["To be careful","Tener cuidado"],["To be cold","Tener frio"],["To be glad to","Tener gusto en"],["To be in a hurry","Estar de prisa"],["To be in charge of","Estar a cargo de"],["To be in need of","Hacer falta"],["To be in the way","Obstruyendo, estorbar"],["To be informed or up to date","Estar al corriente de"],["To be named after","Heredar nombre de"],["To be of no account","Ser un cero a la izquierda"],["To be out of the question","Ser imposible"],["To be over","Terminar"],["To be set to do","Estar listo para hacer"],["To be sleepy","Tener sueño"],["To be standing","Estar de pie"],["To be take in","Ser engañado"],["To be up to someone","Depender de"],["To be used to","Estar acostumbrado"],["To be warm","Tener calor"],["To be well off","Ser rico"],["To call a meeting","Convocar a junta"],["To call down","Regañar, reprimir"],["To call for","Venir a buscar"],["To call off","Cancelar"],["To call on","Visitar"],["To call up","Llamar por teléfono"],["To carry out","Llevar a cabo"],["To carry over","Posponer"],["To catch cold","Coger catarro"],["To catch on","Entender, darse cuenta"],["To catch up","Alcanzar, poner al día"],["To certify, to attest","Dar fe"],["To change one's mind","Cambiar de idea"],["To check up","Inspeccionar, examinar"],["To cheer up","Alegrar, animar"],["To chip in","Aportar dinero, cooperar"],["To clean out","Limpiar"],["To clear up","Aclarar"],["To come up with","Obtener, alcanzar"],["To come about","Suceder, resultar"],["To come across","Encontrarse con"],["To come from","Venir de, venir desde"],["To come out well","Salir bien"],["To come to","Volver en si"],["To come to an end","Terminar acabarse"],["To come to terms","Llegar a un acuerdo"],["To come true","Resultar cierto"],["To consist of","Constar de"],["To count on","Contar con"],["To count, to rely upon","Contar con"],["To cross out","Tachar"],["To cut in","Interrumpir"],["To cut off","Cortar"],["To cut out","Recortar"],["To cut up","Cortar en pedazos"],["To cut short","Romperse, interrumpirse"],["To depend on","Depender de"],["To devote oneself","Dedicarse a"],["To die away","Desaparecer (de sonidos)"],["To die down","Amainar, apagarse"],["To die out","Acabarse, extinguir"],["To do one's best","Hacer lo posible, hacer lo mejor que se pueda"],["To do over","Volver a hacer, hacer otra vez"],["To draw up","Preparar (sobre documentos)"],["To dream of","Soñar con"],["To drop","Dejar caer"],["To drop in on","Visitar inesperadamente"],["To drop out","Dejar de asistir"],["To drop someone a line","Escribir unas líneas"],["To dry out","Secarse"],["To dry up","Secarse"],["To eat in","Comer en casa"],["To face","Dar a"],["To fall behind","Atrasarse, rezagarse"],["To fall in love","Enamorarse"],["To fall off","Caerse"],["To fall off","Disminuir"],["To fall through","Fracasar"],["To feed","Dar de comer"],["To feel sorry for","Tener lastima de"],["To fell like","Tener ganas de"],["To figure out","Entender"],["To figure out","Calcular"],["To fill out","Llenar"],["To find","Dar con"],["To find fault with","Criticar, poner faltas"],["To find out","Enterarse, averiguar"],["To fool around","Perder tiempo, hacer tonterías"],["To get along","Llevarse bien, irse a"],["To get along with","Llevarse bien, entenderse"],["To get away","Huir, escapar"],["To get away with","Cometer una falta sin ser castigado"],["To get back","Regresar, volver"],["To get better","Mejorarse"],["To get even with","Vengarse"],["To get going","Andando, en marcha"],["To get in touch with","Comunicarse con, ponerse en contacto con"],["To get lost","Perderse"],["To get off","Salir, bajar"],["To get over","Restablecerse, recobrarse"],["To get rid of","Deshacerse de"],["To get sick","Enfermarse"],["To get through","Terminar"],["To get to a place","Llegar a, arribar a"],["To get to the point","Ir al grano"],["To get together","Juntarse, reunirse"],["To get up","Levantarse"],["To get used to","Acostumbrarse"],["To give account","Dar razón"],["To give birth to","Dar a luz"],["To give in","Darse por vencido"],["To give out","Acabarse"],["To give someone a ring","Llamar por teléfono"],["To give up","Dejar de"],["To give up","Rendirse"],["To go half","Ir a la mitad"],["To go and get","Ir a buscar"],["To go around","Alcanzar"],["To go in for","Ser aficionado a"],["To go insane","Perder la cabeza, la razón"],["To go off","Explotar, disparar"],["To go on","Seguir, o seguir hablando"],["To go out for a drive","Ir de paseo, dar un paseo"],["To go shopping","Ir de compras"],["To go through","Sufrir"],["To go through","Pasar"],["To go through","Aprobarse"],["To go window shopping","Ir a mirar las vidrieras (aparadores)"],["To go with","Hacer juego, ir con"],["To go without saying","Entenderse, sin decirse"],["To hand in","Presentar, rendir"],["To hang up","Colgar"],["To have","Cuenta con, tiene"],["To have a big mouth","Tener la lengua larga"],["To have a good time","Divertirse, pasar un buen rato"],["To have charge of","Estar encargado de, estar a cargo de"],["To have got","Tener"],["To have got to do something","Tener que"],["To have it out with","Poner las cosas en claro"],["To have on","Tener puesto"],["To have one's heart set on","Desear grandemente"],["To have one's own way","Salirse con la suya"],["To have time off","Tener tiempo libre"],["To have to do with","Tener que ver con"],["To hear from","Recibir noticias de"],["To hear of","Escuchar de, saber de"],["To hold good","Servir, ser valido"],["To hold on","Detenerse, esperar"],["To hold on","Aguantar"],["To hold out","Resistir"],["To hold over","Mantenerse, durar"],["To hold still","Estar quieto"],["To hold up","Asaltar"],["To keep accounts","Llevar cuentas"],["To keep an eye on","Vigilar"],["To keep books","Llevar los libros"],["To keep company","Compañía, acompañar, de relacionarse"],["To keep good time","Andar bien"],["To keep house","Hacer el trabajo del hogar, ser ama de casa"],["To keep house","Poner casa"],["To keep in mind","Recordar"],["To keep in touch with","Mantenerse en contacto con"],["To keep on","Seguir"],["To keep up with","Ir al paso de"],["To kill two birds with one stone","Matar dos pájaros de un tiro"],["To knock out","Noquear, golpear"],["To know by heart","Saber de memoria"],["To know by sight","Conocer de vista"],["To lay off","Suspender, despedir"],["To learn by heart","Aprender de memoria"],["To leave out","Dejar fuera, omitir"],["To leave word","Dejar dicho"],["To lend a hand","Dar una mano"],["To let alone","Dejar tranquilo"],["To let go of","Soltar"],["To let on","Dejar saber"],["To let up","Disminuir, aflojar"],["To lie down","Acostarse"],["To look after","Cuidar"],["To look at","Mirar"],["To look down","Despreciar"],["To look for","Buscar"],["To look forward","Esperar con ansia"],["To look into it","Investigar"],["To look like","Parecerse a"],["To look out","Tener cuidado"],["To look out upon","Dar a"],["To look over","Repasar, examinar"],["To look up","Buscar (preferentemente en libros)"],["To look up to","Respetar, admirar"],["To make a point of","Dar importancia a"],["To make believe","Pretender"],["To make clear","Aclarar, explicar"],["To make faces","Hacer muecas"],["To make friends","Hacer amigos"],["To make fun of","Burlarse de"],["To make good","Tener éxito"],["To make good time","Viajar rápidamente"],["To make known","Dar a conocer"],["To make no difference","Ser igual, ser lo mismo"],["To make out","Hacer"],["To make out","Preparar"],["To make over","Reformar (preferentemente ropa)"],["To make room for","Hacer lugar o espacio"],["To make sense","Tener sentido"],["To make sure","Estar seguro"],["To make the best of","Sacar el mejor partido posible"],["To make up","Compensar"],["To make up","Inventar"],["To make up","Reconciliarse"],["To make up one's mind","Decidir"],["To make use of","Utilizar, servirse de"],["To marry","Casarse con"],["To miss","Echar de menos"],["To mix up","Confundir"],["To notice, to realize","Darse cuenta"],["To pay attention","Prestar atención"],["To pick out","Escoger, seleccionar"],["To pick up","Coger, recoger"],["To play tricks on","Tomar el pelo, bromear"],["To point out","Indicar, señalar"],["To put an end to","Terminar, acabar con"],["To put away","Guardar"],["To put down","Dominar"],["To put off","Posponer, aplazar"],["To put on","Ponerse (referente a ropa)"],["To read over","Echar una ojeada"],["To refuse to","Negarse a (hacer algo)"],["To run across","Tropezar con"],["To run away","Huir, escaparse"],["To run errands","Hacer mandados"],["To run into","Encontrarse con"],["To run out of","Acabarse, agotarse"],["To run over","Arrollar, atropellar"],["To run the risk of","Arriesgar, correr el riesgo"],["To see about","Ocuparse de"],["To see someone off","Despedir a alguien"],["To see to it that","Encargarse de"],["To sell out","Liquidar, vender"],["To set a price","Poner precio"],["To set aside","Poner a un lado"],["To set back","Hacer retroceder"],["To set fire to","Prender fuego a"],["To set forth","Salir"],["To set forth","Presentar"],["To set forward","Hacer adelantar"],["To set out","Salir"],["To set right","Poner en claro"],["To set the table","Poner la mesa"],["To set up","Erigir, levantar"],["To shake hands with someone","Dar la mano a alguien"],["To show off","Presumir, exhibir"],["To show up","Presentarse"],["To shut off","Apagar, cerrar (fluidos, electricidad)"],["To shut up","Cerrar, callarse"],["To sit down","Sentarse"],["To slow down","Ir más despacio"],["To spoil, to ruin","Echar a perder, arruinar"],["To stand a chance","Tener probabilidad"],["To stand for","Representar"],["To stand for","Tolerar"],["To stand in line","Hacer cola"],["To stand out","Sobresalir, ser prominente"],["To stand still","Estar parado o quieto"],["To stand to reason","Ser lógico, claro"],["To step out","Salir de"],["To step up","Acelerar, avivar"],["To stick out","Sobresalir"],["To take a look at","Mirar"],["To take a seat","Tomar asiento"],["To take a walk","Pasear, dar un paseo"],["To take advantage of","Aprovecharse de"],["To take after","Salir a, parecerse a"],["To take apart","Desarmar"],["To take away","Llevar"],["To take by surprise","Sorprender"],["To take care of","Ocuparse de, cuidar"],["To take charge of","Encargarse de"],["To take down","Descolgar, bajar"],["To take down","Tomar nota de"],["To take for granted","Dar por sentado, dar por descontado"],["To take hold of","Agarrar, tomar"],["To take into account","Tener en cuenta, en consideración"],["To take off","Quitarse"],["To take off","Despegar"],["To take on","Emplear"],["To take one's time","Tomarse su tiempo, sin apuro"],["To take out","Tirar"],["To take over","Asumir el cargo de, control de"],["To take pains","Esmerarse"],["To take part","Participar, tomar parte"],["To take pity on","Tener lastima de"],["To take place","Tener lugar, suceder, ocurrir"],["To take roots","Echar raíces"],["To take someone for","Tomar a uno por"]]
    
    
    
    @IBOutlet weak var FraseIngles: UILabel!
    @IBOutlet weak var EOp1: UIButton!
    @IBOutlet weak var EOp2: UIButton!
    @IBOutlet weak var EOp3: UIButton!
    @IBOutlet weak var EOp4: UIButton!
    @IBOutlet weak var Mensaje: UILabel!
    @IBOutlet weak var Puntos: UILabel!
    

    
    @IBAction func Opcion1(sender: AnyObject) {
        if (EOp1.titleLabel!.text! == Nivel1[num][1] ){
            Mensaje.text = "Tu respuesta es: Correcta"
            CalcularFraseIngles()
            IncrementarPuntaje()
            ButtonAudioPlayer.play()
            
        }else{
            Mensaje.text = "Incorrecto, su puntaje final es: \(PuntajeFrase)"
            MensajeUsuario(Nivel1[num][1])
            Desactivar()
            ActualizarPuntaje()
            ButtonAudioPlayer2.play()

        }
    }
    
    @IBAction func Opcion2(sender: AnyObject) {
        if (EOp2.titleLabel!.text! == Nivel1[num][1] ){
            Mensaje.text = "Tu respuesta es: Correcta"
            CalcularFraseIngles()
            IncrementarPuntaje()
            ButtonAudioPlayer.play()
            
        }else{
            Desactivar()
            Mensaje.text = "Incorrecto, su puntaje final es: \(PuntajeFrase)"
            MensajeUsuario(Nivel1[num][1])
            ActualizarPuntaje()
            ButtonAudioPlayer2.play()

        }
    }
    
    @IBAction func Opcion3(sender: AnyObject) {
        if (EOp3.titleLabel!.text! == Nivel1[num][1] ){
            Mensaje.text = "Tu respuesta es: Correcta"
            CalcularFraseIngles()
            IncrementarPuntaje()
            ButtonAudioPlayer.play()
            
        }else{
            Desactivar()
            Mensaje.text = "Incorrecto, su puntaje final es: \(PuntajeFrase)"
            MensajeUsuario(Nivel1[num][1])
            ActualizarPuntaje()
            ButtonAudioPlayer2.play()

        }
    }
    
    @IBAction func Opcion4(sender: AnyObject) {
        if (EOp4.titleLabel!.text! == Nivel1[num][1] ){
            Mensaje.text = "Tu respuesta es: Correcta"
            CalcularFraseIngles()
            IncrementarPuntaje()
            ButtonAudioPlayer.play()

        }else{
            Desactivar()
            Mensaje.text = "Incorrecto, su puntaje final es: \(PuntajeFrase)"
            MensajeUsuario(Nivel1[num][1])
            ActualizarPuntaje()
            ButtonAudioPlayer2.play()

        }
    }
    

    override func viewDidLoad() {
        
        
        OpcionesEsp = ["Tengo sueño todos los días","Un dia hermoso","Trabajar todo el tiempo","Soy todo un veterano","Con buen carácter","Siempre con vestido rojo","Más tarde","Todo al mismo tiempo","Algúnas veces","En general, todo bien","Día por día","Por ejemplo","Para siempre","Cuanto tiempo","Al pie de la letra","De una vez","Por todas partes","Ser lo mismo","De todos modos","Desde el principio","Despues de todo","Sobre todo","Estar de acuerdo","Lleno de vida","Sin remordimientos","Estar deprimida","Despedir a alguien","Jugar a algo","Lo mejor que hay","Darse cuenta de la verdad","Buena persona"]
        
        super.viewDidLoad()
        //
        Regresar.enabled = false
        Regresar.hidden = true
        
        CalcularFraseIngles()
        PuntajeFrase = 0
        Puntos.text = "Puntaje: \(PuntajeFrase)"
        
        
        ButtonAudioPlayer = try! AVAudioPlayer(contentsOfURL: ButtonAudioURL)
        ButtonAudioPlayer2 = try! AVAudioPlayer(contentsOfURL: ButtonAudioURL2)
        
    }
    
    func CalcularFraseIngles(){
        num = Int(arc4random_uniform(563))
        let posicion = Int(arc4random_uniform(4))
        FraseIngles.text = Nivel1[num][0]
        
        let Opalabra = Int(arc4random_uniform(28))
        
        
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
        PuntajeFrase = PuntajeFrase+5
        print(PuntajeFrase)
        Puntos.text = "Puntaje: \(PuntajeFrase)"
    }
    
    func ActualizarPuntaje(){
        PuntajeUltimoFrase = PuntajeFrase
        if (PuntajeMejorFrase<PuntajeFrase){
            PuntajeMejorFrase = PuntajeFrase
        }
    }
    
    
}