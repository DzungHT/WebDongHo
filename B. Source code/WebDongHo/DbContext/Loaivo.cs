namespace WebDongHo.DbContext
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Loaivo")]
    public partial class Loaivo
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Loaivo()
        {
            Sanphams = new HashSet<Sanpham>();
        }

        public int LoaivoID { get; set; }

        [Required]
        [StringLength(50)]

        [Display(Name = "Tên loại vỏ")]
        public string Ten { get; set; }

        [Display(Name = "Thứ tự hiển thị")]
        public int? Thutu { get; set; }

        [Display(Name = "Hiển thị")]
        public bool Hienthi { get; set; }

        
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Sanpham> Sanphams { get; set; }
    }
}
