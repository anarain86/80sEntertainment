using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace _80sEntertainment.Models.DAO
{
    [Serializable]
    public class _80sEntertainmentDAO
    {
        [Key]
        public int Id { get; set; }
        public int MediaTypeId { get; set; }
        public string ImageLink { get; set; }
        public string MediaLink { get; set; }
        public string Summary { get; set; }
    }
}
