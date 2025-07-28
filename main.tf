resource "helm_release" "loki" {
  name             = "loki"
  namespace        = "observability"
  create_namespace = true

  repository = "https://grafana.github.io/helm-charts"
  chart      = "loki"
  version    = "5.41.5"

  values = [file("${path.module}/observability/loki/loki-values.yaml")]
}

resource "helm_release" "grafana" {
  name             = "grafana"
  namespace        = "observability"
  create_namespace = true

  repository = "https://grafana.github.io/helm-charts"
  chart      = "grafana"
  version    = "6.60.5"

  values = [file("${path.module}/observability/grafana/grafana-values.yaml")]
}

resource "helm_release" "tempo" {
  name             = "tempo"
  namespace        = "observability"
  create_namespace = true

  repository = "https://grafana.github.io/helm-charts"
  chart      = "tempo"
  version    = "1.7.0"

  values = [file("${path.module}/observability/tempo/tempo-values.yaml")]
}

resource "helm_release" "mimir" {
  name             = "mimir"
  namespace        = "observability"
  create_namespace = true

  repository = "https://grafana.github.io/helm-charts"
  chart      = "mimir-distributed"
  version    = "5.3.1"

  values = [file("${path.module}/observability/mimir/mimir-values.yaml")]
}

resource "helm_release" "prometheus" {
  name             = "prometheus"
  namespace        = "observability"
  create_namespace = true

  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "prometheus"
  version    = "25.17.0"

  values = [file("${path.module}/observability/prometheus/prometheus-values.yaml")]
}
