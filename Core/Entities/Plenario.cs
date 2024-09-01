using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Core
{
 public class Plenario
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public DateTime Data { get; set; }
        public int QuantidadeVagas { get; set; }
        public string Tipo { get; set; }
        public string NomeCondicionante { get; set; }
        public string EstadoUF { get; set; }
    }
}