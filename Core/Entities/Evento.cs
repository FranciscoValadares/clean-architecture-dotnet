using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Core.Entities;

namespace Core
{
 public class Evento
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Tipo { get; set; }
        public string NomeCondicionante { get; set; }
        public DateTime Data { get; set; }
        public int PontuacaoConselheiro { get; set; }
        public TipoEvento TipoEvento { get; set; }
    }
}