namespace WebDongHo.DbContext
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Nhanhieu")]
    public partial class Nhanhieu
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Nhanhieu()
        {
            Sanphams = new HashSet<Sanpham>();
        }

        public int NhanhieuID { get; set; }

        [Required]
        [StringLength(50)]
        [Display(Name = "Tên nhãn hiệu")]
        public string Ten { get; set; }

        [Display(Name = "Thứ tự hiển thị")]
        public int? Thutu { get; set; }

        [Display(Name = "Hiển thị")]
        public bool Hienthi { get; set; }

        [Display(Name = "Nổi bật")]
        public bool IsDel { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Sanpham> Sanphams { get; set; }
    }
}
