using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using _80sEntertainment.Constants;
using _80sEntertainment.Models.DAO;

namespace _80sEntertainment.DAL
{
    public class _80sEntertainmentTVShowsDal : _80sEntertainmentAbstractDal<_80sEntertainmentTVShowsDAO>
    {
        public override Task<int> AddOrModifyDto(_80sEntertainmentTVShowsDAO dao, AddOrModify action)
        {
            // Order is VERY IMPORTANT. It must exactly follow the order of the parameters of the
            //  stored procedure it will be using in the database. Do not include the output
            //  parameter in the stored procedure. The base method will already take account of it.

            // Also, don't include the primary id of the table in the parameterList list, val will be used
            //  and it will be the first one inserted in the list, so please make sure the primary id
            //  parameter is the first one in the stored procedure.
            var theList = new List<object>
            {
                dao.ShowName,
                dao.YearId,
                dao.GenreId,
                dao.EpisodeName,
                dao.SeasonNumber,
                dao.EpisodeNumber,
                dao.Ent80sId
            };

            return AddOrModifyDtoAsync(action, dao.Id, theList);
        }
    }
}
