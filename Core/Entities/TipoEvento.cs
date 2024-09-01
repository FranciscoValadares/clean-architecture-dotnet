using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Core.Entities
{
 public class TipoEvento
    {
        public int IdTipoEvento { get; set; }
        public string NomeTipoEvento { get; set; }
        public int ValorPontuacao { get; set; }

        public TipoEvento(int idTipoEvento, string nomeTipoEvento, int valorPontuacao)
        {
            IdTipoEvento = idTipoEvento;
            NomeTipoEvento = nomeTipoEvento;
            ValorPontuacao = valorPontuacao;
        }
    }
}