class RiparazioniModel {
  final int codice;
  final String nome;
  final String oggetti;
  final String lavoriFaFare;

  RiparazioniModel(
      {required this.codice,
      required this.nome,
      required this.oggetti,
      required this.lavoriFaFare});
}

final envelopes = [
  RiparazioniModel(
      codice: 1, nome: "Gino", oggetti: "1 anello", lavoriFaFare: " saldare"),
  RiparazioniModel(
      codice: 1,
      nome: "Paolo",
      oggetti: "1 bracciale",
      lavoriFaFare: " saldare"),
  RiparazioniModel(
      codice: 1, nome: "Sole", oggetti: "1 orologio", lavoriFaFare: " saldare"),
  RiparazioniModel(
      codice: 1,
      nome: "Luna",
      oggetti: "1 orecchino",
      lavoriFaFare: " saldare"),
  RiparazioniModel(
      codice: 1, nome: "MArio", oggetti: "1 tennis", lavoriFaFare: " saldare"),
];
