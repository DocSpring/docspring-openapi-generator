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
    /// CreateSubmissionDataBatchV1
    /// </summary>
    [DataContract]
    public partial class CreateSubmissionDataBatchV1 :  IEquatable<CreateSubmissionDataBatchV1>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="CreateSubmissionDataBatchV1" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected CreateSubmissionDataBatchV1() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="CreateSubmissionDataBatchV1" /> class.
        /// </summary>
        /// <param name="test">test.</param>
        /// <param name="data">data (required).</param>
        /// <param name="html">html.</param>
        /// <param name="css">css.</param>
        /// <param name="metadata">metadata.</param>
        public CreateSubmissionDataBatchV1(bool? test = default(bool?), Object data = default(Object), string html = default(string), string css = default(string), Object metadata = default(Object))
        {
            // to ensure "data" is required (not null)
            if (data == null)
            {
                throw new InvalidDataException("data is a required property for CreateSubmissionDataBatchV1 and cannot be null");
            }
            else
            {
                this.Data = data;
            }
            this.Test = test;
            this.Html = html;
            this.Css = css;
            this.Metadata = metadata;
        }
        
        /// <summary>
        /// Gets or Sets Test
        /// </summary>
        [DataMember(Name="test", EmitDefaultValue=false)]
        public bool? Test { get; set; }

        /// <summary>
        /// Gets or Sets Data
        /// </summary>
        [DataMember(Name="data", EmitDefaultValue=false)]
        public Object Data { get; set; }

        /// <summary>
        /// Gets or Sets Html
        /// </summary>
        [DataMember(Name="html", EmitDefaultValue=false)]
        public string Html { get; set; }

        /// <summary>
        /// Gets or Sets Css
        /// </summary>
        [DataMember(Name="css", EmitDefaultValue=false)]
        public string Css { get; set; }

        /// <summary>
        /// Gets or Sets Metadata
        /// </summary>
        [DataMember(Name="metadata", EmitDefaultValue=false)]
        public Object Metadata { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class CreateSubmissionDataBatchV1 {\n");
            sb.Append("  Test: ").Append(Test).Append("\n");
            sb.Append("  Data: ").Append(Data).Append("\n");
            sb.Append("  Html: ").Append(Html).Append("\n");
            sb.Append("  Css: ").Append(Css).Append("\n");
            sb.Append("  Metadata: ").Append(Metadata).Append("\n");
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
            return this.Equals(input as CreateSubmissionDataBatchV1);
        }

        /// <summary>
        /// Returns true if CreateSubmissionDataBatchV1 instances are equal
        /// </summary>
        /// <param name="input">Instance of CreateSubmissionDataBatchV1 to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(CreateSubmissionDataBatchV1 input)
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
                    this.Data == input.Data ||
                    (this.Data != null &&
                    this.Data.Equals(input.Data))
                ) && 
                (
                    this.Html == input.Html ||
                    (this.Html != null &&
                    this.Html.Equals(input.Html))
                ) && 
                (
                    this.Css == input.Css ||
                    (this.Css != null &&
                    this.Css.Equals(input.Css))
                ) && 
                (
                    this.Metadata == input.Metadata ||
                    (this.Metadata != null &&
                    this.Metadata.Equals(input.Metadata))
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
                if (this.Data != null)
                    hashCode = hashCode * 59 + this.Data.GetHashCode();
                if (this.Html != null)
                    hashCode = hashCode * 59 + this.Html.GetHashCode();
                if (this.Css != null)
                    hashCode = hashCode * 59 + this.Css.GetHashCode();
                if (this.Metadata != null)
                    hashCode = hashCode * 59 + this.Metadata.GetHashCode();
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
