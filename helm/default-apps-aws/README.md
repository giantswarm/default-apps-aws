# Values schema documentation

This page lists all available configuration options, based on the [configuration values schema](values.schema.json).

<!-- DOCS_START -->

### User Config

Properties within the `.userConfig` top-level object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `userConfig.certManager` |**None**|**Type:** `object`<br/>|
| `userConfig.certManager.configMap` |**None**|**Type:** `object`<br/>|
| `userConfig.certManager.configMap.values` |**None**|**Type:** `object`<br/>|
| `userConfig.certManager.configMap.values.ciliumNetworkPolicy` |**None**|**Type:** `object`<br/>|
| `userConfig.certManager.configMap.values.ciliumNetworkPolicy.enabled` |**None**|**Type:** `boolean`<br/>|
| `userConfig.certManager.configMap.values.controller` |**None**|**Type:** `object`<br/>|
| `userConfig.certManager.configMap.values.controller.extraArgs` |**None**|**Type:** `array`<br/>|
| `userConfig.certManager.configMap.values.controller.extraArgs[*]` |**None**|**Type:** `string`<br/>|
| `userConfig.certManager.configMap.values.dns01RecursiveNameserversOnly` |**None**|**Type:** `boolean`<br/>|
| `userConfig.cluster-autoscaler` |**None**|**Type:** `object`<br/>|
| `userConfig.cluster-autoscaler.configMap` |**None**|**Type:** `object`<br/>|
| `userConfig.cluster-autoscaler.configMap.values` |**None**|**Type:** `object`<br/>|
| `userConfig.cluster-autoscaler.configMap.values.serviceAccount` |**None**|**Type:** `object`<br/>|
| `userConfig.cluster-autoscaler.configMap.values.serviceAccount.annotations` |**None**|**Type:** `object`<br/>|
| `userConfig.cluster-autoscaler.configMap.values.serviceAccount.annotations.eks.amazonaws.com/role-arn` |**None**|**Type:** `string`<br/>|
| `userConfig.etcdKubernetesResourceCountExporter` |**None**|**Type:** `object`<br/>|
| `userConfig.etcdKubernetesResourceCountExporter.configMap` |**None**|**Type:** `object`<br/>|
| `userConfig.etcdKubernetesResourceCountExporter.configMap.values` |**None**|**Type:** `object`<br/>|
| `userConfig.etcdKubernetesResourceCountExporter.configMap.values.etcd` |**None**|**Type:** `object`<br/>|
| `userConfig.etcdKubernetesResourceCountExporter.configMap.values.etcd.cacertpath` |**None**|**Type:** `string`<br/>|
| `userConfig.etcdKubernetesResourceCountExporter.configMap.values.etcd.certpath` |**None**|**Type:** `string`<br/>|
| `userConfig.etcdKubernetesResourceCountExporter.configMap.values.etcd.hostPath` |**None**|**Type:** `string`<br/>|
| `userConfig.etcdKubernetesResourceCountExporter.configMap.values.etcd.keypath` |**None**|**Type:** `string`<br/>|
| `userConfig.etcdKubernetesResourceCountExporter.configMap.values.etcd.prefix` |**None**|**Type:** `string`<br/>|
| `userConfig.etcdKubernetesResourceCountExporter.configMap.values.events` |**None**|**Type:** `object`<br/>|
| `userConfig.etcdKubernetesResourceCountExporter.configMap.values.events.prefix` |**None**|**Type:** `string`<br/>|
| `userConfig.externalDns` |**None**|**Type:** `object`<br/>|
| `userConfig.externalDns.configMap` |**None**|**Type:** `object`<br/>|
| `userConfig.externalDns.configMap.values` |**None**|**Type:** `object`<br/>|
| `userConfig.externalDns.configMap.values.annotationFilter` |**None**|**Type:** `string`<br/>|
| `userConfig.externalDns.configMap.values.aws` |**None**|**Type:** `object`<br/>|
| `userConfig.externalDns.configMap.values.aws.batchChangeInterval` |**None**|**Type:** `null`<br/>|
| `userConfig.externalDns.configMap.values.aws.irsa` |**None**|**Type:** `string`<br/>|
| `userConfig.externalDns.configMap.values.ciliumNetworkPolicy` |**None**|**Type:** `object`<br/>|
| `userConfig.externalDns.configMap.values.ciliumNetworkPolicy.enabled` |**None**|**Type:** `boolean`<br/>|
| `userConfig.externalDns.configMap.values.domainFilters` |**None**|**Type:** `array`<br/>|
| `userConfig.externalDns.configMap.values.domainFilters[*]` |**None**|**Type:** `string`<br/>|
| `userConfig.externalDns.configMap.values.extraArgs` |**None**|**Type:** `array`<br/>|
| `userConfig.externalDns.configMap.values.extraArgs[*]` |**None**|**Type:** `string`<br/>|
| `userConfig.externalDns.configMap.values.provider` |**None**|**Type:** `string`<br/>|
| `userConfig.externalDns.configMap.values.serviceAccount` |**None**|**Type:** `object`<br/>|
| `userConfig.externalDns.configMap.values.serviceAccount.annotations` |**None**|**Type:** `object`<br/>|
| `userConfig.externalDns.configMap.values.serviceAccount.annotations.eks.amazonaws.com/role-arn` |**None**|**Type:** `string`<br/>|
| `userConfig.externalDns.configMap.values.sources` |**None**|**Type:** `array`<br/>|
| `userConfig.externalDns.configMap.values.sources[*]` |**None**|**Type:** `string`<br/>|
| `userConfig.externalDns.configMap.values.txtOwnerId` |**None**|**Type:** `string`<br/>|
| `userConfig.externalDns.configMap.values.txtPrefix` |**None**|**Type:** `string`<br/>|
| `userConfig.metricsServer` |**None**|**Type:** `object`<br/>|
| `userConfig.metricsServer.configMap` |**None**|**Type:** `object`<br/>|
| `userConfig.metricsServer.configMap.values` |**None**|**Type:** `object`<br/>|
| `userConfig.metricsServer.configMap.values.ciliumNetworkPolicy` |**None**|**Type:** `object`<br/>|
| `userConfig.metricsServer.configMap.values.ciliumNetworkPolicy.enabled` |**None**|**Type:** `boolean`<br/>|
| `userConfig.netExporter` |**None**|**Type:** `object`<br/>|
| `userConfig.netExporter.configMap` |**None**|**Type:** `object`<br/>|
| `userConfig.netExporter.configMap.values` |**None**|**Type:** `object`<br/>|
| `userConfig.netExporter.configMap.values.NetExporter` |**None**|**Type:** `object`<br/>|
| `userConfig.netExporter.configMap.values.NetExporter.NTPServers` |**None**|**Type:** `string`<br/>|
| `userConfig.netExporter.configMap.values.ciliumNetworkPolicy` |**None**|**Type:** `object`<br/>|
| `userConfig.netExporter.configMap.values.ciliumNetworkPolicy.enabled` |**None**|**Type:** `boolean`<br/>|

### Apps

Properties within the `.apps` top-level object

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `apps.aws-pod-identity-webhook` |**None**|**Type:** `object`<br/>|
| `apps.aws-pod-identity-webhook.appName` |**None**|**Type:** `string`<br/>|
| `apps.aws-pod-identity-webhook.catalog` |**None**|**Type:** `string`<br/>|
| `apps.aws-pod-identity-webhook.chartName` |**None**|**Type:** `string`<br/>|
| `apps.aws-pod-identity-webhook.clusterValues` |**None**|**Type:** `object`<br/>|
| `apps.aws-pod-identity-webhook.clusterValues.configMap` |**None**|**Type:** `boolean`<br/>|
| `apps.aws-pod-identity-webhook.clusterValues.secret` |**None**|**Type:** `boolean`<br/>|
| `apps.aws-pod-identity-webhook.dependsOn` |**None**|**Type:** `string`<br/>|
| `apps.aws-pod-identity-webhook.enabled` |**None**|**Type:** `boolean`<br/>|
| `apps.aws-pod-identity-webhook.namespace` |**None**|**Type:** `string`<br/>|
| `apps.aws-pod-identity-webhook.version` |**None**|**Type:** `string`<br/>|
| `apps.capi-node-labeler` |**None**|**Type:** `object`<br/>|
| `apps.capi-node-labeler.appName` |**None**|**Type:** `string`<br/>|
| `apps.capi-node-labeler.catalog` |**None**|**Type:** `string`<br/>|
| `apps.capi-node-labeler.chartName` |**None**|**Type:** `string`<br/>|
| `apps.capi-node-labeler.clusterValues` |**None**|**Type:** `object`<br/>|
| `apps.capi-node-labeler.clusterValues.configMap` |**None**|**Type:** `boolean`<br/>|
| `apps.capi-node-labeler.clusterValues.secret` |**None**|**Type:** `boolean`<br/>|
| `apps.capi-node-labeler.enabled` |**None**|**Type:** `boolean`<br/>|
| `apps.capi-node-labeler.namespace` |**None**|**Type:** `string`<br/>|
| `apps.capi-node-labeler.version` |**None**|**Type:** `string`<br/>|
| `apps.certExporter` |**None**|**Type:** `object`<br/>|
| `apps.certExporter.appName` |**None**|**Type:** `string`<br/>|
| `apps.certExporter.catalog` |**None**|**Type:** `string`<br/>|
| `apps.certExporter.chartName` |**None**|**Type:** `string`<br/>|
| `apps.certExporter.clusterValues` |**None**|**Type:** `object`<br/>|
| `apps.certExporter.clusterValues.configMap` |**None**|**Type:** `boolean`<br/>|
| `apps.certExporter.clusterValues.secret` |**None**|**Type:** `boolean`<br/>|
| `apps.certExporter.enabled` |**None**|**Type:** `boolean`<br/>|
| `apps.certExporter.namespace` |**None**|**Type:** `string`<br/>|
| `apps.certExporter.version` |**None**|**Type:** `string`<br/>|
| `apps.certManager` |**None**|**Type:** `object`<br/>|
| `apps.certManager.appName` |**None**|**Type:** `string`<br/>|
| `apps.certManager.catalog` |**None**|**Type:** `string`<br/>|
| `apps.certManager.chartName` |**None**|**Type:** `string`<br/>|
| `apps.certManager.clusterValues` |**None**|**Type:** `object`<br/>|
| `apps.certManager.clusterValues.configMap` |**None**|**Type:** `boolean`<br/>|
| `apps.certManager.clusterValues.secret` |**None**|**Type:** `boolean`<br/>|
| `apps.certManager.dependsOn` |**None**|**Type:** `string`<br/>|
| `apps.certManager.enabled` |**None**|**Type:** `boolean`<br/>|
| `apps.certManager.namespace` |**None**|**Type:** `string`<br/>|
| `apps.certManager.version` |**None**|**Type:** `string`<br/>|
| `apps.chartOperatorExtensions` |**None**|**Type:** `object`<br/>|
| `apps.chartOperatorExtensions.appName` |**None**|**Type:** `string`<br/>|
| `apps.chartOperatorExtensions.catalog` |**None**|**Type:** `string`<br/>|
| `apps.chartOperatorExtensions.chartName` |**None**|**Type:** `string`<br/>|
| `apps.chartOperatorExtensions.clusterValues` |**None**|**Type:** `object`<br/>|
| `apps.chartOperatorExtensions.clusterValues.configMap` |**None**|**Type:** `boolean`<br/>|
| `apps.chartOperatorExtensions.clusterValues.secret` |**None**|**Type:** `boolean`<br/>|
| `apps.chartOperatorExtensions.dependsOn` |**None**|**Type:** `string`<br/>|
| `apps.chartOperatorExtensions.enabled` |**None**|**Type:** `boolean`<br/>|
| `apps.chartOperatorExtensions.namespace` |**None**|**Type:** `string`<br/>|
| `apps.chartOperatorExtensions.version` |**None**|**Type:** `string`<br/>|
| `apps.cluster-autoscaler` |**None**|**Type:** `object`<br/>|
| `apps.cluster-autoscaler.appName` |**None**|**Type:** `string`<br/>|
| `apps.cluster-autoscaler.catalog` |**None**|**Type:** `string`<br/>|
| `apps.cluster-autoscaler.chartName` |**None**|**Type:** `string`<br/>|
| `apps.cluster-autoscaler.clusterValues` |**None**|**Type:** `object`<br/>|
| `apps.cluster-autoscaler.clusterValues.configMap` |**None**|**Type:** `boolean`<br/>|
| `apps.cluster-autoscaler.clusterValues.secret` |**None**|**Type:** `boolean`<br/>|
| `apps.cluster-autoscaler.enabled` |**None**|**Type:** `boolean`<br/>|
| `apps.cluster-autoscaler.namespace` |**None**|**Type:** `string`<br/>|
| `apps.cluster-autoscaler.version` |**None**|**Type:** `string`<br/>|
| `apps.etcdKubernetesResourceCountExporter` |**None**|**Type:** `object`<br/>|
| `apps.etcdKubernetesResourceCountExporter.appName` |**None**|**Type:** `string`<br/>|
| `apps.etcdKubernetesResourceCountExporter.catalog` |**None**|**Type:** `string`<br/>|
| `apps.etcdKubernetesResourceCountExporter.chartName` |**None**|**Type:** `string`<br/>|
| `apps.etcdKubernetesResourceCountExporter.clusterValues` |**None**|**Type:** `object`<br/>|
| `apps.etcdKubernetesResourceCountExporter.clusterValues.configMap` |**None**|**Type:** `boolean`<br/>|
| `apps.etcdKubernetesResourceCountExporter.clusterValues.secret` |**None**|**Type:** `boolean`<br/>|
| `apps.etcdKubernetesResourceCountExporter.enabled` |**None**|**Type:** `boolean`<br/>|
| `apps.etcdKubernetesResourceCountExporter.namespace` |**None**|**Type:** `string`<br/>|
| `apps.etcdKubernetesResourceCountExporter.version` |**None**|**Type:** `string`<br/>|
| `apps.externalDns` |**None**|**Type:** `object`<br/>|
| `apps.externalDns.appName` |**None**|**Type:** `string`<br/>|
| `apps.externalDns.catalog` |**None**|**Type:** `string`<br/>|
| `apps.externalDns.chartName` |**None**|**Type:** `string`<br/>|
| `apps.externalDns.clusterValues` |**None**|**Type:** `object`<br/>|
| `apps.externalDns.clusterValues.configMap` |**None**|**Type:** `boolean`<br/>|
| `apps.externalDns.clusterValues.secret` |**None**|**Type:** `boolean`<br/>|
| `apps.externalDns.enabled` |**None**|**Type:** `boolean`<br/>|
| `apps.externalDns.namespace` |**None**|**Type:** `string`<br/>|
| `apps.externalDns.version` |**None**|**Type:** `string`<br/>|
| `apps.metricsServer` |**None**|**Type:** `object`<br/>|
| `apps.metricsServer.appName` |**None**|**Type:** `string`<br/>|
| `apps.metricsServer.catalog` |**None**|**Type:** `string`<br/>|
| `apps.metricsServer.chartName` |**None**|**Type:** `string`<br/>|
| `apps.metricsServer.clusterValues` |**None**|**Type:** `object`<br/>|
| `apps.metricsServer.clusterValues.configMap` |**None**|**Type:** `boolean`<br/>|
| `apps.metricsServer.clusterValues.secret` |**None**|**Type:** `boolean`<br/>|
| `apps.metricsServer.enabled` |**None**|**Type:** `boolean`<br/>|
| `apps.metricsServer.namespace` |**None**|**Type:** `string`<br/>|
| `apps.metricsServer.version` |**None**|**Type:** `string`<br/>|
| `apps.netExporter` |**None**|**Type:** `object`<br/>|
| `apps.netExporter.appName` |**None**|**Type:** `string`<br/>|
| `apps.netExporter.catalog` |**None**|**Type:** `string`<br/>|
| `apps.netExporter.chartName` |**None**|**Type:** `string`<br/>|
| `apps.netExporter.clusterValues` |**None**|**Type:** `object`<br/>|
| `apps.netExporter.clusterValues.configMap` |**None**|**Type:** `boolean`<br/>|
| `apps.netExporter.clusterValues.secret` |**None**|**Type:** `boolean`<br/>|
| `apps.netExporter.enabled` |**None**|**Type:** `boolean`<br/>|
| `apps.netExporter.namespace` |**None**|**Type:** `string`<br/>|
| `apps.netExporter.version` |**None**|**Type:** `string`<br/>|
| `apps.nodeExporter` |**None**|**Type:** `object`<br/>|
| `apps.nodeExporter.appName` |**None**|**Type:** `string`<br/>|
| `apps.nodeExporter.catalog` |**None**|**Type:** `string`<br/>|
| `apps.nodeExporter.chartName` |**None**|**Type:** `string`<br/>|
| `apps.nodeExporter.clusterValues` |**None**|**Type:** `object`<br/>|
| `apps.nodeExporter.clusterValues.configMap` |**None**|**Type:** `boolean`<br/>|
| `apps.nodeExporter.clusterValues.secret` |**None**|**Type:** `boolean`<br/>|
| `apps.nodeExporter.enabled` |**None**|**Type:** `boolean`<br/>|
| `apps.nodeExporter.namespace` |**None**|**Type:** `string`<br/>|
| `apps.nodeExporter.version` |**None**|**Type:** `string`<br/>|
| `apps.observabilityBundle` |**None**|**Type:** `object`<br/>|
| `apps.observabilityBundle.appName` |**None**|**Type:** `string`<br/>|
| `apps.observabilityBundle.catalog` |**None**|**Type:** `string`<br/>|
| `apps.observabilityBundle.chartName` |**None**|**Type:** `string`<br/>|
| `apps.observabilityBundle.clusterValues` |**None**|**Type:** `object`<br/>|
| `apps.observabilityBundle.clusterValues.configMap` |**None**|**Type:** `boolean`<br/>|
| `apps.observabilityBundle.clusterValues.secret` |**None**|**Type:** `boolean`<br/>|
| `apps.observabilityBundle.enabled` |**None**|**Type:** `boolean`<br/>|
| `apps.observabilityBundle.inCluster` |**None**|**Type:** `boolean`<br/>|
| `apps.observabilityBundle.namespace` |**None**|**Type:** `string`<br/>|
| `apps.observabilityBundle.version` |**None**|**Type:** `string`<br/>|
| `apps.securityBundle` |**None**|**Type:** `object`<br/>|
| `apps.securityBundle.appName` |**None**|**Type:** `string`<br/>|
| `apps.securityBundle.catalog` |**None**|**Type:** `string`<br/>|
| `apps.securityBundle.chartName` |**None**|**Type:** `string`<br/>|
| `apps.securityBundle.clusterValues` |**None**|**Type:** `object`<br/>|
| `apps.securityBundle.clusterValues.configMap` |**None**|**Type:** `boolean`<br/>|
| `apps.securityBundle.clusterValues.secret` |**None**|**Type:** `boolean`<br/>|
| `apps.securityBundle.namespace` |**None**|**Type:** `string`<br/>|
| `apps.securityBundle.version` |**None**|**Type:** `string`<br/>|
| `apps.teleport-kube-agent` |**None**|**Type:** `object`<br/>|
| `apps.teleport-kube-agent.appName` |**None**|**Type:** `string`<br/>|
| `apps.teleport-kube-agent.catalog` |**None**|**Type:** `string`<br/>|
| `apps.teleport-kube-agent.chartName` |**None**|**Type:** `string`<br/>|
| `apps.teleport-kube-agent.clusterValues` |**None**|**Type:** `object`<br/>|
| `apps.teleport-kube-agent.clusterValues.configMap` |**None**|**Type:** `boolean`<br/>|
| `apps.teleport-kube-agent.clusterValues.secret` |**None**|**Type:** `boolean`<br/>|
| `apps.teleport-kube-agent.enabled` |**None**|**Type:** `boolean`<br/>|
| `apps.teleport-kube-agent.extraConfigs` |**None**|**Type:** `array`<br/>|
| `apps.teleport-kube-agent.extraConfigs[*]` |**None**|**Type:** `object`<br/>|
| `apps.teleport-kube-agent.extraConfigs[*].kind` |**None**|**Type:** `string`<br/>|
| `apps.teleport-kube-agent.extraConfigs[*].name` |**None**|**Type:** `string`<br/>|
| `apps.teleport-kube-agent.extraConfigs[*].namespace` |**None**|**Type:** `string`<br/>|
| `apps.teleport-kube-agent.forceUpgrade` |**None**|**Type:** `boolean`<br/>|
| `apps.teleport-kube-agent.namespace` |**None**|**Type:** `string`<br/>|
| `apps.teleport-kube-agent.version` |**None**|**Type:** `string`<br/>|
| `apps.vpa` |**None**|**Type:** `object`<br/>|
| `apps.vpa.appName` |**None**|**Type:** `string`<br/>|
| `apps.vpa.catalog` |**None**|**Type:** `string`<br/>|
| `apps.vpa.chartName` |**None**|**Type:** `string`<br/>|
| `apps.vpa.clusterValues` |**None**|**Type:** `object`<br/>|
| `apps.vpa.clusterValues.configMap` |**None**|**Type:** `boolean`<br/>|
| `apps.vpa.clusterValues.secret` |**None**|**Type:** `boolean`<br/>|
| `apps.vpa.dependsOn` |**None**|**Type:** `string`<br/>|
| `apps.vpa.enabled` |**None**|**Type:** `boolean`<br/>|
| `apps.vpa.namespace` |**None**|**Type:** `string`<br/>|
| `apps.vpa.version` |**None**|**Type:** `string`<br/>|

### Other

| **Property** | **Description** | **More Details** |
| :----------- | :-------------- | :--------------- |
| `clusterName` |**None**|**Type:** `string`<br/>|
| `organization` |**None**|**Type:** `string`<br/>|

<!-- DOCS_END -->
