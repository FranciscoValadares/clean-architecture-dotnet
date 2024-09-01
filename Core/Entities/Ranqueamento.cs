using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Core
{
public class Ranqueamento
    {
        public int Id { get; set; }
        public int PontuacaoConselheiro { get; set; }
        public string NomeConselheiro { get; set; }
        public string DataRanqueamento { get; set; }
        public string NomeEvento { get; set; }
    }
}