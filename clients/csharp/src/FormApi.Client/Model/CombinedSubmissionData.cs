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
    /// CombinedSubmissionData
    /// </summary>
    [DataContract]
    public partial class CombinedSubmissionData :  IEquatable<CombinedSubmissionData>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="CombinedSubmissionData" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected CombinedSubmissionData() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="CombinedSubmissionData" /> class.
        /// </summary>
        /// <param name="test">test.</param>
        /// <param name="submissionIds">submissionIds (required).</param>
        /// <param name="metadata">metadata.</param>
        /// <param name="expiresIn">expiresIn.</param>
        public CombinedSubmissionData(bool? test = default(bool?), List<string> submissionIds = default(List<string>), Object metadata = default(Object), decimal? expiresIn = default(decimal?))
        {
            // to ensure "submissionIds" is required (not null)
            if (submissionIds == null)
            {
                throw new InvalidDataException("submissionIds is a required property for CombinedSubmissionData and cannot be null");
            }
            else
            {
                this.SubmissionIds = submissionIds;
            }
            this.Test = test;
            this.Metadata = metadata;
            this.ExpiresIn = expiresIn;
        }
        
        /// <summary>
        /// Gets or Sets Test
        /// </summary>
        [DataMember(Name="test", EmitDefaultValue=false)]
        public bool? Test { get; set; }

        /// <summary>
        /// Gets or Sets SubmissionIds
        /// </summary>
        [DataMember(Name="submission_ids", EmitDefaultValue=false)]
        public List<string> SubmissionIds { get; set; }

        /// <summary>
        /// Gets or Sets Metadata
        /// </summary>
        [DataMember(Name="metadata", EmitDefaultValue=false)]
        public Object Metadata { get; set; }

        /// <summary>
        /// Gets or Sets ExpiresIn
        /// </summary>
        [DataMember(Name="expires_in", EmitDefaultValue=false)]
        public decimal? ExpiresIn { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class CombinedSubmissionData {\n");
            sb.Append("  Test: ").Append(Test).Append("\n");
            sb.Append("  SubmissionIds: ").Append(SubmissionIds).Append("\n");
            sb.Append("  Metadata: ").Append(Metadata).Append("\n");
            sb.Append("  ExpiresIn: ").Append(ExpiresIn).Append("\n");
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
            return this.Equals(input as CombinedSubmissionData);
        }

        /// <summary>
        /// Returns true if CombinedSubmissionData instances are equal
        /// </summary>
        /// <param name="input">Instance of CombinedSubmissionData to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(CombinedSubmissionData input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Test == input.Test ||
                    (this.Test != null &&
                    this.Test.Equals(input.Test))
                ) && 
                (
                    this.SubmissionIds == input.SubmissionIds ||
                    this.SubmissionIds != null &&
                    this.SubmissionIds.SequenceEqual(input.SubmissionIds)
                ) && 
                (
                    this.Metadata == input.Metadata ||
                    (this.Metadata != null &&
                    this.Metadata.Equals(input.Metadata))
                ) && 
                (
                    this.ExpiresIn == input.ExpiresIn ||
                    (this.ExpiresIn != null &&
                    this.ExpiresIn.Equals(input.ExpiresIn))
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
                if (this.Test != null)
                    hashCode = hashCode * 59 + this.Test.GetHashCode();
                if (this.SubmissionIds != null)
                    hashCode = hashCode * 59 + this.SubmissionIds.GetHashCode();
                if (this.Metadata != null)
                    hashCode = hashCode * 59 + this.Metadata.GetHashCode();
                if (this.ExpiresIn != null)
                    hashCode = hashCode * 59 + this.ExpiresIn.GetHashCode();
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
