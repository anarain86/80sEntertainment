using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using _80sEntertainment.Constants;
using _80sEntertainment.Models.DAO;

namespace _80sEntertainment.DAL.Interface
{
    interface IGenericDal<T>
    {
        List<T> GetList(int id = Application.GetAll);
        T GetItem(int id);
        Task<int> AddOrModifyDto(T dao, AddOrModify action);
        Task DeleteAsync(string tableName, string fieldName, int id);
    }
}
