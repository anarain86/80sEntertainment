using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using _80sEntertainment.Business_Logic.Interface;
using _80sEntertainment.Constants;
using _80sEntertainment.DAL;

namespace _80sEntertainment.Business_Logic
{
    public abstract class AbstractBaseBusinessLogic<TDao, TDto> : IBaseBusinessLogic<TDao, TDto>
    {
        protected readonly GenericAbstractDal<TDao> Dal;

        protected AbstractBaseBusinessLogic() : this(null) { }

        protected AbstractBaseBusinessLogic(GenericAbstractDal<TDao> dal)
        {
            Dal = dal;
        }

        public abstract TDao ConvertItemToDaoItem(TDto item);
        public abstract TDto ConvertItemToDtoItem(TDao item);

        public void AddThroughDal(TDto item)
        {
            Dal.AddOrModifyDto(ConvertItemToDaoItem(item), AddOrModify.Add);
        }

        public void ModifyThroughDal(TDto item)
        {
            Dal.AddOrModifyDto(ConvertItemToDaoItem(item), AddOrModify.Modify);
        }

        public List<TDto> GetListFromDal()
        {
            return ConvertListToDtoList(Dal.GetList());
        }

        public List<TDto> ConvertListToDtoList(List<TDao> list)
        {
            return list.Select(ConvertItemToDtoItem).ToList();
        }

        public TDto GetItemFromDalById(int id)
        {
            return ConvertItemToDtoItem(Dal.GetItem(id));
        }

        public async Task Delete(string table, string fieldName, int id)
        {
            await Dal.DeleteAsync(table, fieldName, id);
        }
    }
}
