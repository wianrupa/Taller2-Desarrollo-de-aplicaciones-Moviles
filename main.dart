void main() {

  print("Estudiante 1");

  EstudianteActivo wilmer =
  EstudianteActivo("Wilmer", "Ingeniería de Sistemas", 5);

  wilmer.mostrarDatos();
  wilmer.estudiar();
  wilmer.entrenar();
  wilmer.competir();


  print("\nEstudiante 2");

  EstudianteActivo ivan =
  EstudianteActivo("Iván", "Administración de Empresas", 3);

  ivan.mostrarDatos();
  ivan.estudiar();
  ivan.verPelicula();
  ivan.analizarPelicula();


  print("\nEstudiante 3");

  EstudianteActivo laura =
  EstudianteActivo("Laura (esas son malas)", "Derecho", 6);

  laura.mostrarDatos();
  laura.estudiar();
  laura.ensayar();
  laura.presentarseEnEvento();
}
abstract class EstudianteUnitecnar {

  String nombre;
  String programaAcademico;
  int semestre;

  EstudianteUnitecnar(this.nombre, this.programaAcademico, this.semestre);

  void estudiar();

  void mostrarDatos() {
    print("Estudiante $nombre pertenece al programa $programaAcademico y está en el semestre $semestre.");
  }
}
mixin ActividadDeportiva {

  void entrenar() {
    print("Está entrenando para representar a Unitecnar en el torneo.");
  }

  void competir() {
    print("Está participando en una competencia deportiva universitaria.");
  }
}


mixin ClubDeCine {

  void verPelicula() {
    print("Está viendo una película en el club de cine.");
  }

  void analizarPelicula() {
    print("Está participando en el debate de la película.");
  }
}


mixin GrupoMusical {

  void ensayar() {
    print("Está ensayando con el grupo musical de la universidad.");
  }

  void presentarseEnEvento() {
    print("Está presentándose en un evento cultural de Unitecnar.");
  }
}

class EstudianteActivo extends EstudianteUnitecnar
with ActividadDeportiva, ClubDeCine, GrupoMusical {

  EstudianteActivo(String nombre, String programaAcademico, int semestre)
  : super(nombre, programaAcademico, semestre);

  @override
  void estudiar() {
    print("$nombre está estudiando para sus exámenes finales.");
  }
}
