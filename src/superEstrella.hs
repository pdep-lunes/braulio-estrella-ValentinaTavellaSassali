
data Personaje = Personaje {
    nombre :: String,
    basicPower :: String,
    superPower :: String,
    poderActivo :: Bool,
    cantidadDeVida :: Int
} deriving (Show)

espina :: Personaje
espina = Personaje {
    nombre = "Espina",
    basicPower = "bolaEspinosa",
    superPower = "granadaDeEspinas",
    poderActivo = True,
    cantidadDeVida = 4800
}

pamela :: Personaje
pamela = Personaje {
    nombre = "Pamela",
    basicPower = "lluviaDeTuercas",
    superPower = "torretaCurativa",
    poderActivo = False,
    cantidadDeVida = 9600
}

bolaEspinosa :: Personaje -> Personaje
bolaEspinosa unPersonaje
  | cantidadDeVida unPersonaje > 1000 = unPersonaje {
        cantidadDeVida = cantidadDeVida unPersonaje - 1000
    }
  | otherwise = unPersonaje {
        cantidadDeVida = 0
    }

lluviaDeTuercas :: Personaje -> String -> Personaje
lluviaDeTuercas unPersonaje tipo
  | tipo == "sanador" = unPersonaje {
        cantidadDeVida = cantidadDeVida unPersonaje + 800
        }
  | tipo == "dañino" = unPersonaje {
        cantidadDeVida = cantidadDeVida unPersonaje `div` 2
        }
  | otherwise = unPersonaje

granadaDeEspinas :: Personaje -> Int -> Personaje
granadaDeEspinas unPersonaje radioExplosion
  | radioExplosion > 3 = unPersonaje {
        nombre = nombre unPersonaje ++ " Espina estuvo aquí"
    }
  | radioExplosion > 3 && cantidadDeVida unPersonaje < 800 = unPersonaje {
        poderActivo = False,
        cantidadDeVida = 0
    }
  | otherwise = bolaEspinosa unPersonaje

torretaCurativa :: Personaje -> Personaje
torretaCurativa unPersonaje = unPersonaje {
    poderActivo = True,
    cantidadDeVida = cantidadDeVida unPersonaje * 2
}
