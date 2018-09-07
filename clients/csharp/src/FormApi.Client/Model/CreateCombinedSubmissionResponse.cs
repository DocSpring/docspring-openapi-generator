/* 
 * API V1
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: v1
 * 
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = FormApi.Client.Client.OpenAPIDateConverter;

namespace FormApi.Client.Model
{
    /// <summary>
    /// CreateCombinedSubmissionResponse
    /// </summary>
    [DataContract]
    public partial class CreateCombinedSubmissionResponse :  IEquatable<CreateCombinedSubmissionResponse>, IValidatableObject
    {
        /// <summary>
        /// Defines Status
        /// </summary>
        [JsonConverter(typeof(StringEnumConverter))]
        public enum StatusEnum
        {
            /// <summary>
            /// Enum Success for value: success
            /// </summary>
            [EnumMember(Value = "success")]
            Success = 1,

            /// <summary>
            /// Enum Error for value: error
            /// </summary>
            [EnumMember(Value = "error")]
            Error = 2

        }

        /// <summary>
        /// Gets or Sets Status
        /// </summary>
        [DataMember(Name="status", EmitDefaultValue=false)]
        public StatusEnum? Status { get; set; }
        /// <summary>
        /// Initializes a new instance of the <see cref="CreateCombinedSubmissionResponse" /> class.
        /// </summary>
        /// <param name="combinedSubmission">combinedSubmission.</param>
        /// <param name="status">status.</param>
        public CreateCombinedSubmissionResponse(CombinedSubmission combinedSubmission = default(CombinedSubmission), StatusEnum? status = default(StatusEnum?))
        {
            this.CombinedSubmission = combinedSubmission;
            this.Status = status;
        }
        
        /// <summary>
        /// Gets or Sets CombinedSubmission
        /// </summary>
        [DataMember(Name="combined_submission", EmitDefaultValue=false)]
        public CombinedSubmission CombinedSubmission { get; set; }


        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class CreateCombinedSubmissionResponse {\n");
            sb.Append("  CombinedSubmission: ").Append(CombinedSubmission).Append("\n");
            sb.Append("  Status: ").Append(Status).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }
  
        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as CreateCombinedSubmissionResponse);
        }

        /// <summary>
        /// Returns true if CreateCombinedSubmissionResponse instances are equal
        /// </summary>
        /// <param name="input">Instance of CreateCombinedSubmissionResponse to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(CreateCombinedSubmissionResponse input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.CombinedSubmission == input.CombinedSubmission ||
                    (this.CombinedSubmission != null &&
                    this.CombinedSubmission.Equals(input.CombinedSubmission))
                ) && 
                (
                    this.Status == input.Status ||
                    (this.Status != null &&
                    this.Status.Equals(input.Status))
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.CombinedSubmission != null)
                    hashCode = hashCode * 59 + this.CombinedSubmission.GetHashCode();
                if (this.Status != null)
                    hashCode = hashCode * 59 + this.Status.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
