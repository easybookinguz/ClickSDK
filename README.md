# ClickSDK
A managed payment Click ios SDK that allows iOS developers to create mobile payments in an Click Merchants client application.

* [Installation](#installation)
* [Getting Started](#getting-started)
* [ClickSDK-Demo](https://github.com/easybookinguz/ClickSDK-Demo)

## Installation

### Cocoapods

Install with [CocoaPods](http://cocoapods.org/) by adding the following to your Podfile:
```
use_frameworks!
    pod "ClickSDK"
```

```
$   pod install
```
## Getting Started

1. Important the ClickSDK header in the application delegate

```
import ClickSDK
```

2. Create a default service configuration.
    ### Required:

    * amount (Double) - payment amount
    * serviceId (Long) - identifier of the service or product of the supplier
    * merchantId (Long) - vendor identifier
    * merchantUserId (Long) - merchant identifier in the supplier system

    ### No required:

    * paymentOption (String) - payment method
    * transactionParam (String) - transaction parameter characterizing what the client should pay for
    * communalParam (String) - optional parameter

    ### Example:
    ``` swift
    let config = ClickMerchantConfig(
        amount: 1000.0,
        serviceId: 12345,
        merchantId: 12345,
        merchantUserId: 12345,
        paymentOption: "",
        communalParam: "",
        transactionParam: ""
    )
    ```

3. Make a call to the Click Services.

``` swift
    ClickSDKService(config: config).setup()
```

## Author

Easybooking Developer Team