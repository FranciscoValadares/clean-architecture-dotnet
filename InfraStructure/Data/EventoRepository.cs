using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Core;
using Core.Interfaces;

namespace InfraStructure.Data
{
 public class EventoRepository : IEventoRepository
    {
        // In a real-world application, this would connect to a database.
        private readonly List<Evento> _eventos = new List<Evento>();

        public async Task<Evento> GetByIdAsync(int id)
        {
            return await Task.FromResult(_eventos.FirstOrDefault(p => p.Id == id));
        }

        public async Task<IEnumerable<Evento>> GetAllAsync()
        {
            return await Task.FromResult(_eventos);
        }

        public async Task AddAsync(Evento evento)
        {
            _eventos.Add(evento);
            await Task.CompletedTask;
        }

        public async Task UpdateAsync(Evento evento)
        {
            var existingProduct = _eventos.FirstOrDefault(p => p.Id == evento.Id);
            if (existingProduct != null)
            {
                existingProduct.Nome = evento.Nome;
                existingProduct.NomeCondicionante = evento.NomeCondicionante;
                existingProduct.PontuacaoConselheiro = evento.PontuacaoConselheiro;
            }
            await Task.CompletedTask;
        }

        public async Task DeleteAsync(int id)
        {
            var product = _eventos.FirstOrDefault(p => p.Id == id);
            if (product != null)
            {
                _eventos.Remove(product);
            }
            await Task.CompletedTask;
        }
    }

}