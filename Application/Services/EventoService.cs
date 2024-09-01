using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Core;
using UseCase.Eventos;

namespace Application.Services
{
public class EventoService
    {
        private readonly GetEventoByIdUseCase _getEventoByIdUseCase;

        public EventoService(GetEventoByIdUseCase getEventoByIdUseCase)
        {
            _getEventoByIdUseCase = getEventoByIdUseCase;
        }

        public async Task<Evento> GetProductByIdAsync(int id)
        {
            return await _getEventoByIdUseCase.ExecuteAsync(id);
        }
    }
}