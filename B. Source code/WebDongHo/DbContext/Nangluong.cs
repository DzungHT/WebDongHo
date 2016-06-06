namespace WebDongHo.DbContext
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Nangluong")]
    public partial class Nangluong
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Nangluong()
        {
            Sanphams = new HashSet<Sanpham>();
        }

        public int NangluongID { get; set; }

        [Required]
        [StringLength(50)]
        [Display(Name = "Tên năng lượng")]
        public string Ten { get; set; }

        [Display(Name = "Thứ tự hiển thị")]
        public int? Thutu { get; set; }
        
        [Display(Name = "Cho phép hiển thị")]
        public bool Hienthi { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Sanpham> Sanphams { get; set; }
    }
}
