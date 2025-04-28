data Personaje = Personaje {
    nombre :: String,
    basicPower :: String,
    superPower :: String,
    poderActivo :: Bool,
    cantidadDeVida :: Int
}

personajeEspina :: Personaje
personajeEspina unPersonaje = unPersonaje {
    nombre = "Espina",
    basicPower = "bolaEspinosa",
    superPower = "granadaDeEspinas",
    poderActivo = False,
    cantidadDeVida = 1000
}

vidaDePersonaje :: Personaje -> Int
vidaDePersonaje unPersonaje = unPersonaje.cantidadDeVida

bolaEspinosa :: Personaje -> Personaje
bolaEspinosa unPersonaje = 