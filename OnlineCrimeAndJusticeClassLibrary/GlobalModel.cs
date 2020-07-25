using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnlineCrimeAndJusticeClassLibrary
{
    /// <summary>
    /// This class will represent the golbal items between entities
    /// </summary>
    class GlobalModel
    {
        public int id { get; set; }
        public string Name { get; set; }

        public string FatherName { get; set; }

        public string CNIC { get; set; }
        public string Gender { get; set; }
    }
}
