namespace WebDongHo.DbContext
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Account")]
    public partial class Account
    {
        public int AccountID { get; set; }

        [Required]
        [StringLength(50)]

        [Display(Name ="Tên tài khoản")]
        public string Username { get; set; }

        [Required]
        [StringLength(50)]
        public string Password { get; set; }

        [StringLength(50)]

        [Display(Name ="Họ tên")]
        public string Hoten { get; set; }

        [Display(Name = "Ngày sinh")]
        public DateTime? Ngaysinh { get; set; }

        [Display(Name = "Giới tính")]
        public bool? Gioitinh { get; set; }

        [StringLength(50)]

        [Display(Name = "Email")]
        public string Email { get; set; }

        [Display(Name = "Số điện thoại")]
        [StringLength(20)]
        public string SDT { get; set; }

        [Display(Name = "Địa chỉ")]
        [StringLength(100)]
        public string Diachi { get; set; }

        
        [StringLength(250)]
        public string UrlAvatar { get; set; }

        [Display(Name = "Phân quyền")]
        public int? Role { get; set; }

        [Display(Name = "Trạng thái")]
        public int? Trangthai { get; set; }
    }
}
