using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using _80sEntertainment.Constants;
using _80sEntertainment.Models.DAO;

namespace _80sEntertainment.DAL
{
    public abstract class _80sEntertainmentAbstractDal<T> : GenericAbstractDal<T> where T : _80sEntertainmentAbstractDAO
    {
        public abstract override Task<int> AddOrModifyDto(T dao, AddOrModify action);

        protected override object GetValueFromStoredProc<TY>(string storedProc, int id = Application.GetAll)
        {
            var spVal = DbContext.Set<T>().FromSql(Application.DatabaseSchema + storedProc + " @id = {0}", "id");

            if (id == Application.GetAll)
            {
                return spVal.ToListAsync();
            }
            return spVal.SingleOrDefault();
        }
    }
}
