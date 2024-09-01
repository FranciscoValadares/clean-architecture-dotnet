using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Core.Interfaces
{
    public interface IEventoRepository
    {
        Task<Evento> GetByIdAsync(int id);
        Task<IEnumerable<Evento>> GetAllAsync();
        Task AddAsync(Evento evento);
        Task UpdateAsync(Evento evento);
        Task DeleteAsync(int id);
    }
}