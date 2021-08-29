namespace theCoffeeHouse.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TinTuc")]
    public partial class TinTuc
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        [Required(ErrorMessage = "Mã tin tức không được để trống")]
        public int maTinTuc { get; set; }

        [StringLength(1000)]
        [Required(ErrorMessage = "Tiêu đề không được để trống")]
        public string tieuDe { get; set; }

        [StringLength(3000)]
        [Required(ErrorMessage = "Nội dung không được để trống")]
        public string noiDung { get; set; }

        [StringLength(30)]
        [Required(ErrorMessage = "Hình ảnh không được để trống")]
        public string hinhAnh { get; set; }

        [Required(ErrorMessage = "Ngày đăng không được để trống")]
        public DateTime? ngayDang { get; set; }
    }
}
