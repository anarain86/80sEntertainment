using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace _80sEntertainment.Business_Logic.Interface
{
    /// <summary>
    /// This interface gives a public interface for any class that dervies from AbstractBaseBusinessLogic.
    /// </summary>
    /// <typeparam name="TDto">Data Transfer Object.</typeparam>
    /// <typeparam name="TDao"></typeparam>
    internal interface IBaseBusinessLogic<TDao, TDto>
    {
        TDao ConvertItemToDaoItem(TDto item);
        TDto ConvertItemToDtoItem(TDao item);
        void AddThroughDal(TDto item);
        void ModifyThroughDal(TDto item);
        List<TDto> GetListFromDal();
        List<TDto> ConvertListToDtoList(List<TDao> list);
        TDto GetItemFromDalById(int id);
        Task Delete(string table, string fieldName, int id);
    }
}
