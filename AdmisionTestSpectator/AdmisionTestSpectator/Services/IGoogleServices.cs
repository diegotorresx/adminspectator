using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace AdmisionTestSpectator.Services
{
    public interface IGoogleServices<Item>
    {
        Task<IEnumerable<Item>> GetFitnessActivityData();
    }
}
