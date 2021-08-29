namespace theCoffeeHouse.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("HoaDon")]
    public partial class HoaDon
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public HoaDon()
        {
            ChiTietHoaDons = new HashSet<ChiTietHoaDon>();
        }

        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Required(ErrorMessage = "Mã hóa đơn không được để trống")]
        public int maHoaDon { get; set; }

        [Required(ErrorMessage = "Mã khách hàng không được để trống")]
        public int? maKhachHang { get; set; }

        [Required(ErrorMessage = "Ngày bán không được để trống")]
        public DateTime? ngayBan { get; set; }

        [Required(ErrorMessage = "Tổng số lượng không được để trống")]
        public int? tongSoLuong { get; set; }


        public double? giamGia { get; set; }

        public double? thanhTien { get; set; }

        [StringLength(50)]
        [Required(ErrorMessage = "Hình thức thanh toán không được để trống")]

        public string hinhThucThanhToan { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietHoaDon> ChiTietHoaDons { get; set; }

        public virtual ThongTinKhachHang ThongTinKhachHang { get; set; }
    }
}
