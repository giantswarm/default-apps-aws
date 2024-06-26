# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.52.0] - 2024-05-09

### Added
- Helm value `.Values.deleteOptions.moveAppsHelmOwnershipToClusterAws` that enables migration of apps from default-apps-aws to cluster-aws (apps are paused, so they are not removed from the WC when default-apps-aws is deleted).

### Fixed
- Downgrade vertical-pod-autoscaler to v5.1.0 due to a bug in newer version that causes the updater to panic.

## [0.51.0] - 2024-04-15

### Added
- Add toleration for `uninitialized` nodes to the kyverno admission controller.

## [0.50.0] - 2024-04-09

### Added

- Add `cilium-servicemonitors` app.
- Add `k8s-dns-node-cache` app.

### Changed

- Set externalDns registry value explicitly to avoid conflicts with Catalog value.
- Repository: Some chores. ([#439](https://github.com/giantswarm/default-apps-aws/pull/439))
  - ABS: Align `main.yaml`.
  - CircleCI: Align `config.yml`.
  - GitHub: Update `diff_helm_render_templates.yaml`.
  - GitHub: Update `pull_request_template.md`.
  - Renovate: Update PR body.
  - Repository: Update `README.md`.
- Bump `etcd-kubernetes-resources-count-exporter` to 1.10.0.
- Bump `aws-pod-identity-webhook` to 1.14.2.
- Bump `observability-bundle` to 1.3.2.

### Removed

- Repository: Some chores. ([#439](https://github.com/giantswarm/default-apps-aws/pull/439))
  - Repository: Remove `.nancy-ignore*`.

## [0.49.0] - 2024-02-20

### Added

- Set `ingresShim` for `cert-manager` app.

## [0.48.1] - 2024-02-20

### Fixed

- Default app priority typo.

## [0.48.0] - 2024-02-12

### Added

- Include support for schemadocs to generate Chart README file

### Changed

- Bump cluster-autoscaler to 1.27.3-gs8.
- Enable secret config for cluster-autoscaler app.
  
## [0.47.0] - 2024-02-09

### Changed

- Update security-bundle to v1.6.1.
- Update observability-bundle to v1.2.1

## [0.46.0] - 2024-02-07

### Added

- Update teleport-kube-agent-app to v0.7.1
- Update external-dns-app to v3.0.0
- Update vertical-pod-autoscaler-app to v5.0.0
- Update etcd-kubernetes-resources-count-exporter to v1.9.0
- Add dependencies on `prometheus-operator-crd` for quicker deployment

## [0.45.2] - 2024-02-05

### Added

- Allow customization of the extraConfig priority.

### Fixed

- Resolve baseDomain inconcistency when cluster-values is not configured for this App.

## [0.45.1] - 2024-02-01

### Fixed

- Enable security bundle.

## [0.45.0] - 2024-01-29

### Changed

- Bump `aws-pod-identity-webhook` to `v1.14.1`. Now has the correct `policy/v1` for the PodDisruptionBudget.
- Bump `capi-node-labeler` to `v0.5.0`. Now supports PSS.

## [0.44.0] - 2024-01-26

## [0.43.0] - 2024-01-25

### Added

- Add security-bundle app

## [0.42.0] - 2024-01-22

### Changed

- Enable `CiliumNetworkPolicy` for apps that support it

## [0.41.1] - 2024-01-17

### Fixed

- Fix psp values for observability-bundle > 1.0.0.

## [0.41.0] - 2024-01-12

### Changed

- Bump observability-bundle to 1.0.0. Beware that this version contains breaking changes
- Use a YAML object for the apps configuration, so that defaults are not overwritten when users pass custom values.

## [0.40.0] - 2023-11-27

### Fixed

- Shortened `etcd-kubernetes-resources-count-exporter` appName to `etcd-k8s-res-count-exporter` to prevent issues with longer cluster names.

## [0.39.0] - 2023-11-23

## [0.38.0] - 2023-11-16

## [0.37.0] - 2023-11-10

### Changed

- IRSA for cluster-autoscaler.

## [0.36.1] - 2023-11-10

### Changed

- Update `cert-manager` to `3.5.2`.

## [0.36.0] - 2023-11-07

### Added

- Add `cluster-autoscaler`.

## [0.35.0] - 2023-11-02

### Added

- Added `chart-operator-extension` version `v1.1.1` that contains e.g. `ServiceMonitors` for `chart-operator`.

## [0.34.0] - 2023-09-28

### Changed

- Bumped `cert-manager-app` to `v3.4.0`.
- Add dependency from `cert-manager` on `prometheus-operator-crd` because it needs `ServiceMonitors`.
- Drop usage of `clusterID` in favour of `clusterName`.

## [0.33.0] - 2023-08-28

### Changed

- Don't use `--force` when installing/upgrading apps.
- Enable cilium NetworkPolicies for `cert-manager-app`.

## [0.32.0] - 2023-08-10

### Fixed

- Update `external-dns-app` to `v2.38.1`
- Update `vertical-pod-autoscaler-app` to `v3.5.4`
- Update `node-exporter-app` to `v1.17.1`
- Update `etcd-kubernetes-resources-count-exporter` to `v1.4.0`
- Add dependency from `aws-pod-identity-webhook` on `cert-manager` because otherwise the chart may be deployed without the required `Certificate` object

## [0.31.0] - 2023-08-07

### Added

- Add `enabled` property to each app, which controls, if the app is deployed or not.
- Add `teleport-kube-agent-app`

### Changed

- Change the etcd prefix for `etcd-kubernetes-resources-count-exporter`.
- Update `cert-manager-app` values in preparation of v3.0.0 release.
- Set `extenal-dns` configuration using explicit values.
- Update `aws-pod-identity-webhook` to `v1.11.1`.

## [0.30.0] - 2023-06-28

### Breaking changes

- Removed core components because they are moved to the `cluster-aws` app. Make sure to use at least `cluster-aws` release 0.35.0 when upgrading to this `default-apps-aws` version.

### Removed

- Removed `coredns`.
- Removed `cilium`.
- Removed `aws-cloud-controller-manager`.
- Removed `aws-ebs-csi-driver`.
- Removed `vertical-pod-autoscaler-crd`.

### Added

- Add `etcd-kubernetes-resources-count-exporter`.

## [0.29.0] - 2023-05-10

### Changed

- Bump `aws-cloud-controller-manager-app` to v1.24.1-gs4.

## [0.28.0] - 2023-05-02

### Fixed

- Fix catalog for `aws-ebs-csi-driver`.

### Changed

- Add the `cluster-values` secret to the `aws-cloud-controller-manager` app, so it gets the proxy configuration.

## [0.27.0] - 2023-04-26

### Fixed

- Fix cert-manager config not being used by mistake (`--dns01-recursive-nameservers-only` argument which is relevant in private clusters).

## [0.26.0] - 2023-04-26

### Added

- Add `aws-cloud-controller-manager-app`.

## [0.25.0] - 2023-04-25

### Changed

- Bump `observability-bundle` to 0.4.2

### Removed

- Remove kube-state-metrics app as it is now included in the observability-bundle.

## [0.24.0] - 2023-03-30

### Changed

- Make cert-manager use only recursive nameservers for DNS01 solver. The public, authoritative ones cannot be reached directly from private clusters.

## [0.23.2] - 2023-03-24

### Fixed

- Cilium `k8sServicePort` value must now be a string according to the values schema

## [0.23.1] - 2023-03-23

### Changed

- Bump `external-dns` to 2.34.2
- Bump `cilium` to 0.9.0

## [0.23.0] - 2023-03-23

### Removed

- Remove `kiam-app` from the apps.

## [0.22.0] - 2023-03-22

### Changed

- Bump `vertical-pod-autoscaler-app` to 3.3.0

### Added

- New app dependency mechanism (`app-operator.giantswarm.io/depends-on`) to the vertical-pod-autoscaler-app it is not installed until the corresponding CRD app is deployed.

## [0.21.1] - 2023-03-21

Re-release because v0.21.0 artifact did not get produced.

## [0.21.0] - 2023-03-21

### Changed

- Bumped `aws-pod-identity-webhook` to `v1.7.0`
- Bumped `cert-manager-app` to `v2.20.2`

## [0.20.0] - 2023-03-09

### Changed

- Bumped `cilium` to `v0.8.0`

## [0.19.1] - 2023-02-17

### Changed

- Bumped `aws-pod-identity-webhook` to `v1.6.2`

## [0.19.0] - 2023-02-17

### Changed

- Bumped `aws-pod-identity-webhook` to `v1.6.1`

## [0.18.0] - 2023-02-17

### Changed

- Bumped `aws-pod-identity-webhook` to `v1.6.0`

## [0.17.0] - 2023-02-02

### Changed

- Bumped `aws-pod-identity-webhook` to `v1.5.0`

## [0.16.0] - 2023-01-24

### Changed

- Bumped `external-dns` to `v2.23.2`
- Bumped `aws-ebs-csi-driver-app` to `v2.20.0`

### Added

- Add mention to e2e pipelines in README

## [0.15.0] - 2023-01-18

### Added

- Add configmap for external-dns, enabling IRSA

### Changed

- Update `observability-bundle` from `0.1.8` to `0.1.9`

## [0.14.0] - 2023-01-11

### Changed

- Update `node-exporter` to `1.15.0`

## [0.13.0] - 2023-01-06

### Changed

- Update `net-expoter` to use AWS NTP sever.
- Bump node-exporter-app to v1.14.1

## [0.12.4] - 2022-12-19

### Changed

- Update `observability-bundle` from `0.1.4` to `0.1.8`

## [0.12.3] - 2022-12-08

### Fixed

- Bump aws-pod-identity-webhook to fix PDB bug

## [0.12.2] - 2022-12-07

### Changed

- Update `observability-bundle` from `0.1.3` to `0.1.4`

## [0.12.1] - 2022-12-06

### Changed

- Update `vertical-autoscaler-app` from `2.5.0` to `2.5.2`

## [0.12.0] - 2022-11-29

### Changed

- Configured ebs csi driver for proxy.

## [0.11.0] - 2022-11-25

### Added

- Re-enable observability-bundle.
- Add icon url to `Chart.yaml`

## [0.10.0] - 2022-11-18

### Changed

- Bumped external-dns to v2.19.0.

## [0.9.0] - 2022-11-18

### Changed

- Bumped external-dns to v2.18.0.
- Bumped kiam to v2.6.0.
- Bumped cert-manager to v2.18.0.
- Configured external-dns, kiam and cert-manager for proxy.

## [0.8.1] - 2022-11-17

### Removed

- Deleted observability-bundle as it causes issues with WC creation

## [0.8.0] - 2022-11-15

### Added

- Add `observability-bundle` as default app
- Supports installing apps `inCluster`

## [0.7.0] - 2022-10-19

### Changed

- Pass `cilium` configuration to use `cilium` as kube-proxy replacement.

## [0.6.1] - 2022-10-18

### Changed

- Bumped Cilium to 0.5.0

## [0.6.0] - 2022-10-14

### Added

- Add `aws-pod-identity-webhook` for IRSA support.

### Changed

- Bumped Cilium to 0.4.2

## [0.5.5] - 2022-10-04

## [0.5.4] - 2022-09-14

## [0.5.3] - 2022-09-14

## [0.5.2] - 2022-09-14

### Changed

- Enable renovate to update app versions.

## [0.5.1] - 2022-08-12

### Added

- Add `capa` top compatible providers.

## [0.5.0] - 2022-07-26

### Changed

- Set cilium ipam mode to `kubernetes` to make use of cluster-set pod CIDR

## [0.4.0] - 2022-07-15

### Changed

- Add team label to helm resources.
- Add `values.schema.json` file.
- Use `cilium` as CNI instead of `aws-cni`.
- Set custom values for `cilium` app.
- Remove `calico-policy-only` app.


## [0.3.0] - 2022-03-29

- Bump `aws-cni-app` version.
- Add `aws-ebs-csi-driver` app to the list.
- Add `coredns` app to the list.

## [0.2.0] - 2022-03-22

- Add `vertical-pod-autoscaler` app.

## [0.1.5] - 2022-03-22

- Move app into `values.yaml` file.

## [0.1.4] - 2022-03-22

### Fixed

- Fixed incorrect app names

## [0.1.3] - 2022-03-18

### Changed

- Add `giantswarm.io/managed-by` label so apps are accepted by `app-admission-controller`.
- Remove `app-operator.giantswarm.io/version` label as its replaced by `giantswarm.io/cluster`.
- Update `aws-cni` app to `0.2.1`.

## [0.1.2] - 2022-03-09

## [0.1.1] - 2022-03-09

### Changed

- Bump `aws-cni` app to version `v0.2.0`.

## [0.1.0] - 2022-02-08


[Unreleased]: https://github.com/giantswarm/default-apps-aws/compare/v0.52.0...HEAD
[0.52.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.51.0...v0.52.0
[0.51.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.50.0...v0.51.0
[0.50.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.49.0...v0.50.0
[0.49.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.48.1...v0.49.0
[0.48.1]: https://github.com/giantswarm/default-apps-aws/compare/v0.48.0...v0.48.1
[0.48.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.47.0...v0.48.0
[0.47.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.46.0...v0.47.0
[0.46.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.45.2...v0.46.0
[0.45.2]: https://github.com/giantswarm/default-apps-aws/compare/v0.45.1...v0.45.2
[0.45.1]: https://github.com/giantswarm/default-apps-aws/compare/v0.45.0...v0.45.1
[0.45.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.44.0...v0.45.0
[0.44.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.43.0...v0.44.0
[0.43.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.42.0...v0.43.0
[0.42.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.41.1...v0.42.0
[0.41.1]: https://github.com/giantswarm/default-apps-aws/compare/v0.41.0...v0.41.1
[0.41.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.40.0...v0.41.0
[0.40.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.39.0...v0.40.0
[0.39.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.38.0...v0.39.0
[0.38.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.37.0...v0.38.0
[0.37.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.36.1...v0.37.0
[0.36.1]: https://github.com/giantswarm/default-apps-aws/compare/v0.36.0...v0.36.1
[0.36.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.35.0...v0.36.0
[0.35.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.34.0...v0.35.0
[0.34.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.33.0...v0.34.0
[0.33.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.32.0...v0.33.0
[0.32.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.31.0...v0.32.0
[0.31.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.30.0...v0.31.0
[0.30.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.29.0...v0.30.0
[0.29.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.28.0...v0.29.0
[0.28.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.27.0...v0.28.0
[0.27.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.26.0...v0.27.0
[0.26.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.25.0...v0.26.0
[0.25.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.24.0...v0.25.0
[0.24.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.23.2...v0.24.0
[0.23.2]: https://github.com/giantswarm/default-apps-aws/compare/v0.23.1...v0.23.2
[0.23.1]: https://github.com/giantswarm/default-apps-aws/compare/v0.23.0...v0.23.1
[0.23.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.22.0...v0.23.0
[0.22.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.21.1...v0.22.0
[0.21.1]: https://github.com/giantswarm/default-apps-aws/compare/v0.21.0...v0.21.1
[0.21.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.20.0...v0.21.0
[0.20.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.19.1...v0.20.0
[0.19.1]: https://github.com/giantswarm/default-apps-aws/compare/v0.19.0...v0.19.1
[0.19.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.18.0...v0.19.0
[0.18.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.17.0...v0.18.0
[0.17.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.16.0...v0.17.0
[0.16.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.15.0...v0.16.0
[0.15.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.14.0...v0.15.0
[0.14.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.13.0...v0.14.0
[0.13.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.12.4...v0.13.0
[0.12.4]: https://github.com/giantswarm/default-apps-aws/compare/v0.12.3...v0.12.4
[0.12.3]: https://github.com/giantswarm/default-apps-aws/compare/v0.12.2...v0.12.3
[0.12.2]: https://github.com/giantswarm/default-apps-aws/compare/v0.12.1...v0.12.2
[0.12.1]: https://github.com/giantswarm/default-apps-aws/compare/v0.12.0...v0.12.1
[0.12.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.11.0...v0.12.0
[0.11.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.10.0...v0.11.0
[0.10.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.9.0...v0.10.0
[0.9.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.8.1...v0.9.0
[0.8.1]: https://github.com/giantswarm/default-apps-aws/compare/v0.8.0...v0.8.1
[0.8.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.7.0...v0.8.0
[0.7.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.6.1...v0.7.0
[0.6.1]: https://github.com/giantswarm/default-apps-aws/compare/v0.6.0...v0.6.1
[0.6.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.5.5...v0.6.0
[0.5.5]: https://github.com/giantswarm/default-apps-aws/compare/v0.5.4...v0.5.5
[0.5.4]: https://github.com/giantswarm/default-apps-aws/compare/v0.5.3...v0.5.4
[0.5.3]: https://github.com/giantswarm/default-apps-aws/compare/v0.5.2...v0.5.3
[0.5.2]: https://github.com/giantswarm/default-apps-aws/compare/v0.5.1...v0.5.2
[0.5.1]: https://github.com/giantswarm/default-apps-aws/compare/v0.5.0...v0.5.1
[0.5.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.4.0...v0.5.0
[0.4.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.3.0...v0.4.0
[0.3.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.2.0...v0.3.0
[0.2.0]: https://github.com/giantswarm/default-apps-aws/compare/v0.1.5...v0.2.0
[0.1.5]: https://github.com/giantswarm/default-apps-aws/compare/v0.1.4...v0.1.5
[0.1.4]: https://github.com/giantswarm/default-apps-aws/compare/v0.1.3...v0.1.4
[0.1.3]: https://github.com/giantswarm/default-apps-aws/compare/v0.1.2...v0.1.3
[0.1.2]: https://github.com/giantswarm/default-apps-aws/compare/v0.1.1...v0.1.2
[0.1.1]: https://github.com/giantswarm/default-apps-aws/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/giantswarm/default-apps-aws/releases/tag/v0.1.0
