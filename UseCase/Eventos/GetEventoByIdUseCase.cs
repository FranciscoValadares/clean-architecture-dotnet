using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Core;
using Core.Interfaces;

namespace UseCase.Eventos
{
public class GetEventoByIdUseCase
    {
        private readonly IEventoRepository _eventoRepository;

        public GetEventoByIdUseCase(IEventoRepository eventoRepository)
        {
            _eventoRepository = eventoRepository;
        }

        public async Task<Evento> ExecuteAsync(int id)
        {
            return await _eventoRepository.GetByIdAsync(id);
        }
    }
}