using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BlazorApp.Shared
{
    public class ToDo
    {
        [Key]
        public int Id { get; set; }

        [Required (ErrorMessage = "Title is required")]
        [MaxLength(50)]
        [MinLength(3)]
        public string Title { get; set; } = string.Empty;

        [StringLength(500)]
        [MaxLength(500)]
        [MinLength(3)]
        [Required(ErrorMessage = "Desc is required")]
        public string Description { get; set; } = string.Empty;

        public DateTime CreatedDate { get; set; } = DateTime.Now;
    }
}
