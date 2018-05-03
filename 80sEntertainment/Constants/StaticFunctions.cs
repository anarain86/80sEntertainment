using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.ModelBinding;

namespace _80sEntertainment.Constants
{
    public static class Func
    {

        public static object GetDbNullValue(object value)
        {
            if (value == null)
            {
                return DBNull.Value;
            }

            return value;
        }

        public static List<string> AddErrorMesagesToView(ModelStateDictionary modelState)
        {
            //Get the child model's list of errors
            var query = from state in modelState.Values
                from error in state.Errors
                select error.ErrorMessage;

            return query.ToList();
        }

        // From http://stackoverflow.com/questions/20338154/mvc-model-boolean-display-yes-or-no
        public static string ToFriendlyString(this bool b)
        {
            return b ? "Yes" : "No";
        }

    }
}
