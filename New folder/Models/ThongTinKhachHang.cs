namespace theCoffeeHouse.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ThongTinKhachHang")]
    public partial class ThongTinKhachHang
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ThongTinKhachHang()
        {
            GioHangs = new HashSet<GioHang>();
            HoaDons = new HashSet<HoaDon>();
            PhanHois = new HashSet<PhanHoi>();
        }

        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int maKhachHang { get; set; }

        [StringLength(30)]
        public string tenDangNhap { get; set; }

        [StringLength(40)]
        public string tenKhachHang { get; set; }

        [Column(TypeName = "date")]
        public DateTime? ngaySinh { get; set; }

        public bool? gioiTinh { get; set; }

        [Required]
        [StringLength(10)]
        public string soDienThoai { get; set; }

        [StringLength(30)]
        public string email { get; set; }

        [Required]
        [StringLength(30)]
        public string diaChi { get; set; }

        [StringLength(100)]
        public string ghiChu { get; set; }

        [StringLength(100)]
        public string hinhAnh { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GioHang> GioHangs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HoaDon> HoaDons { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhanHoi> PhanHois { get; set; }

        public virtual TaiKhoan TaiKhoan { get; set; }
    }
}
