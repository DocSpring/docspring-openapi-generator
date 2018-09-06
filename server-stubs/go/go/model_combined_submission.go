/*
 * API V1
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * API version: v1
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package openapi

type CombinedSubmission struct {

	Metadata *map[string]interface{} `json:"metadata,omitempty"`

	Expired bool `json:"expired,omitempty"`

	ExpiresAt string `json:"expires_at,omitempty"`

	DownloadUrl string `json:"download_url,omitempty"`

	SubmissionIds []string `json:"submission_ids,omitempty"`

	Id string `json:"id,omitempty"`

	State string `json:"state,omitempty"`
}
