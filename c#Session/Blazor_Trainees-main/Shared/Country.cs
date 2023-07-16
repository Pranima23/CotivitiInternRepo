using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BlazorApp.Shared
{
    public class Country
    {
        public int Id { get; set; }
        public string CountryName { get; set; } = string.Empty;
        public List<Province> Provinces { get; set; }
    }


    public partial class Region
    {
        public Region()
        {
            this.Branches = new HashSet<Branch>();
        }
        public int Id { get; set; }
        public string RegionName { get; set; }
        public virtual ICollection<Branch> Branches { get; set; }
    }
    public partial class Branch
    {
        public Branch()
        {
            this.UserBranches = new HashSet<UserBranch>();
        }
        public int Id { get; set; }
        public string BranchName { get; set; }
        public Nullable<int> RegionId { get; set; }
        public virtual Region Region { get; set; }
        public virtual ICollection<UserBranch> UserBranches { get; set; }
    }
    public partial class User
    {
        public User()
        {
            this.UserBranches = new HashSet<UserBranch>();
        }
        public int Id { get; set; }
        public string UsernameName { get; set; }
        public virtual ICollection<UserBranch> UserBranches { get; set; }
    }
    public partial class UserBranch
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public int BranchId { get; set; }
        public virtual Branch Branch { get; set; } = new Branch();
        public virtual User User { get; set; }
    }
}
