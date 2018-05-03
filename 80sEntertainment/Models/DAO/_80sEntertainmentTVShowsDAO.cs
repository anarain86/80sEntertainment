using System;
using _80sEntertainment.Models.DAO.Interface;

namespace _80sEntertainment.Models.DAO
{
    [Serializable]
    public class _80sEntertainmentTVShowsDAO : _80sEntertainmentAbstractDAO
    {
        public _80sEntertainmentTVShowsDAO(int ent80sId)
        {
            Ent80sId = ent80sId;
        }

        public int Id { get; set; }
        public string ShowName { get; set; }
        public int GenreId { get; set; }
        public int YearId { get; set; }
        public string EpisodeName { get; set; }
        public int SeasonNumber { get; set; }
        public int EpisodeNumber { get; set; }
    }
}
