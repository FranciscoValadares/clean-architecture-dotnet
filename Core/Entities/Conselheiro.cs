using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Core
{
    public class Conselheiro
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public int PontuacaoConselheiro { get; set; }
        public bool Excluir { get; set; }
    }
}