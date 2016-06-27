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
    
    
    var Nivel1:[[String]] = [["se utiliza para propulsar cohetes espaciales","HIDROGENO"],
        ["se utiliza en el tratamiento de tumores de los ojos","HELIO"],["Sirve para hacer baterías eléctricas, lentes de telescopios y cerámica.","LITIO"],["Fabricación de pantallas de radiación para aparatos de rayos X","BERILIO"],["Fabricación de vidrios  y esmaltes ","BORO"],["Se producen grafito para los lápices","CARBONO"],["Producción de fertilizantes, explosivos, colorantes y amoniaco","NITRÓGENO"],["Se utiza en forma líquida como combustible de cohetes","OXÍGENO"],["Se utiliza para hacer pasta de dientes bucales ","FLÚOR"],["Se utiliza para hacer tubos incandescentes o pantallas","NEON"],["Se utiliza para fabricar lámparas de vapor de sodio","SODIO"],["Es muy usado para construcciones metálicas ligeras","MAGNESIO"],["Se utiliza para la fabricación de materiales de cocina","ALUMINIO"],["Se utiliza como material refractario, se usa en cerámicas y esmaltados","SILICIO"],["El fósforo rojo se utiliza en la fabricación de cerillos","FOSFORO"],["Es utilizado principalmente en la elaboración de explosivos, pigmentos, jabones y detergentes, tinturas y plásticos., como ácido sulfúrico en muchos compuestos químicos industriales, para hacer cerillos","AZUFRE"],["Es un excelente blanqueador de materiales como la pasta de papel, algunas telas. Como ácido clorhídrico en las industrias","CLORO"],["Es utilizado en la fabricación de lámparas de incandescencia para disminuir la rapidez con que se evapora el filamento de wolframio y aumentar su duración, en la industria sirve como gas para soldaduras, y evitar que se oxiden durante el proceso de soldado.","ARGON"],["Se usa, junto con el sodio, como refrigerante en las plantas eléctricas nucleares. Los compuestos tienen muchos usos: el bromuro y el yoduro se emplean en medicina y en fotografía, el clorato en la fabricación de algunos explosivos y de las cerillas, el sulfato se emplea como fertilizante para la agricultura, el hidróxido se emplea para fabricar jabones blandos.","POTASIO"],["Sirve en la elaboración de pastillas, como cal se usa como material refractario","CALCIO"],["Se emplea en la fabricación de luces de gran intensidad y como rastreador en las refinerías de petróleo.También se utiliza en la construcción de naves espaciales por su gran ligereza y su elevado punto de fusión.","ESCANDIO"],["Sirve como recubrimiento de aeronaves espaciales, para prótesis óseas en medicina","TITANIO"],["Principalmente se utiliza en aleaciones como ferrovanadio, acero cromo-vanadio, para fabricar partes automotrices","VANADIO"],["Se utiliza en aleaciones unido al hierro, níquel, cobalto, logrando aumentar tanto la dureza como la tenacidad y resistencia a la corrosión, forma parte del acero inoxidable como mínimo en un diez por ciento, por su brillo se utiliza para recubrir diversos elementos sean partes automotrices o de adorno.","CROMO"],["Se usa en la siderurgia, en la producción de aleaciones, unido al fierro forma ferromanganeso para hacer aceros utilizados en la fabricación de cajas fuertes, otros usos son la fabricación de baterías secas o en usos químicos","MAGNESO"],["es el que más se utiliza en la industria de los metales, siendo que el 95% de la producción mundial de metales es representada por el hierro","HIERRO"],["Se usa para hacer aleaciones, superaleaciones usadas para las turbinas de aviones, las válvulas de los motores, herramientas de corte, producción de pinturas.","COBALTO"],["Se usa en componentes electrónicos, fabricación de pilas, revestimiento de otros metales propensos a corroerse, en aleaciones, partes de automóviles como engranes, frenos, resistencias, chasis etc., sirve de catalizador","NIQUEL"],["Su principal uso es en la industria eléctrica en la fabricación de cables, maquinarias eléctricas, en la fabricación de monedas, aparatos de cocina o hasta en objetos de decoración, en la fabricación da algunas telas como el rayón, en la industria química se utiliza en insecticidas, o en la fabricación de pigmentos.","COBRE"],["Uno de sus principales usos es como recubrimiento de metales que fácilmente se corroen, en la producción de pilas secas, o para fabricar latón","ZINC"],
                ["Uno de sus usos por sus propiedades tanto de fusión como de ebullición es en la fabricación de termómetros de altas temperaturas o en manómetros","GALIO"],
                ["Fabricación de semiconductores y transistores, fibras ópticas, lentes ópticas, como indicador de cambios en la química de aguas marinas","GERMANIO"],
                ["Unido al plomo se usa en la fabricación de perdigones, para limpiar las impurezas del vidrió, en la fabricación de pesticidas agrícolas y en productos químicos que sirven para conservar la madera es un elemento muy contaminante y peligroso.","ARSÉNICO"],
                ["Se utiliza en la fabricación de dispositivos fotoeléctricos, en la industria del vidrio se utiliza como decolorante, también puede ser utilizado en fotocopiadoras, semiconductores, aleaciones y células solares.","SELENIO"],
                ["Fluidos de perforación, pesticidas, químicos para tratamiento de aguas, intermediarios para químicos finos, productos farmacéuticos, de fotografía y aditivos, etc.","BROMO"],
                ["Se utiliza en la producción de focos incandescentes, es utilizado para iluminar pistas de aterrizaje debido a la luz roja que emite lo que facilita ser vista a grandes distancias o aun entre la niebla","KRIPTON"],
                ["Es utilizado para eliminar totalmente los gases en la manufactura de tubos de electrones al vacío, y en aplicaciones electrónicas tales como los fotocátodos, luminóforos y semiconductores.","RUBIDIO"],
                ["Formando aleaciones es utilizado para hacer imanes permanentes. Sirve como regulador en la fabricación de tubos de vacío, en pirotecnia se utiliza para dar el color rojo a los fuegos artificiales, algunas de sus sales se utilizan en medicina.","ESTRONCIO"],
                ["Sus diversos compuestos son utilizados en la fabricación de filtros en los microondas, y en la fabricación de tubos de imagen en televisores de color para producir fosforescencia roja, pantallas intensificadoras de las unidades de rayos.","ITRIO"],
                ["Tiene varios usos dentro de los cuales los principales son la fabricación de aceros, porcelanas, algunas aleaciones no ferrosas. Es utilizado también en los tubos de vacío para la eliminación de restos gaseosos debido a su facilidad para combinarse con ellos.","CIRCONIO"],
                ["Se utiliza para formar una aleación con el acero inoxidable con la finalidad de proporcionar una mayor resistencia a las altas temperatura y a la corrosión","NIOBIO"],
                ["El metal se usa principalmente en aleaciones para aceros. Estas aleaciones resultan muy duras y resistentes a las altas presiones y temperaturas. Se utilizan para trabajos estructurales, en aeronáutica y en la industria automovilística.","MOLIBDENO"],
                ["Es un elemento muy estable y de larga vida, por lo que este es utilizado como fuente de radiación, en medicina nuclear ayuda por medio de la radiación a encontrar tejidos enfermos","TECNECIO"],
                ["Forma aleaciones con el paladio y platino para otorgarles una mayor dureza y ser utilizados en la fabricación de contactos eléctricos que requieran una resistencia muy grande o diversos objetos para darles un acabado de lujo.","RITENIO"],
                ["Al igual que el rutenio se forman aleaciones con el platino y paladio utilizados para la fabricación de bobinas de hornos, casquillos para la producción de fibra de vidrio, electrodos de bujías para aviación y crisoles de Tiene usos como catalizador por ejemplo en la producción de ácido nítrico.","RODIO"],
                ["Se utiliza principalmente en las telecomunicaciones para la fabricación de contactos, en la fabricación de prótesis dentales, en la industria relojera, en joyería aleado con el oro se utiliza como oro blanco, en la industria fotográfica es utilizado también","PALADIO"],
                ["Los principales usos de la plata son a nivel comercial, como joyería, en la decoración y en la economía al elaborar monedas con ella, sirve como recubrimiento de otros metales, así mismo se utiliza para fabricar componentes eléctricos o electrónicos.","PLATA"],
                ["Se utiliza como revestimiento del hierro y el acero, aleado con el cobre se usa en los cables de tendido eléctrico, otro uso es en la elaboración de fusibles o unido con el plomo y zinc se usa para la soldadura de hierro.","CADMIO"],
                ["Es usado como recubrimiento electrolítico para evitar el desgaste en piezas de aleaciones antifricción, en aleaciones de prótesis dentales y motores eléctricos, otros usos del indio son para soldar el alambre de plomo a transistores de germanio.","INDIO"],
                ["Un elemento usado en muchos procesos industriales, es usado como soldadura de circuitos eléctricos, sirve como recubrimiento del cobre y del hierro en la elaboración de latas para la conservación de alimentos.","ESTAÑO"],
                ["Su principal uso es en la producción de aleaciones metálicas, algunos de sus compuestos ofrecen resistencia al fuego, en la fabricación de esmaltes, pinturas, vulcanización del caucho.","ANTIMONIO"],
                ["Como la mayoría de los metales se utiliza para hacer aleaciones como con el cobre y plomo con lo que se aumenta la resistencia a la tensión, otros usos es en la fabricación de dispositivos termoeléctricos.","TELURO"],
                ["Los principales usos del yodo son en la industria médica pues se utiliza como antiséptico y desinfectante.","YODO"],
                ["Los principales usos de este gas son en la elaboración de emisores de luz con características bactericidas, tubos luminosos en los flashes de cámaras fotográficas, también en los tubos fluorescentes con capacidad de excitar el laser de rubí.","XENON"],
                ["Se utiliza en la fabricación de celdas fotoeléctricas, películas y rayos X, relojes atómicos de Cesio, bulbos de radio, lámparas militares de señales infrarrojas y varios aparatos ópticos y de detección, combinado con otros elementos es utilizado para fabricar vidrios y cerámicas.","CESIO"],
                ["En su forma metálica relativamente es poco utilizado, salvo en algunos casos como recubrimiento de conductores eléctricos o sistemas de encendido automotrices.","BARIO"],
                ["Sus principales usos son como aditivo para lámparas de arco de carbono, proyección, iluminación de estudios, también se utiliza para hacer aleaciones con otros metales como el acero, aluminio o magnesio, en la fabricación de vidrios ópticos.","LANTANO"],
                ["Con otros elementos se utiliza en aleaciones para piedras de encendedor, puede ser utilizado en la fabricación de vidrios, células fotoeléctricas.","CERIO"],
                ["Sirve para la fabricación de piedras de encendedor así como también se utiliza como desoxidante en tubos de vacío, para la fabricación de vidrios protectores en la industria de la soldadura.","PRASEODIMIO"],
                ["Es utilizado en el proceso de fabricación de vidrios especiales como filtros de infrarrojo, otro de sus usos es como colorante de vidrios, barnices y cerámicas, forma aleaciones utilizadas en las piedras de los encendedores y en la elaboración de algunos componentes electrónicos.","NEOMIDIO"],
                ["Se usa en para preparar pinturas luminiscentes para señalizaciones de seguridad. El metal se ha usado en pilas atómicas especiales y como fuente de partículas beta en indicadores de espesor.","PROMECIO"],
                ["En la fabricación de imanes permanentes, se utiliza también en dispositivos de iluminación en la industria cinematográfica.","SAMARIO"],
                ["Se usa para absorber neutrones en reactores nucleares.","EUROPIO"],
                ["Su principal uso es en la fabricación de aleaciones en la industria electrónica, en hornos de atas temperaturas, en los reactores nucleares se utiliza como componente de las varillas de control, se utiliza como medio de contraste en las resonancias magneticas.","GADOLINIO"],
                ["Se usa como activador del verde en los tubos de imagen de televisores en color. Puede usarse junto con el ZrO2 como estabilizador en las células de combustible que operan a temperatura elevada.","TERBIO"],
                ["Facilidad para la absorción de neutrones y su alto punto de fusión sugieren usos del elemento en dispositivos de control del flujo de neutrones y para aleaciones con aceros inoxidables especiales.","DISPROCIO"],
                ["Se ha usado como catalizador en reacciones químicas industriales y también para la fabricación de algunos dispositivos electrónicos, en medicina se utiliza el laser de holmio.","HOLMIO"],
                ["Tiene aplicación como amplificador de las señales débiles en la tecnología de la fibra óptica y se usa en la fabricación de láseres.","ERBIO"],
                ["El tulio natural puede tener aplicación en la fabricación de materiales cerámicos con propiedades magnéticas para los equipos de microondas.","TULIO"],
                ["Tiene aplicaciones potenciales en aleaciones, electrónica, y materiales magnéticos, laser de fibra de iterbio. Se han conseguido gemas sintéticas de silicatos de iterbio.","ITERBIO"],
                ["Este elemento principalmente se utiliza como catalizador en el craqueo del petróleo en las refinerías, así mismo en diversos procesos químicos como polimerización, alquilación e hidrogenación.","LUTECIO"],
                ["Actualmente se utiliza en los microprocesadores en remplazando al silicio","HAFNIO"],
                ["Es utilizado en la fabricación de condensadores electrolíticos usados en los aparatos electrónicos como los celulares, GPS, satélites, tv de plasma, mp3, forma aleaciones que resisten la corrosión la corrosión en plantas químicas y en aeronáutica.","TÁNTALO"],
                ["Se utiliza en la fabricación de filamentos de las lámparas incandescentes, cableado en los hornos eléctricos, aleaciones de acero, fabricación de bujías, contactos eléctricos, herramientas de corte.","WOLFRAMIO"],
                ["Sirve como catalizador de reacciones de refinamiento de petróleo, en filamentos incandescentes, como recubrimiento de joyería, en la construcción de motores de aviones, en varillas para soldaduras.","RENIO"],
                ["Ayuda en el endurecimiento de las aleaciones. Al formar aleación con el platino se utiliza para fabricar patrones de medida y peso, se utiliza en la fabricación de puntas de bolígrafos, filamentos eléctricos.","OSMIO"],
                ["Sirve para fabricar patrones de medida, crisoles, aleaciones con el oro y el osmio, en la fabricación de bujías para helicópteros.","IRIDIO"],
                ["Es utilizado en joyería, como catalizador en los vehículos para reducir la emisión de gases contaminantes, en la fabricación de discos duros en las computadoras, fibra óptica.","PLATINO"],
                ["En la industria joyera de forma aleada para fabricar joyas, en la fabricación de monedas, en una pequeña cantidad se encuentra en diversos aparatos eléctricos como los celulares, calculadoras.","ORO"],
                ["Es utilizado en la producción de espejos, termostatos de pared para calefacciones, termómetros, barómetros, himanómetros, bombillas incandescentes en el tratamiento del oro y la plata, se utiliza también en el curtido de pieles, en la fotografía y fotograbado, en la industria de los explosivos.","MERCURIO"],
                ["Fabricación de vidrios con un bajo punto de fusión, usado en componentes electronicos, es utilizado en las pruebas de esfuerzo para conocer el funcionameinto del corazón","TALIO"],
                ["El principal uso de este elemento está destinado a la fabricación de baterías, es menos común en la actualidad pero es también utilizado como aditivo para la gasolina.","PLOMO"],
                ["Se utiliza principalmente en aleaciones de bajo punto de fusión y para la industria electrónica, sus compuestos tienen varios usos, en medicina el  subsalicilato de bismuto se utiliza para el tratamiento de la diarrea.","BISMUTO"],
                ["Los isótopos del polonio son una buena fuente de radiación alfa pura. Se usan en la investigación nuclear con elementos tales como el berilio que emiten neutrones cuando son bombardeados con partículas alfa.","POLONIO"],
                ["No tiene usos conocidos.","ASTANO"],
                ["Este isótopo puede usarse en el tratamiento de algunos tumores malignos. El gas se pone en un tubo, comúnmente hecho de vidrio o de oro, llamado semilla de radón, que se introduce en el tejido enfermo.","RADÓN"],
                ["No tiene usos.","FRANCIO"],
                ["En la actualidad es usado en el tratamiento de unos pocos tipos de cáncer.","RADIO"],
                ["No tiene usos.","ACTINIO"],
                ["Su principal uso es en la fabricación de lámparas de gas portátiles por medio de un dispositivo llamado manguito de Welsbach.","TORIO"],
                ["No tiene usos.","PROTACTINIO"],
                ["Su principal uso es como combustible en las plantas nucleoeléctricas.El uranio metálico se usa como blanco en las radiografías de rayos X de alta energía, el nitrato se ha utilizado como tóner fotográfico y el acetato se usa en química analítica.","URANIO"],
                ["El 237Np se usa como componente en dispositivos de detección de neutrones.","NEPTUNIO"],
                ["Se usa como combustible nuclear para plantas de energía eléctrica y, desgraciadamente, para las armas nucleares.","PLUTONIO"],
                ["El 243Am se usa como blanco en aceleradores de partículas o reactores nucleares para la producción de elementos sintéticos más pesados.","AMERICIO"],
                ["Se utiliza principalmente para conseguir otros elementos de la serie de los actínidos, algunos de sus isótopos se usan como recubrimiento en sondas espaciales o satélites no tripulados, también puede ser utilizado como combustible","CURIO"],
                ["No tiene.","BERKELIO"],
                ["Hoy tiene aplicación práctica como fuente de neutrones de alta intensidad en sistemas electrónicos, en la investigación médica, en técnicas especiales para la determinación analítica de metales como oro y plata, en la determinación del agua en el petróleo.","CALIFORNIO"],
                ["No tiene usos.","EINSTENIO"],
                ["No tiene usos.","FERMIO"],
                ["El isótopo producido fue el 256-Md (vida media de 76 minutos).","MENDELEVIO"],
                ["Es un elemento sintético de la tabla periódica cuyo símbolo es No y su número atómico es 102, llamado así en honor del inventor Alfred Nobel","NOLEBIO"],
                ["Experimentos químicos confirmaron que el lawrencio se comporta homólogamente al lutecio y es químicamente similar a otros actínidos.","LAWRENCIO"],
                ["Es un elemento químico de la tabla periódica cuyo símbolo es Rf y su número atómico es 104. Su nombre fue elegido en honor del Barón Ernest Rutherford.","RUTHERFORDIO"],
                ["Es un elemento sintético y radiactivo; y su isótopo más estable conocido, dubnio-268, tiene un período de semidesintegración de aproximadamente veintiocho horas.","DUBNIO"],
                ["Es un elemento sintético cuyo isótopo más estable es el 271Sg que tiene una vida media de 2,4 minutos. Su naturaleza química es similar a la del wolframio.","SEABORGIO"],
                ["Elemento químico que se espera que tenga propiedades químicas semejantes a las del elemento renio.","BOHRIO"],
                ["El hassio fue sintetizado por primera vez en 1984 por el grupo de investigación alemán Gesellschaft für Schwerionenforschung localizado en Darmstadt. El nombre hassio propuesto por el grupo se debe al estado alemán de Hesse en el que se encuentra el GSI.","HASSIO"],
                ["El darmstadio es un elemento que no existe en la naturaleza, de tipo transactínido, que se se produce en forma sintética y únicamente en el laboratorio.","DARMSTADTIO"],
                ["Fue descubierto en 1994 por científicos alemanes en Darmstadt.","ROENTGENIO"],
                ["Su apariencia física no se conoce aún, pero podría hacerse, sabiendo que por ahora el isótopo conocido, de 285 de masa atómica, tiene una vida media de 0,24 ms.","COPERNICIO"],
                ["Es el nombre temporal para el elemento sintético de la tabla periódica cuyo símbolo temporal es Uut y su número atómico es 113","NIHONIUM"],
                ["Experimentos químicos muy recientes han indicado fuertemente que el elemento 114 no posee propiedades 'eka'-plomo y parece comportarse como el primer elemento superpesado, que presenta propiedades similares a los gases nobles debido a efectos relativistas.","FLEROVIO"],
                ["Es el nombre temporal del elemento sintético de la tabla periódica cuyo símbolo es Uup y cuyo número atómico es 115 (de ahí su nombre temporal).","MOSCOVIUM"],
                ["Es el nombre del elemento sintético de la tabla periódica cuyo símbolo es Lv y su número atómico es 116","LIVERMONIO"],
                ["Su descubrimiento se anunció en 2010 y fue fruto de una colaboración entre científicos rusos y estadounidenses en el Instituto Central de Investigaciones Nucleares de Dubná, Rusia.","TENESSINNE"],
                ["El átomo de ununoctio es radiactivo y altamente inestable, por lo que desde 2002 sólo se han detectado tres o posiblemente cuatro átomos del isótopo.","OGANESSON"]]
    
    /* var Nivel1:[[String]] = [["Se utiliza para propulsar cohetes espaciales","HIDROGENO"],["Se utiliza en el tratamiento de tumores de los ojos","HELIO"], ["Sirve para hacer baterías eléctricas, lentes de telescopios y cerámica.","LITIO"], ["Fabricación de pantallas de radiación para aparatos de rayos X","BERILIO"],["Fabricación de vidrios  y esmaltes","BORO"],["Se producen grafito para los lápices","CARBONO"],["Producción de fertilizantes, explosivos, colorantes y amoniaco","NITRÓGENO"],["Se utiza en forma líquida como combustible de cohetes","OXÍGENO"],["Se utiliza para hacer pasta de dientes bucales","FLÚOR"],["Se utiliza para hacer tubos incandescentes o pantallas","NEÓN"],["Se utiliza para fabricar lámparas de vapor de sodio","SODIO"],["Es muy usado para construcciones metálicas ligeras","MAGNESIO"],["Se utiliza para la fabricación de materiales de cocina","ALUMINIO"],["Se utiliza como material refractario, se usa en cerámicas y esmaltados","SILICIO"],["El fósforo rojo se utiliza en la fabricación de cerillos","FÓSFORO"],
        ["AZUFRE","S"],["CLORO","Cl"],["ARGÓN","Ar"], ["POTASIO","K"], ["CALCIO","Ca"], ["ESCANDIO","Sc"], ["TITANIO","Ti"], ["VANADIO","V"], ["CROMO","Cr"], ["MANGANESO","Mn"], ["HIERRO","Fe"], ["COBALTO","Co"], ["NIQUEL","Ni"], ["COBRE","Cu"], ["CINC/ZINC","Zn"], ["GALIO","Ga"], ["GERMANIO","Ge"], ["ARSÉNICO","As"], ["SELENIO","Se"], ["BROMO","Br"], ["KRIPTÓN","Kr"], ["RUBIDIO","Rb"], ["ESTRONCIO","Sr"], ["YTRIO","Y"], ["CIRCONIO","Zr"], ["NIOBIO","Nb"], ["MOLIBDENO","Mo"], ["TECNECIO","Tc"], ["RUTENIO","Ru"], ["RODIO","Rh"], ["PALADIO","Pd"], ["PLATA","Ag"], ["CADMIO","Cd"], ["INDIO","In"], ["ESTAÑO","Sn"], ["ANTIMONIO","Sb"], ["TELURO","Te"], ["YODO","I"], ["XENÓN","Xe"], ["CESIO","Cs"], ["BARIO","Ba"], ["LANTANO","La"], ["CERIO","Ce"], ["PRASEODIMIO","Pr"], ["NEODIMIO","Nd"], ["PROMETIO","Pm"], ["SAMARIO","Sm"], ["EUROPIO","Eu"], ["GADOLINIO","Gd"], ["TERBIO","Tb"], ["DISPROSIO","Dy"], ["HOLMIO","Ho"], ["ERBIO","Er"], ["TULIO","Tm"], ["YTERBIO","Yb"], ["LUTECIO","Lu"], ["HAFNIO","Hf"], ["TÁNTALO","Ta"], ["WOLFRAMIO","W"], ["RENIO","Re"], ["OSMIO","Os"], ["IRIDIO","Ir"], ["PLATINO","Pt"], ["ORO","Au"], ["MERCURIO","Hg"], ["TALIO","Tl"], ["PLOMO","Pb"], ["BISMUTO","Bi"], ["POLONIO","Po"], ["ASTATO","At"], ["RADÓN","Rn"], ["FRANCIO","Fr"], ["RADIO","Ra"], ["ACTINIO","Ac"], ["TORIO","Th"], ["PROTACTINIO","Pa"], ["URANIO","U"], ["NEPTUNIO","Np"], ["PLUTONIO","Pu"], ["AMERICIO","Am"], ["CURIO","Cm"], ["BERKELIO","Bk"], ["CALIFORNIO","Cf"], ["EINSTEINIO","Es"], ["FERMIO","Fm"], ["MENDELEVIO","Md"], ["NOBELIO","No"], ["LAWRENCIO","Lr"], ["RUTHERFORDIO","Rf"], ["DUBNIO","Db"], ["SEABORGIO","Sg"], ["BOHRIO","Bh"], ["HASSIO","Hs"], ["MEITNERIO","Mt"], ["DARMSTADTIO","Ds"], ["ROENTGENIO","Rg"], ["COPERNICIO","Cn"], ["UNUNTRIO","Uut"], ["FLEROVIO","Fl"], ["UNUNPENTIO","Uup"], ["LIVERMORIO","Lv"], ["UNUNSEPTIO","Uus"], ["UNUNOCTIO","Uuo"]]*/
    
   
    @IBOutlet weak var Frases: UITextView!
    @IBOutlet weak var Frase: UILabel!
    @IBOutlet weak var EOp1: UIButton!
    @IBOutlet weak var EOp2: UIButton!
    @IBOutlet weak var EOp3: UIButton!
    @IBOutlet weak var EOp4: UIButton!
    @IBOutlet weak var Mensaje: UILabel!
    @IBOutlet weak var Puntos: UILabel!
    

    
    @IBAction func Opcion1(sender: AnyObject) {
        if (EOp1.titleLabel!.text! == Nivel1[num][1] ){
            Mensaje.text = "Tu respuesta es: Correcta"
            CalcularFrase()
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
            CalcularFrase()
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
            CalcularFrase()
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
            CalcularFrase()
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
        
        
        OpcionesEsp = /*["Tengo sueño todos los días","Un dia hermoso","Trabajar todo el tiempo","Soy todo un veterano","Con buen carácter","Siempre con vestido rojo","Más tarde","Todo al mismo tiempo","Algúnas veces","En general, todo bien","Día por día","Por ejemplo","Para siempre","Cuanto tiempo","Al pie de la letra","De una vez","Por todas partes","Ser lo mismo","De todos modos","Desde el principio","Despues de todo","Sobre todo","Estar de acuerdo","Lleno de vida","Sin remordimientos","Estar deprimida","Despedir a alguien","Jugar a algo","Lo mejor que hay","Darse cuenta de la verdad","Buena persona"]*/
        
        ["UCRANIO", " LIVERMOR", " COPERNICO", " LARENCIO ", " GASOLINIO ", "SAMANIO","NOVELIO"," PROMETTIO"," BIZMUTO"," INDIRO","ABSTATO","ROCTINIO","RODO","PENTUNIUM","BORHIO","RUTTENIO","POLONIUM","HANNIO","FRAMIO", "VARIO","CELSO","RODON","NOCTIO","METNERIO","ARMSTADTIO","HACIO","DINIO","ENTENIO","MORIO","CARNITRIO","BORGIUS","CANDIDUS","ASTACIO","KRIPTONIO","OZMIO","TANTALIM","VERQUELIO","TOLIO","PLATTA", "COFRE","HANIO","AMERICO","PLUTTON","MENDELEZO","LUCRECIO","PLANTANIUM","NEODIM","CADNIO","PALADO", "ESTRON", "KERMIO", "OCCI", "UNNSEPTIO", "FLAROVIO", "LOVERMORIO", "PRACEODINIO", "LAWRENCIO", "EUROPPIO", "MEITNERIOL", "HILITIO", "DUBIO", "FORDIO", "RUTENUO"]
        super.viewDidLoad()
        //
        Regresar.enabled = false
        Regresar.hidden = true
        
        CalcularFrase()
        PuntajeFrase = 0
        Puntos.text = "Puntaje: \(PuntajeFrase)"
        
        
        ButtonAudioPlayer = try! AVAudioPlayer(contentsOfURL: ButtonAudioURL)
        ButtonAudioPlayer2 = try! AVAudioPlayer(contentsOfURL: ButtonAudioURL2)
        
    }
    
    func CalcularFrase(){
        num = Int(arc4random_uniform(115))
        let posicion = Int(arc4random_uniform(4))
        Frases.text = Nivel1[num][0]

        
        let Opalabra = Int(arc4random_uniform(60))
        
        
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