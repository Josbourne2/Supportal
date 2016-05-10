using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Supportal
{
    public class Mon_Instance
    {

        
        [Key]
        public int Id { get; set; }
        
        [StringLength(101)]
        public string Server { get; set; }


    }
}