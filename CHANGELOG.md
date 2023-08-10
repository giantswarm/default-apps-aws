# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Fixed

- Add dependency from `aws-pod-identity-webhook` on `cert-manager` because otherwise the chart may be deployed without the required `Certificate` object

## [0.31.0] - 2023-08-07

### Added

- Add `enabled` property to each app, which controls, if the app is deployed or not.

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


[Unreleased]: https://github.com/giantswarm/default-apps-aws/compare/v0.31.0...HEAD
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
