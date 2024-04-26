using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace AdmisionTestSpectator.Services
{
    public interface IGoogleServices
    {
        Task<string> GetFitnessActivityData();
    }
}
