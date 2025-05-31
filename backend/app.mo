import Debug "mo:base/Debug";
import List "mo:base/List";

actor {
  // Lista en memoria para registrar los medicamentos consultados
  var registros : List.List<Text> = List.nil<Text>();

  // Función para registrar un medicamento
  public func registrar(nombre: Text) : async Text {
    registros := List.push(nombre, registros);
    Debug.print("Registrado: " # nombre);
    return "Medicamento '" # nombre # "' registrado.";
  };

  // Función para obtener todos los medicamentos registrados
  public query func obtenerRegistros() : async [Text] {
    return List.toArray(registros);
  };
};
