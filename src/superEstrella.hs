data Personaje = Personaje {
    nombre :: String,
    basicPower :: String,
    superPower :: String,
    poderActivo :: Bool,
    cantidadDeVida :: Int
} deriving (Show)

personajeEspina :: Personaje
personajeEspina = Personaje {
    nombre = "Espina",
    basicPower = "bolaEspinosa",
    superPower = "granadaDeEspinas",
    poderActivo = False,
    cantidadDeVida = 10000
}

personajePamela :: Personaje
personajePamela = Personaje {
    nombre = "Pamela",
    basicPower = "lluviaDeTuercas",
    superPower = "torretaCurativa",
    poderActivo = False,
    cantidadDeVida = 10000
}


