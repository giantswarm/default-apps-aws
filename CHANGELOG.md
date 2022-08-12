# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

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


[Unreleased]: https://github.com/giantswarm/default-apps-aws/compare/v0.5.1...HEAD
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
