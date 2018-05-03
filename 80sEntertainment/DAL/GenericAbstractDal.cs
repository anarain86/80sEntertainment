using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using _80sEntertainment.Constants;
using _80sEntertainment.DAL.DbContext;
using _80sEntertainment.DAL.Interface;
using _80sEntertainment.Models.DAO;

namespace _80sEntertainment.DAL
{
    public abstract class GenericAbstractDal<T> : IGenericDal<T>
    {
        protected _80sEntertainmentContext DbContext;
        protected string ListStoredProc;
        protected string ItemStoredProc;
        protected string AddModStoredProc;
        public List<T> GetList(int id = Application.GetAll)
        {
            return (List<T>)GetValueFromStoredProc<T>(ListStoredProc);
        }

        public T GetItem(int id)
        {
            return (T)GetValueFromStoredProc<T>(ItemStoredProc, id);
        }

        public abstract Task<int> AddOrModifyDto(T dao, AddOrModify action);

        protected async Task<int> AddOrModifyDtoAsync(AddOrModify action, int primaryId, List<object> parametersList)
        {
            // Order is VERY IMPORTANT. It must exactly follow the order of the parameters of the
            //  stored procedure it will be using in the database. Do not include the output
            //  parameter in the stored procedure. The base method will already take account of it.

            // Also, don't include the primary id of the table in the parameterList list, 
            //  There's a parameter for that already, primaryID. 
            //  and it will be the first one inserted in the list, so please make sure the primary id
            //  parameter is the first one in the stored procedure.

            var val = action == AddOrModify.Add ? -1 : primaryId;

            SqlParameter output = new SqlParameter
            {
                ParameterName = "@output",
                Direction = System.Data.ParameterDirection.Output,
                SqlDbType = System.Data.SqlDbType.Int
            };

            var paramList = new List<SqlParameter> { new SqlParameter("@p0", val) };

            for (var i = 1; i < paramList.Count; i++)
            {
                paramList.Add(new SqlParameter("@p" + i, Func.GetDbNullValue(parametersList[i])));
            }

            // Stored Procedure's output should be the last parameter in the SQL stored procedure.
            paramList.Add(output);

            var sqlParams = string.Join(",", paramList.Select(x => x.ParameterName).ToList()) + " out";

            int t = await DbContext.Database.ExecuteSqlCommandAsync(Application.DatabaseSchema + AddModStoredProc + " " + sqlParams, paramList);

            return (int)output.Value;
        }

        public async Task DeleteAsync(string tableName, string fieldName, int id)
        {

            await DbContext.Database.ExecuteSqlCommandAsync(Application.DatabaseSchema + 
                "DeleteTable @table_name = {0}, @id_field_name = {1}, @id = {2}",
                "tableName", "fieldName", "id");
        }

        protected abstract object GetValueFromStoredProc<TY>(string storedProc, int id = Application.GetAll);
    }

}
