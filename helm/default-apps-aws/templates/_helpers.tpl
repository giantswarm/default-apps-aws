{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "labels.common" -}}
app-operator.giantswarm.io/version: 5.5.1
app.kubernetes.io/name: {{ include "name" . }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
app.giantswarm.io/branch: {{ .Chart.Annotations.branch | replace "#" "-" | replace "/" "-" | replace "." "-" | trunc 63 | trimSuffix "-" | quote }}
app.giantswarm.io/commit: {{ .Chart.Annotations.commit | quote }}
app.kubernetes.io/managed-by: {{ .Release.Name | quote }}
app.kubernetes.io/version: {{ .Chart.Version | quote }}
helm.sh/chart: {{ include "chart" . | quote }}
giantswarm.io/cluster: {{ .Values.clusterName | quote }}
giantswarm.io/organization: {{ .Values.organization | quote }}
giantswarm.io/service-type: managed
{{- end -}}

{{- define "kubeconfig" -}}
kubeConfig:
  context:
    name: {{ .Values.clusterName }}-admin@{{ .Values.clusterName }}
  inCluster: false
  secret:
    name: {{ .Values.clusterName }}-kubeconfig
    namespace: {{ .Release.Namespace }}
{{- end -}}

{{- define "config" -}}
config:
  configMap:
    name: {{ .Values.clusterName }}-cluster-values
    namespace: {{ .Release.Namespace }}
{{- end -}}
