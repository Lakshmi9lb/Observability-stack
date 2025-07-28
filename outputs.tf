output "loki_release_status" {
  value = helm_release.loki.status
}

output "grafana_release_status" {
  value = helm_release.grafana.status
}

output "tempo_release_status" {
  value = helm_release.tempo.status
}

output "mimir_release_status" {
  value = helm_release.mimir.status
}

