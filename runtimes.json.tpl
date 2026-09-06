{
    "description": [
        "This file describes the different languages (aka. managed action runtimes) supported by the system",
        "as well as blackbox images that support the runtime specification.",
        "Only actions with runtime families / kinds defined here can be created / read / updated / deleted / invoked.",
        "Define a list of runtime families (example: 'nodejs') with at least one kind per family (example: 'nodejs:14').",
        "Each runtime family needs a default kind (default: true).",
        "When removing or renaming runtime families or runtime kinds from this file, preexisting actions",
        "with the affected kinds can no longer be read / updated / deleted / invoked. In order to remove or rename",
        "runtime families or runtime kinds, mark all affected runtime kinds as deprecated (deprecated: true) and",
        "perform a manual migration of all affected actions.",
        "",
        "This file is meant to list all stable runtimes supported by the Apache Openwhisk community."
    ],
    "runtimes": {
        "nodejs": [
            {
                "kind": "nodejs:24",
                "default": true,
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-nodejs",
                    "tag": "$OPS_RUNTIME_TAG_NODEJS_V24"
                },
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                },
                "stemCells": [
                    {
                        "initialCount": 1,
                        "memory": "256 MB",
                        "reactive": {
                            "minCount": 1,
                            "maxCount": 4,
                            "ttl": "2 minutes",
                            "threshold": 1,
                            "increment": 1
                        }
                    }
                ]
            },
            {
                "kind": "nodejs:22",
                "default": false,
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-nodejs",
                    "tag": "$OPS_RUNTIME_TAG_NODEJS_V22"
                },
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                }
            },
            {
                "kind": "nodejs:20",
                "default": false,
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-nodejs",
                    "tag": "$OPS_RUNTIME_TAG_NODEJS_V20"
                },
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                }
            }
        ],
        "python": [
            {
                "kind": "python:3",
                "default": true,
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-python",
                    "tag": "$OPS_RUNTIME_TAG_PYTHON_V3_12"
                },
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                },
                "stemCells": [
                    {
                        "initialCount": 1,
                        "memory": "256 MB",
                        "reactive": {
                            "minCount": 1,
                            "maxCount": 4,
                            "ttl": "2 minutes",
                            "threshold": 1,
                            "increment": 1
                        }
                    }
                ]
            },
            {
                "kind": "python:3.11",
                "default": false,
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-python",
                    "tag": "$OPS_RUNTIME_TAG_PYTHON_V3_11"
                },
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                }
            },
            {
                "kind": "python:3.12",
                "default": false,
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-python",
                    "tag": "$OPS_RUNTIME_TAG_PYTHON_V3_12"
                },
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                }
            },
            {
                "kind": "python:3.13",
                "default": false,
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-python",
                    "tag": "$OPS_RUNTIME_TAG_PYTHON_V3_13"
                },
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                }
            }
        ],
        "go": [
            {
                "kind": "go:1.27",
                "default": true,
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                },
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-go",
                    "tag": "$OPS_RUNTIME_TAG_GO_V1_27"
                }
            },
            {
                "kind": "go:1.26",
                "default": false,
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                },
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-go",
                    "tag": "$OPS_RUNTIME_TAG_GO_V1_26"
                }
            },
            {
                "kind": "go:1.25",
                "default": false,
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                },
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-go",
                    "tag": "$OPS_RUNTIME_TAG_GO_V1_25"
                }
            }
        ],
        "java": [
            {
                "kind": "java:8",
                "default": true,
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-java",
                    "tag": "$OPS_RUNTIME_TAG_JAVA_V8"
                },
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                },
                "requireMain": true
            },
            {
                "kind": "java:11",
                "default": false,
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-java",
                    "tag": "$OPS_RUNTIME_TAG_JAVA_V11"
                },
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                },
                "requireMain": true
            },
            {
                "kind": "java:17",
                "default": false,
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-java",
                    "tag": "$OPS_RUNTIME_TAG_JAVA_V17"
                },
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                },
                "requireMain": true
            },
            {
                "kind": "java:21",
                "default": false,
                "image": {
                    "prefix": "$OPS_RUNTIME_PREFIX",
                    "name": "openserverless-runtime-java",
                    "tag": "$OPS_RUNTIME_TAG_JAVA_V21"
                },
                "deprecated": false,
                "attached": {
                    "attachmentName": "codefile",
                    "attachmentType": "text/plain"
                },
                "requireMain": true
            }
        ]
    },
    "blackboxes": [ ]
}