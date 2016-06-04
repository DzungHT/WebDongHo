namespace WebDongHo.DbContext
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Loaitintuc")]
    public partial class Loaitintuc
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Loaitintuc()
        {
            Tintucs = new HashSet<Tintuc>();
        }

        public int LoaitintucID { get; set; }

        [Required]
        [StringLength(50)]
        public string Ten { get; set; }

        public int? Thutu { get; set; }

        public bool Hienthi { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tintuc> Tintucs { get; set; }
    }
}
