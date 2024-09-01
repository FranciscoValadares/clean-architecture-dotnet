using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Core
{
public class Participacao
    {
        public int Id { get; set; }
        public int ConselheiroId { get; set; }
        public int EventoId { get; set; }
        public int PontuacaoConselheiro { get; set; }
    }
}