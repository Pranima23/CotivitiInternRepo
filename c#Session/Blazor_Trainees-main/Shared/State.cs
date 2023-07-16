using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BlazorApp.Shared
{
    public class Province
    {
        public int Id { get; set; }
        public string ProvinceName { get; set; } = string.Empty;

        [ForeignKey("Country")]
        public int CountryId { get; set; }
        public virtual Country country { get; set; }
    }
}
