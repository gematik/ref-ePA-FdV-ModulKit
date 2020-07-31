# ePA-FdV-Modul-Kit

Controlling/Use-case framework for accessing personal health records in the telematic infrastructure.

## Introduction

The ePA-FdV-ModulKit (Frontend des Versicherten für die elektronische Patientenakte) is intended for reference purposes
when implementing a system that performs the communication between an Aktor (ePA-Aktensystemsimulator)
and an individual authorization instance, e.g. a German Health Card (elektronische Gesundheitskarte).

This document describes the functionalitiy and structure of the ePA-FdV-ModulKit (Frontend des Versicherten
für die elektronische Patientenakte).

## API Documentation

Generated API docs are available at <https://gematik.github.io/ref-ePA-FdV-ModulKit>.

## License

Licensed under the [Apache License, Version 2.0](https://www.apache.org/licenses/LICENSE-2.0).

## Getting Started

ePA-FdV-ModulKit requires Swift 5.1.

### Setup for integration

-   **Carthage:** Put this in your `Cartfile`:

        github "gematik/ref-ePA-FdV-ModulKit" ~> 1.0

### Setup for development

You will need [Bundler](https://bundler.io/), [XcodeGen](https://github.com/yonaskolb/XcodeGen)
and [fastlane](https://fastlane.tools) to conveniently use the established development environment.

1.  Update ruby gems necessary for build commands

        $ bundle install --path vendor/gems

2.  Checkout (and build) dependencies and generate the xcodeproject

        $ bundle exec fastlane setup

3.  Build the project

        $ bundle exec fastlane build_all [build_mac, build_ios]

## Overview

The ePA-FdV-module-kit bundles submodules that provide the functionality
(service localization, authentication, authentication via health card, key management)
necessary for the access to the electronic patient record.
As for now the key management submodule remains unimplemented.
As a reference for each submodule see also the `IntegrationTests`.

### FdV Authentication

The authentication submodule provides the functionality for authenticating the user to use the electronic patient
record.

Instantiate a `Authn` object with the URL of an Aktor authentication service you obtained
by the `ServiceLocalization`.

Instantiate a class conforming to the `Authenticator` protocol that serves as an agent to authenticate the individual
user. This can be carried out by a German Health Card, see the submodule
`HealthCardAuthentication`&gt;&gt;\` for reference.

The `Authn` object then performs the required authentication operations
(login create challenge / login create token / renew token / logout) according to ws-Trust to authenticate the user.

The `EPA_FdV_AUTHN_I_Authentication_Insurant_Binding_Soap12` class forms the entry point for establishing the
connection to the authentication web service.

    let authn = Authn(service: URL(string: self.aktorAuthnURL)!)
    let authenticator = HealthCardAuthn(healthCard: CardSimulationTerminalTestCase.healthCard)

    try? verifyMrPinForSigning()
    expect {
        authn.login(authenticator: authenticator).test()
    }.toNot(beNil())

### HealthCardAuthentication

One way to authenticate the individual user for the use of the electronic personal health record
(ePA, elektronische Patientenakte) is using a German Health Card (eGK).

HealthCardAuthn is a class implementing the `Authenticator` protocol
to perform an authentication for the the ePA service.
It has to be instantiated with a `HealthCardType` which usually would be provided by a `CardReaderType`
(see: [OpenHealthCardKit @ **GitHub**](https://github.com/gematik/ref-OpenHealthCardKit/)).

Consider also the working example of an NFC-Demo App, which employs above mentioned frameworks
to communicate with real work (NFC-ready) German Health Cards via the NFC interface provided by Apple:
[OpenHealthCardApp @ **GitHub**](https://github.com/gematik/ref-OpenHealthCardApp-iOS))

    let eGk21Authenticator = HealthCardAuthn(healthCard: CardSimulationTerminalTestCase.healthCard)

    let certificateInfo = eGk21Authenticator.certificateInfo().test()
    expect(certificateInfo?.signatureAlgorithm) == Authn.SignatureAlgorithm.ecdsaSha256

    let signature = CardSimulationTerminalTestCase.healthCard.verify(pin: format2Pin,
                                                                     type: EgkFileSystem.Pin.mrpinHome)
            .flatMap { _ in
                eGk21Authenticator.authenticate(challenge: self.challenge)
            }
            .test()
    expect(signature?.count) == 64

### ServiceLocalization

The submodule contains the protocol `ServiceLocatorType` as an entry point to localize ePA service components.,
which - after successful lookup - returns an endpointURL for a given interface name.

The protocol `ServiceLocatorType` is implemented by `ServiceLocator`.
It performs a DNS lookup for retrieving endpoint URLs of various ePA gateway services.
Once the lookup has completed successfully, the endpoint URLs for the different ePA services can be retrieved.

    let fqdn = "valid.fqdn.service.url"
    let loc = ServiceLocator()
    let semaphore = DispatchSemaphore(value: 0)

    loc.lookup(name: fqdn, callbackQueue: DispatchQueue.global(qos: .userInteractive)) { result in
        let endpoints: [ServiceInterfaceName: String] =
                ServiceInterfaceName.allCases.reduce(into: [:]) { acc, serviceName in
                    if let endpoint = result.endpointURLForInterface(interface: serviceName) {
                        acc[serviceName] = endpoint.absoluteString
                    }
                }

        expect(endpoints[.IAuthenticationInsurant])
                == "https://\(fqdn):443/authn/I_Authentication_Insurant"
