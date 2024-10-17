{{- define "labels" -}}
app: cowsay
env: {{ .Values.app.env}}
{{- end }}