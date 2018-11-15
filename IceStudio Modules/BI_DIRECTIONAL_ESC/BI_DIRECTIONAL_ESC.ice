{
  "version": "1.1",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "9edbea68-fb5c-4b8a-8019-380addc4b62b",
          "type": "basic.output",
          "data": {
            "name": "d0",
            "pins": [
              {
                "index": "0",
                "name": "D0",
                "value": "119"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 528,
            "y": 232
          }
        },
        {
          "id": "1cf34130-e9cf-4658-b5b5-3c2b5dbcf6f5",
          "type": "basic.input",
          "data": {
            "name": "clock",
            "pins": [
              {
                "index": "0",
                "name": "CLK",
                "value": "21"
              }
            ],
            "virtual": false,
            "clock": true
          },
          "position": {
            "x": -784,
            "y": 312
          }
        },
        {
          "id": "7b6585c9-7559-4723-b00b-801f400bb4be",
          "type": "basic.input",
          "data": {
            "name": "sw2",
            "pins": [
              {
                "index": "0",
                "name": "SW2",
                "value": "11"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -752,
            "y": 464
          }
        },
        {
          "id": "98ff916c-72f2-43df-894b-7c51ed5547d8",
          "type": "1374ebd258036ea0ace53cbfce7f63fbf69e9c18",
          "position": {
            "x": 48,
            "y": 288
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "b0b13ac1-d383-4585-bb44-a0e64ed60e14",
          "type": "789f49b4dc917e65579a4df9455b40a73e718cf6",
          "position": {
            "x": 312,
            "y": 216
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "6e1467cf-c4a6-40c6-a90b-f768a9b84767",
          "type": "basic.code",
          "data": {
            "code": "reg flag = 1'b0;\nreg [7:0] vel_reg = 8'd130;\nalways @(posedge clock)\nbegin\n  vel_reg<= (flag==1'b1)? 8'd130:8'd115;   \nend\n\nalways @(posedge sw2)\nbegin\n    flag<= !flag;\nend\n\nassign vel = vel_reg;\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "sw2"
                },
                {
                  "name": "clock"
                }
              ],
              "out": [
                {
                  "name": "vel",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": -560,
            "y": -48
          },
          "size": {
            "width": 544,
            "height": 304
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "b0b13ac1-d383-4585-bb44-a0e64ed60e14",
            "port": "a17f6d49-c409-497e-a7f9-96b8c6997008"
          },
          "target": {
            "block": "9edbea68-fb5c-4b8a-8019-380addc4b62b",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "98ff916c-72f2-43df-894b-7c51ed5547d8",
            "port": "2515087a-5907-41f4-b2ef-f525321654cd"
          },
          "target": {
            "block": "b0b13ac1-d383-4585-bb44-a0e64ed60e14",
            "port": "7db0c83e-f877-4693-a1af-f53d5236aa28"
          }
        },
        {
          "source": {
            "block": "6e1467cf-c4a6-40c6-a90b-f768a9b84767",
            "port": "vel"
          },
          "target": {
            "block": "b0b13ac1-d383-4585-bb44-a0e64ed60e14",
            "port": "814d3c51-fd50-4182-b0cd-968cd478884b"
          },
          "size": 8
        },
        {
          "source": {
            "block": "7b6585c9-7559-4723-b00b-801f400bb4be",
            "port": "out"
          },
          "target": {
            "block": "6e1467cf-c4a6-40c6-a90b-f768a9b84767",
            "port": "sw2"
          }
        },
        {
          "source": {
            "block": "7b6585c9-7559-4723-b00b-801f400bb4be",
            "port": "out"
          },
          "target": {
            "block": "98ff916c-72f2-43df-894b-7c51ed5547d8",
            "port": "42fb9a9e-03c8-426d-a2bf-1cf6cf2c55c5"
          }
        },
        {
          "source": {
            "block": "1cf34130-e9cf-4658-b5b5-3c2b5dbcf6f5",
            "port": "out"
          },
          "target": {
            "block": "6e1467cf-c4a6-40c6-a90b-f768a9b84767",
            "port": "clock"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 842.9295,
        "y": 349.786
      },
      "zoom": 1
    }
  },
  "dependencies": {
    "1374ebd258036ea0ace53cbfce7f63fbf69e9c18": {
      "package": {
        "name": "START_MODULE",
        "version": "1.0",
        "description": "This module is only a flag in order to start a specified behaviour",
        "author": "Juan Ordoñez Cerezo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20489.888%20489.888%22%3E%3Cpath%20d=%22M25.383%20290.5c-7.2-77.5%2025.9-147.7%2080.8-192.3%2021.4-17.4%2053.4-2.5%2053.4%2025%200%2010.1-4.8%2019.4-12.6%2025.7-38.9%2031.7-62.3%2081.7-56.6%20136.9%207.4%2071.9%2065%20130.1%20136.8%20138.1%2093.7%2010.5%20173.3-62.9%20173.3-154.5%200-48.6-22.5-92.1-57.6-120.6-7.8-6.3-12.5-15.6-12.5-25.6%200-27.2%2031.5-42.6%2052.7-25.6%2050.2%2040.5%2082.4%20102.4%2082.4%20171.8%200%20126.9-107.8%20229.2-236.7%20219.9-106.6-7.5-193.5-92.4-203.4-198.8zM244.883%200c-18%200-32.5%2014.6-32.5%2032.5v149.7c0%2018%2014.6%2032.5%2032.5%2032.5s32.5-14.6%2032.5-32.5V32.5c0-17.9-14.5-32.5-32.5-32.5z%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "42fb9a9e-03c8-426d-a2bf-1cf6cf2c55c5",
              "type": "basic.input",
              "data": {
                "name": "s1",
                "clock": false
              },
              "position": {
                "x": 64,
                "y": 184
              }
            },
            {
              "id": "2515087a-5907-41f4-b2ef-f525321654cd",
              "type": "basic.output",
              "data": {
                "name": "start"
              },
              "position": {
                "x": 792,
                "y": 184
              }
            },
            {
              "id": "3f0b45d5-b6ed-4c06-a829-4a52c7019d95",
              "type": "basic.code",
              "data": {
                "code": "reg aux = 0;\nalways @(posedge s1) begin\n      aux <= 1;\nend\nassign start = aux;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "s1"
                    }
                  ],
                  "out": [
                    {
                      "name": "start"
                    }
                  ]
                }
              },
              "position": {
                "x": 232,
                "y": 80
              },
              "size": {
                "width": 512,
                "height": 272
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "42fb9a9e-03c8-426d-a2bf-1cf6cf2c55c5",
                "port": "out"
              },
              "target": {
                "block": "3f0b45d5-b6ed-4c06-a829-4a52c7019d95",
                "port": "s1"
              }
            },
            {
              "source": {
                "block": "3f0b45d5-b6ed-4c06-a829-4a52c7019d95",
                "port": "start"
              },
              "target": {
                "block": "2515087a-5907-41f4-b2ef-f525321654cd",
                "port": "in"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 493,
            "y": 261.5
          },
          "zoom": 1
        }
      }
    },
    "789f49b4dc917e65579a4df9455b40a73e718cf6": {
      "package": {
        "name": "ESC_MODULE",
        "version": "",
        "description": "",
        "author": "",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20512%20512%22%3E%3Cg%20fill=%22#f2f2f2%22%3E%3Ccircle%20cx=%22256%22%20cy=%22256%22%20r=%22256%22/%3E%3Cpath%20d=%22M256%20256zM256%20256zM256%20256zM256%20256zM256%20256zM256%20256z%22/%3E%3C/g%3E%3Cpath%20d=%22M481.067%20256H393.6c0-25.6-6.4-48-18.133-69.333-11.733-21.333-29.867-38.4-50.133-50.133L369.067%2060.8C403.2%2081.067%20432%20108.8%20451.2%20142.933c18.133%2034.134%2029.867%2072.534%2029.867%20113.067z%22%20fill=%22#f8b64c%22/%3E%3Cpath%20d=%22M481.067%20256c0%2040.533-10.667%2078.933-29.867%20112-19.2%2034.133-48%2062.933-82.133%2082.133L325.333%20374.4c21.333-11.733%2038.4-29.867%2050.133-50.133C387.2%20304%20393.6%20280.533%20393.6%20254.933h87.467V256z%22%20fill=%22#ff7058%22/%3E%3Cpath%20d=%22M186.667%20136.533c-21.333%2011.733-38.4%2029.867-50.133%2050.133C124.8%20206.933%20118.4%20230.4%20118.4%20256H30.933c0-40.533%2010.667-78.933%2029.867-112%2019.2-34.133%2048-62.933%2082.133-82.133l43.734%2074.666z%22%20fill=%22#54c0eb%22/%3E%3Cpath%20d=%22M186.667%20375.467L142.933%20451.2C108.8%20432%2080%20403.2%2060.8%20369.067%2042.667%20334.933%2030.933%20296.533%2030.933%20256H118.4c0%2025.6%206.4%2049.067%2018.133%2069.333a160.656%20160.656%200%200%200%2050.134%2050.134z%22%20fill=%22#84dbff%22/%3E%3Cpath%20d=%22M368%2061.867L324.267%20137.6c-20.267-11.733-43.733-18.133-69.333-18.133s-48%206.4-69.333%2018.133l-43.733-75.733c35.2-19.2%2073.6-30.933%20114.133-30.933S334.933%2042.667%20368%2061.867z%22%20fill=%22#ffd15c%22/%3E%3Ccircle%20cx=%22256%22%20cy=%22256%22%20r=%22137.6%22%20fill=%22#f2f2f2%22/%3E%3Cpath%20d=%22M273.067%20230.4c12.8%209.6%2016%2027.733%207.467%2040.533-9.6%2012.8-27.733%2016-40.533%207.467-12.8-9.6-87.467-96-87.467-96s106.666%2038.4%20120.533%2048z%22%20fill=%22#40596b%22/%3E%3Ccircle%20cx=%22256%22%20cy=%22253.867%22%20r=%2217.067%22%20fill=%22#ff7058%22/%3E%3Cpath%20d=%22M256%2052.267c120.533%200%20218.667%2094.933%20224%20214.4%200-3.2%201.067-7.467%201.067-10.667C481.067%20132.267%20380.8%2030.933%20256%2030.933S30.933%20132.267%2030.933%20256c0%203.2%200%207.467%201.067%2010.667%205.333-119.467%20103.467-214.4%20224-214.4z%22%20opacity=%22.15%22%20fill=%22#40596b%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "814d3c51-fd50-4182-b0cd-968cd478884b",
              "type": "basic.input",
              "data": {
                "name": "velocity",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 160,
                "y": -104
              }
            },
            {
              "id": "af2dc11f-2f3f-4871-939a-7290ce59e7d5",
              "type": "basic.input",
              "data": {
                "name": "clock",
                "clock": true
              },
              "position": {
                "x": -112,
                "y": 88
              }
            },
            {
              "id": "a17f6d49-c409-497e-a7f9-96b8c6997008",
              "type": "basic.output",
              "data": {
                "name": "PWM_ESC"
              },
              "position": {
                "x": 512,
                "y": 232
              }
            },
            {
              "id": "7db0c83e-f877-4693-a1af-f53d5236aa28",
              "type": "basic.input",
              "data": {
                "name": "start",
                "clock": false
              },
              "position": {
                "x": -56,
                "y": 368
              }
            },
            {
              "id": "706e4619-c8ba-4728-86fc-1d1db9863b26",
              "type": "4fb3e2051534a583c5f4cc4f130ddb64650b407a",
              "position": {
                "x": 88,
                "y": 216
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "9cf960a5-2f73-423c-9b01-1cda32905cae",
              "type": "3755935957f2fa38ed2cffb45336207a43339bea",
              "position": {
                "x": 320,
                "y": 200
              },
              "size": {
                "width": 96,
                "height": 128
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "9cf960a5-2f73-423c-9b01-1cda32905cae",
                "port": "63a66901-b384-423f-9b70-76f155bebb40"
              },
              "target": {
                "block": "a17f6d49-c409-497e-a7f9-96b8c6997008",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "af2dc11f-2f3f-4871-939a-7290ce59e7d5",
                "port": "out"
              },
              "target": {
                "block": "9cf960a5-2f73-423c-9b01-1cda32905cae",
                "port": "159fd93f-0f27-4956-93b1-1343b7692189"
              }
            },
            {
              "source": {
                "block": "af2dc11f-2f3f-4871-939a-7290ce59e7d5",
                "port": "out"
              },
              "target": {
                "block": "706e4619-c8ba-4728-86fc-1d1db9863b26",
                "port": "973a6501-d0df-47f6-8645-a9c1a1b3685b"
              }
            },
            {
              "source": {
                "block": "706e4619-c8ba-4728-86fc-1d1db9863b26",
                "port": "34c1d111-2ea5-410c-826f-ccee56b5c23a"
              },
              "target": {
                "block": "9cf960a5-2f73-423c-9b01-1cda32905cae",
                "port": "a4550e0b-eaaa-4b46-82cc-c0b941252edd"
              }
            },
            {
              "source": {
                "block": "7db0c83e-f877-4693-a1af-f53d5236aa28",
                "port": "out"
              },
              "target": {
                "block": "9cf960a5-2f73-423c-9b01-1cda32905cae",
                "port": "8b33b8c2-e685-4d38-b041-0d9fae82e57f"
              }
            },
            {
              "source": {
                "block": "7db0c83e-f877-4693-a1af-f53d5236aa28",
                "port": "out"
              },
              "target": {
                "block": "706e4619-c8ba-4728-86fc-1d1db9863b26",
                "port": "1e843d6e-dc66-40ca-9cff-dc5d8b36e9f6"
              }
            },
            {
              "source": {
                "block": "814d3c51-fd50-4182-b0cd-968cd478884b",
                "port": "out"
              },
              "target": {
                "block": "9cf960a5-2f73-423c-9b01-1cda32905cae",
                "port": "fb2e612d-7fa0-45dc-9390-b88bd63b3f56"
              },
              "vertices": [
                {
                  "x": 256,
                  "y": 80
                }
              ],
              "size": 8
            }
          ]
        },
        "state": {
          "pan": {
            "x": 230.4328,
            "y": 135.8507
          },
          "zoom": 0.9216
        }
      }
    },
    "4fb3e2051534a583c5f4cc4f130ddb64650b407a": {
      "package": {
        "name": "ESC_ACTIVATION",
        "version": "",
        "description": "",
        "author": "",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "973a6501-d0df-47f6-8645-a9c1a1b3685b",
              "type": "basic.input",
              "data": {
                "name": "clock",
                "clock": true
              },
              "position": {
                "x": -80,
                "y": 184
              }
            },
            {
              "id": "34c1d111-2ea5-410c-826f-ccee56b5c23a",
              "type": "basic.output",
              "data": {
                "name": "ready"
              },
              "position": {
                "x": 1016,
                "y": 288
              }
            },
            {
              "id": "1e843d6e-dc66-40ca-9cff-dc5d8b36e9f6",
              "type": "basic.input",
              "data": {
                "name": "start",
                "clock": false
              },
              "position": {
                "x": -88,
                "y": 392
              }
            },
            {
              "id": "3056878e-1457-4224-8dd9-07f54dfc51c4",
              "type": "basic.code",
              "data": {
                "code": "localparam pulses_1seg = 12000000;\r\nreg [23:0] contador = 1;\r\nreg aux = 1;\r\n\r\n  always @ (posedge clock)\r\n  begin\r\n    if(start==1)\r\n    begin\r\n    contador <= (contador == pulses_1seg-1) ? 0 : contador + 1;\r\n    end\r\n  end\r\n  \r\n  always @(posedge clock)\r\n  begin\r\n   if (contador==0)\r\n     aux<=1'b0;\r\n  end\r\n\r\nassign ready = aux; ",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clock"
                    },
                    {
                      "name": "start"
                    }
                  ],
                  "out": [
                    {
                      "name": "ready"
                    }
                  ]
                }
              },
              "position": {
                "x": 80,
                "y": 104
              },
              "size": {
                "width": 816,
                "height": 432
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "973a6501-d0df-47f6-8645-a9c1a1b3685b",
                "port": "out"
              },
              "target": {
                "block": "3056878e-1457-4224-8dd9-07f54dfc51c4",
                "port": "clock"
              }
            },
            {
              "source": {
                "block": "3056878e-1457-4224-8dd9-07f54dfc51c4",
                "port": "ready"
              },
              "target": {
                "block": "34c1d111-2ea5-410c-826f-ccee56b5c23a",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "1e843d6e-dc66-40ca-9cff-dc5d8b36e9f6",
                "port": "out"
              },
              "target": {
                "block": "3056878e-1457-4224-8dd9-07f54dfc51c4",
                "port": "start"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 559.3959,
            "y": 255.3786
          },
          "zoom": 0.8095
        }
      }
    },
    "3755935957f2fa38ed2cffb45336207a43339bea": {
      "package": {
        "name": "ESC_CONTROLLER",
        "version": "1.0.0",
        "description": "",
        "author": "",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "159fd93f-0f27-4956-93b1-1343b7692189",
              "type": "basic.input",
              "data": {
                "name": "clock",
                "clock": true
              },
              "position": {
                "x": -200,
                "y": -336
              }
            },
            {
              "id": "a4550e0b-eaaa-4b46-82cc-c0b941252edd",
              "type": "basic.input",
              "data": {
                "name": "ready",
                "clock": false
              },
              "position": {
                "x": -192,
                "y": -208
              }
            },
            {
              "id": "63a66901-b384-423f-9b70-76f155bebb40",
              "type": "basic.output",
              "data": {
                "name": "PWM_ESC"
              },
              "position": {
                "x": 1232,
                "y": -144
              }
            },
            {
              "id": "fb2e612d-7fa0-45dc-9390-b88bd63b3f56",
              "type": "basic.input",
              "data": {
                "name": "velocity",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": -192,
                "y": -80
              }
            },
            {
              "id": "8b33b8c2-e685-4d38-b041-0d9fae82e57f",
              "type": "basic.input",
              "data": {
                "name": "start",
                "clock": false
              },
              "position": {
                "x": -200,
                "y": 40
              }
            },
            {
              "id": "50d5caeb-e74a-4756-a919-8a5f8399271d",
              "type": "basic.code",
              "data": {
                "code": "localparam pulses_nedded = 240000; \r\nlocalparam pulses_nedded_1_5ms = 18000;\r\n\r\nreg [17:0] pulses_nedded_velocity = 10000; //24009 maximo\r\nreg [17:0] count = 0; \r\nreg T = 0;\r\n\r\nalways @(posedge clock)\r\nbegin\r\n  count <= (count == pulses_nedded-1) ? 0: count+1;\r\n  pulses_nedded_velocity <= (18'd12000+(velocity*18'd47) >=24000) ? 23999: 18'd12000+(velocity*18'd47);\r\n\r\nend\r\n\r\nalways @(clock)\r\nbegin\r\n  if(ready==1'b1 && start==1'b1)\r\n    T <= (count <= pulses_nedded_1_5ms) ? 1:0;\r\n  else if(ready==1'b0)\r\n    T <= (count <= pulses_nedded_velocity) ? 1:0;\r\nend\r\nassign PWM_ESC = T;\r\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clock"
                    },
                    {
                      "name": "ready"
                    },
                    {
                      "name": "velocity",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "start"
                    }
                  ],
                  "out": [
                    {
                      "name": "PWM_ESC"
                    }
                  ]
                }
              },
              "position": {
                "x": -8,
                "y": -368
              },
              "size": {
                "width": 1136,
                "height": 512
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "50d5caeb-e74a-4756-a919-8a5f8399271d",
                "port": "PWM_ESC"
              },
              "target": {
                "block": "63a66901-b384-423f-9b70-76f155bebb40",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "159fd93f-0f27-4956-93b1-1343b7692189",
                "port": "out"
              },
              "target": {
                "block": "50d5caeb-e74a-4756-a919-8a5f8399271d",
                "port": "clock"
              }
            },
            {
              "source": {
                "block": "a4550e0b-eaaa-4b46-82cc-c0b941252edd",
                "port": "out"
              },
              "target": {
                "block": "50d5caeb-e74a-4756-a919-8a5f8399271d",
                "port": "ready"
              }
            },
            {
              "source": {
                "block": "8b33b8c2-e685-4d38-b041-0d9fae82e57f",
                "port": "out"
              },
              "target": {
                "block": "50d5caeb-e74a-4756-a919-8a5f8399271d",
                "port": "start"
              }
            },
            {
              "source": {
                "block": "fb2e612d-7fa0-45dc-9390-b88bd63b3f56",
                "port": "out"
              },
              "target": {
                "block": "50d5caeb-e74a-4756-a919-8a5f8399271d",
                "port": "velocity"
              },
              "size": 8
            }
          ]
        },
        "state": {
          "pan": {
            "x": 149.6859,
            "y": 348.4241
          },
          "zoom": 0.5484
        }
      }
    }
  }
}