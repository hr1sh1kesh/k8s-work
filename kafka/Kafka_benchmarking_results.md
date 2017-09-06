# Kafka benchmarking results

## Single Producer, no replication with PX 

## 10 mil with PX (5KB Payload)

```
bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 10000000 --record-size 5 --throughput -1 --producer-props bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196


1273592 records sent, 254311.5 records/sec (1.21 MB/sec), 16.4 ms avg latency, 372.0 max latency.
1881477 records sent, 376295.4 records/sec (1.79 MB/sec), 9.1 ms avg latency, 196.0 max latency.
3814013 records sent, 758403.9 records/sec (3.62 MB/sec), 6.4 ms avg latency, 173.0 max latency.
10000000 records sent, 531886.601777 records/sec (2.54 MB/sec), 7.81 ms avg latency, 372.00 ms max latency, 1 ms 50th, 57 ms 95th, 122 ms 99th, 169 ms 99.9th.
```

## 15 mil with PX (5KB Payload)
```
bin/kafka-run-class.sh org.apache.kafka.tools.Produce
rPerformance --topic kbrep1-topic-px --num-records 15000000 --record-size 5 --th
roughput -1 --producer-props bootstrap.servers=kafka-0.broker.kafka.svc.cluster.
local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.
cluster.local:9092 batch.size=8196

1455650 records sent, 290723.0 records/sec (1.39 MB/sec), 15.8 ms avg latency, 379.0 max latency.
1589134 records sent, 317002.6 records/sec (1.51 MB/sec), 8.4 ms avg latency, 229.0 max latency.
1566200 records sent, 307943.4 records/sec (1.47 MB/sec), 8.5 ms avg latency, 198.0 max latency.
3131432 records sent, 626286.4 records/sec (2.99 MB/sec), 6.5 ms avg latency, 160.0 max latency.
1814173 records sent, 360240.9 records/sec (1.72 MB/sec), 7.0 ms avg latency, 304.0 max latency.
3316767 records sent, 663353.4 records/sec (3.16 MB/sec), 9.6 ms avg latency, 308.0 max latency.
15000000 records sent, 433789.294080 records/sec (2.07 MB/sec), 8.87 ms avg latency, 379.00 ms max latency, 1 ms 50th, 97 ms 95th, 166 ms 99th, 231 ms 99.9th.
```

## 25 mil with PX (5KB Payload)

```
bin/kafka-run-class.sh org.apache.kafka.tools.Produce
rPerformance --topic kbrep1-topic-px --num-records 25000000 --record-size 5 --th
roughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.c
luster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kaf
ka.svc.cluster.local:9092 batch.size=8196
1569928 records sent, 313233.8 records/sec (1.49 MB/sec), 12.8 ms avg latency, 368.0 max latency.
2766688 records sent, 552343.4 records/sec (2.63 MB/sec), 9.4 ms avg latency, 202.0 max latency.
1362262 records sent, 269915.2 records/sec (1.29 MB/sec), 8.1 ms avg latency, 170.0 max latency.
3284618 records sent, 656923.6 records/sec (3.13 MB/sec), 4.2 ms avg latency, 174.0 max latency.
2956603 records sent, 591320.6 records/sec (2.82 MB/sec), 5.0 ms avg latency, 182.0 max latency.
2504464 records sent, 499195.5 records/sec (2.38 MB/sec), 4.9 ms avg latency, 166.0 max latency.
2333685 records sent, 456154.2 records/sec (2.18 MB/sec), 29.5 ms avg latency, 441.0 max latency.
3718735 records sent, 733767.8 records/sec (3.50 MB/sec), 7.9 ms avg latency, 197.0 max latency.
2734497 records sent, 545263.6 records/sec (2.60 MB/sec), 5.5 ms avg latency, 210.0 max latency.
25000000 records sent, 522990.669846 records/sec (2.49 MB/sec), 8.88 ms avg latency, 441.00 ms max latency, 1 ms 50th, 56 ms 95th, 162 ms 99th, 315 ms 99.9th.
```

## 50 mil with PX (5KB Payload)

```
bin/kafka-run-class.sh org.apache.kafka.tools.Produce
rPerformance --topic kbrep1-topic-px --num-records 50000000 --record-size 5 --th
roughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.c
luster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kaf
ka.svc.cluster.local:9092 batch.size=8196

1221403 records sent, 241193.3 records/sec (1.15 MB/sec), 17.1 ms avg latency, 281.0 max latency.
3347409 records sent, 669481.8 records/sec (3.19 MB/sec), 8.9 ms avg latency, 206.0 max latency.
3846634 records sent, 769326.8 records/sec (3.67 MB/sec), 7.5 ms avg latency, 189.0 max latency.
2596610 records sent, 519322.0 records/sec (2.48 MB/sec), 4.7 ms avg latency, 170.0 max latency.
3121050 records sent, 616321.1 records/sec (2.94 MB/sec), 7.0 ms avg latency, 318.0 max latency.
2138640 records sent, 426959.5 records/sec (2.04 MB/sec), 4.6 ms avg latency, 203.0 max latency.
1861299 records sent, 372259.8 records/sec (1.78 MB/sec), 6.6 ms avg latency, 245.0 max latency.
3998711 records sent, 799742.2 records/sec (3.81 MB/sec), 3.8 ms avg latency, 133.0 max latency.
1781826 records sent, 353256.5 records/sec (1.68 MB/sec), 4.6 ms avg latency, 209.0 max latency.
1403416 records sent, 280683.2 records/sec (1.34 MB/sec), 7.3 ms avg latency, 227.0 max latency.
1878046 records sent, 373220.6 records/sec (1.78 MB/sec), 6.2 ms avg latency, 197.0 max latency.
2106874 records sent, 420617.7 records/sec (2.01 MB/sec), 4.9 ms avg latency, 204.0 max latency.
2065145 records sent, 413029.0 records/sec (1.97 MB/sec), 5.3 ms avg latency, 136.0 max latency.
1369530 records sent, 273523.1 records/sec (1.30 MB/sec), 6.2 ms avg latency, 221.0 max latency.
2871900 records sent, 574380.0 records/sec (2.74 MB/sec), 6.2 ms avg latency, 170.0 max latency.
3807054 records sent, 761410.8 records/sec (3.63 MB/sec), 4.9 ms avg latency, 158.0 max latency.
3780562 records sent, 756112.4 records/sec (3.61 MB/sec), 3.4 ms avg latency, 172.0 max latency.
4936775 records sent, 987355.0 records/sec (4.71 MB/sec), 4.5 ms avg latency, 126.0 max latency.
50000000 records sent, 544994.768050 records/sec (2.60 MB/sec), 5.81 ms avg latency, 318.00 ms max latency, 1 ms 50th, 39 ms 95th, 100 ms 99th, 193 ms 99.9th.
```

## 200 mil with PX (5KB Payload)
```
bin/kafka-run-class.sh org.apache.kafka.tools.Produce
rPerformance --topic kbrep1-topic-px --num-records 200000000 --record-size 5 --t
hroughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.
cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.ka
fka.svc.cluster.local:9092 batch.size=8196

1573380 records sent, 311190.7 records/sec (1.48 MB/sec), 12.8 ms avg latency, 392.0 max latency.
1413596 records sent, 282719.2 records/sec (1.35 MB/sec), 11.3 ms avg latency, 214.0 max latency.
2766378 records sent, 553275.6 records/sec (2.64 MB/sec), 4.5 ms avg latency, 154.0 max latency.
2800985 records sent, 556966.6 records/sec (2.66 MB/sec), 5.5 ms avg latency, 199.0 max latency.
1911843 records sent, 382368.6 records/sec (1.82 MB/sec), 5.5 ms avg latency, 215.0 max latency.
2285928 records sent, 457185.6 records/sec (2.18 MB/sec), 19.2 ms avg latency, 366.0 max latency.
2024906 records sent, 397742.3 records/sec (1.90 MB/sec), 8.3 ms avg latency, 169.0 max latency.
1281443 records sent, 255573.0 records/sec (1.22 MB/sec), 7.6 ms avg latency, 174.0 max latency.
2571088 records sent, 513909.3 records/sec (2.45 MB/sec), 8.4 ms avg latency, 218.0 max latency.
1276706 records sent, 255341.2 records/sec (1.22 MB/sec), 8.4 ms avg latency, 190.0 max latency.
2467694 records sent, 493538.8 records/sec (2.35 MB/sec), 5.3 ms avg latency, 216.0 max latency.
3413487 records sent, 681334.7 records/sec (3.25 MB/sec), 6.3 ms avg latency, 130.0 max latency.
2190462 records sent, 437479.9 records/sec (2.09 MB/sec), 4.4 ms avg latency, 146.0 max latency.
1569225 records sent, 310737.6 records/sec (1.48 MB/sec), 6.9 ms avg latency, 216.0 max latency.
3779143 records sent, 755828.6 records/sec (3.60 MB/sec), 4.0 ms avg latency, 173.0 max latency.
4388138 records sent, 877627.6 records/sec (4.18 MB/sec), 4.4 ms avg latency, 200.0 max latency.
2458695 records sent, 491739.0 records/sec (2.34 MB/sec), 5.7 ms avg latency, 195.0 max latency.
4207306 records sent, 837941.8 records/sec (4.00 MB/sec), 6.3 ms avg latency, 234.0 max latency.
4339003 records sent, 867280.2 records/sec (4.14 MB/sec), 5.5 ms avg latency, 178.0 max latency.
3210648 records sent, 642129.6 records/sec (3.06 MB/sec), 4.1 ms avg latency, 158.0 max latency.
1957216 records sent, 387414.1 records/sec (1.85 MB/sec), 8.1 ms avg latency, 351.0 max latency.
2832301 records sent, 558639.3 records/sec (2.66 MB/sec), 4.5 ms avg latency, 158.0 max latency.
2220726 records sent, 444145.2 records/sec (2.12 MB/sec), 7.7 ms avg latency, 224.0 max latency.
2429474 records sent, 470554.7 records/sec (2.24 MB/sec), 9.0 ms avg latency, 206.0 max latency.
2885467 records sent, 566333.1 records/sec (2.70 MB/sec), 5.1 ms avg latency, 206.0 max latency.
2267270 records sent, 453001.0 records/sec (2.16 MB/sec), 6.0 ms avg latency, 194.0 max latency.
3557904 records sent, 709028.3 records/sec (3.38 MB/sec), 5.5 ms avg latency, 164.0 max latency.
2033455 records sent, 405555.4 records/sec (1.93 MB/sec), 4.9 ms avg latency, 200.0 max latency.
2035490 records sent, 402828.0 records/sec (1.92 MB/sec), 5.2 ms avg latency, 203.0 max latency.
1239055 records sent, 247267.0 records/sec (1.18 MB/sec), 6.7 ms avg latency, 197.0 max latency.
3023525 records sent, 602295.8 records/sec (2.87 MB/sec), 6.5 ms avg latency, 190.0 max latency.
1899867 records sent, 375171.2 records/sec (1.79 MB/sec), 10.5 ms avg latency, 175.0 max latency.
1545366 records sent, 306924.7 records/sec (1.46 MB/sec), 6.9 ms avg latency, 200.0 max latency.
1257045 records sent, 248821.3 records/sec (1.19 MB/sec), 6.4 ms avg latency, 230.0 max latency.
2666712 records sent, 530056.1 records/sec (2.53 MB/sec), 12.5 ms avg latency, 280.0 max latency.
1256038 records sent, 249213.9 records/sec (1.19 MB/sec), 7.4 ms avg latency, 183.0 max latency.
2094380 records sent, 418876.0 records/sec (2.00 MB/sec), 5.5 ms avg latency, 177.0 max latency.
1998780 records sent, 394081.2 records/sec (1.88 MB/sec), 8.5 ms avg latency, 185.0 max latency.
1480483 records sent, 294389.1 records/sec (1.40 MB/sec), 6.2 ms avg latency, 204.0 max latency.
1331857 records sent, 260484.5 records/sec (1.24 MB/sec), 8.3 ms avg latency, 418.0 max latency.
1327306 records sent, 262313.4 records/sec (1.25 MB/sec), 6.1 ms avg latency, 173.0 max latency.
2469377 records sent, 491320.5 records/sec (2.34 MB/sec), 5.5 ms avg latency, 184.0 max latency.
2137840 records sent, 407362.8 records/sec (1.94 MB/sec), 13.9 ms avg latency, 281.0 max latency.
1927195 records sent, 385439.0 records/sec (1.84 MB/sec), 8.0 ms avg latency, 258.0 max latency.
1505339 records sent, 301067.8 records/sec (1.44 MB/sec), 6.1 ms avg latency, 165.0 max latency.
1199860 records sent, 239972.0 records/sec (1.14 MB/sec), 6.8 ms avg latency, 202.0 max latency.
1644086 records sent, 328817.2 records/sec (1.57 MB/sec), 10.1 ms avg latency, 219.0 max latency.
1690128 records sent, 337890.4 records/sec (1.61 MB/sec), 6.7 ms avg latency, 226.0 max latency.
1881470 records sent, 374496.4 records/sec (1.79 MB/sec), 6.1 ms avg latency, 234.0 max latency.
2273717 records sent, 450508.6 records/sec (2.15 MB/sec), 5.3 ms avg latency, 222.0 max latency.
1927609 records sent, 377740.3 records/sec (1.80 MB/sec), 6.1 ms avg latency, 154.0 max latency.
2059603 records sent, 411920.6 records/sec (1.96 MB/sec), 5.4 ms avg latency, 176.0 max latency.
1663762 records sent, 327190.2 records/sec (1.56 MB/sec), 5.2 ms avg latency, 188.0 max latency.
1497184 records sent, 298719.9 records/sec (1.42 MB/sec), 9.6 ms avg latency, 210.0 max latency.
1372950 records sent, 274590.0 records/sec (1.31 MB/sec), 6.7 ms avg latency, 218.0 max latency.
1570024 records sent, 314004.8 records/sec (1.50 MB/sec), 7.4 ms avg latency, 172.0 max latency.
1789503 records sent, 357900.6 records/sec (1.71 MB/sec), 5.9 ms avg latency, 174.0 max latency.
2483808 records sent, 493897.0 records/sec (2.36 MB/sec), 7.4 ms avg latency, 185.0 max latency.
2446457 records sent, 487342.0 records/sec (2.32 MB/sec), 5.9 ms avg latency, 155.0 max latency.
2633802 records sent, 526760.4 records/sec (2.51 MB/sec), 8.1 ms avg latency, 217.0 max latency.
2586119 records sent, 512001.4 records/sec (2.44 MB/sec), 12.7 ms avg latency, 354.0 max latency.
1404479 records sent, 277345.8 records/sec (1.32 MB/sec), 7.9 ms avg latency, 261.0 max latency.
1514416 records sent, 301856.9 records/sec (1.44 MB/sec), 6.5 ms avg latency, 191.0 max latency.
2040824 records sent, 408164.8 records/sec (1.95 MB/sec), 7.5 ms avg latency, 224.0 max latency.
2599811 records sent, 519962.2 records/sec (2.48 MB/sec), 8.2 ms avg latency, 215.0 max latency.
4407346 records sent, 881469.2 records/sec (4.20 MB/sec), 3.3 ms avg latency, 121.0 max latency.
2302332 records sent, 452058.1 records/sec (2.16 MB/sec), 52.4 ms avg latency, 687.0 max latency.
1478390 records sent, 295678.0 records/sec (1.41 MB/sec), 10.4 ms avg latency, 166.0 max latency.
3439554 records sent, 680560.7 records/sec (3.25 MB/sec), 4.7 ms avg latency, 148.0 max latency.
4138047 records sent, 813455.3 records/sec (3.88 MB/sec), 6.9 ms avg latency, 200.0 max latency.
2100645 records sent, 415311.4 records/sec (1.98 MB/sec), 8.2 ms avg latency, 186.0 max latency.
2959308 records sent, 588917.0 records/sec (2.81 MB/sec), 5.7 ms avg latency, 199.0 max latency.
1548824 records sent, 306758.6 records/sec (1.46 MB/sec), 11.0 ms avg latency, 202.0 max latency.
2742277 records sent, 547360.7 records/sec (2.61 MB/sec), 3.8 ms avg latency, 209.0 max latency.
1373194 records sent, 274638.8 records/sec (1.31 MB/sec), 5.0 ms avg latency, 237.0 max latency.
3551819 records sent, 710363.8 records/sec (3.39 MB/sec), 3.0 ms avg latency, 245.0 max latency.
3204881 records sent, 640591.8 records/sec (3.05 MB/sec), 2.8 ms avg latency, 184.0 max latency.
2426405 records sent, 485281.0 records/sec (2.31 MB/sec), 3.3 ms avg latency, 161.0 max latency.
3331836 records sent, 662920.0 records/sec (3.16 MB/sec), 2.8 ms avg latency, 164.0 max latency.
2295181 records sent, 459036.2 records/sec (2.19 MB/sec), 5.8 ms avg latency, 240.0 max latency.
3653279 records sent, 728325.2 records/sec (3.47 MB/sec), 5.9 ms avg latency, 186.0 max latency.
2327730 records sent, 465546.0 records/sec (2.22 MB/sec), 5.3 ms avg latency, 130.0 max latency.
3251790 records sent, 645708.9 records/sec (3.08 MB/sec), 3.2 ms avg latency, 154.0 max latency.
2971109 records sent, 587407.9 records/sec (2.80 MB/sec), 4.5 ms avg latency, 207.0 max latency.
1533649 records sent, 306545.9 records/sec (1.46 MB/sec), 29.0 ms avg latency, 1017.0 max latency.
2679145 records sent, 530418.7 records/sec (2.53 MB/sec), 4.9 ms avg latency, 185.0 max latency.
200000000 records sent, 460780.654585 records/sec (2.20 MB/sec), 7.13 ms avg latency, 1017.00 ms max latency, 1 ms 50th, 44 ms 95th, 128 ms 99th, 514 ms 99.9th.

bin/kafka-run-class.sh kafka.tools.GetOffsetShell --b
roker-list kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.
cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 --topic kbrep1-to
pic-px --time -1
kbrep1-topic-px:2:66666667
kbrep1-topic-px:1:66666668
kbrep1-topic-px:0:66666666
```
## 500 mil with PX (5KB Payload)

```
bin/kafka-run-class.sh org.apache.kafka.tools.Produce
rPerformance --topic kbrep1-topic-px --num-records 500000000 --record-size 5 --t
hroughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.
cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.ka
fka.svc.cluster.local:9092 batch.size=8196

1301207 records sent, 258637.8 records/sec (1.23 MB/sec), 13.5 ms avg latency, 280.0 max latency.
3101257 records sent, 620251.4 records/sec (2.96 MB/sec), 6.0 ms avg latency, 179.0 max latency.
4348365 records sent, 869673.0 records/sec (4.15 MB/sec), 4.6 ms avg latency, 138.0 max latency.
4348332 records sent, 869666.4 records/sec (4.15 MB/sec), 9.5 ms avg latency, 234.0 max latency.
1907003 records sent, 370435.7 records/sec (1.77 MB/sec), 10.8 ms avg latency, 215.0 max latency.
2777884 records sent, 548988.9 records/sec (2.62 MB/sec), 6.1 ms avg latency, 196.0 max latency.
1508020 records sent, 301604.0 records/sec (1.44 MB/sec), 8.8 ms avg latency, 174.0 max latency.
2547947 records sent, 509589.4 records/sec (2.43 MB/sec), 6.1 ms avg latency, 172.0 max latency.
1885152 records sent, 375678.0 records/sec (1.79 MB/sec), 5.5 ms avg latency, 183.0 max latency.
1308166 records sent, 260538.9 records/sec (1.24 MB/sec), 5.9 ms avg latency, 194.0 max latency.
1313141 records sent, 261999.4 records/sec (1.25 MB/sec), 7.9 ms avg latency, 206.0 max latency.
2297535 records sent, 453252.1 records/sec (2.16 MB/sec), 5.2 ms avg latency, 173.0 max latency.
2134630 records sent, 419130.2 records/sec (2.00 MB/sec), 6.2 ms avg latency, 181.0 max latency.
1412179 records sent, 279916.6 records/sec (1.33 MB/sec), 8.2 ms avg latency, 168.0 max latency.
3461171 records sent, 690576.8 records/sec (3.29 MB/sec), 12.8 ms avg latency, 251.0 max latency.
1291995 records sent, 258399.0 records/sec (1.23 MB/sec), 7.9 ms avg latency, 203.0 max latency.
1265295 records sent, 252654.8 records/sec (1.20 MB/sec), 11.3 ms avg latency, 221.0 max latency.
1812325 records sent, 358947.3 records/sec (1.71 MB/sec), 5.5 ms avg latency, 195.0 max latency.
2395459 records sent, 479091.8 records/sec (2.28 MB/sec), 6.4 ms avg latency, 233.0 max latency.
3389662 records sent, 668836.2 records/sec (3.19 MB/sec), 16.2 ms avg latency, 265.0 max latency.
1573268 records sent, 312528.4 records/sec (1.49 MB/sec), 7.1 ms avg latency, 242.0 max latency.
2877132 records sent, 575426.4 records/sec (2.74 MB/sec), 5.7 ms avg latency, 167.0 max latency.
2821673 records sent, 563208.2 records/sec (2.69 MB/sec), 10.3 ms avg latency, 411.0 max latency.
2657591 records sent, 531518.2 records/sec (2.53 MB/sec), 6.3 ms avg latency, 208.0 max latency.
2867355 records sent, 573471.0 records/sec (2.73 MB/sec), 7.9 ms avg latency, 173.0 max latency.
2621007 records sent, 523468.5 records/sec (2.50 MB/sec), 10.8 ms avg latency, 423.0 max latency.
3158500 records sent, 626686.5 records/sec (2.99 MB/sec), 4.7 ms avg latency, 182.0 max latency.
3444010 records sent, 676622.8 records/sec (3.23 MB/sec), 3.9 ms avg latency, 135.0 max latency.
2001896 records sent, 396886.6 records/sec (1.89 MB/sec), 14.9 ms avg latency, 623.0 max latency.
2804531 records sent, 560906.2 records/sec (2.67 MB/sec), 4.3 ms avg latency, 207.0 max latency.
2702119 records sent, 540423.8 records/sec (2.58 MB/sec), 4.4 ms avg latency, 198.0 max latency.
2031950 records sent, 406390.0 records/sec (1.94 MB/sec), 16.3 ms avg latency, 528.0 max latency.
3257418 records sent, 651483.6 records/sec (3.11 MB/sec), 6.9 ms avg latency, 271.0 max latency.
1350365 records sent, 269695.4 records/sec (1.29 MB/sec), 7.9 ms avg latency, 180.0 max latency.
1680211 records sent, 335438.4 records/sec (1.60 MB/sec), 24.9 ms avg latency, 599.0 max latency.
1244966 records sent, 247311.5 records/sec (1.18 MB/sec), 6.7 ms avg latency, 165.0 max latency.
1863167 records sent, 372633.4 records/sec (1.78 MB/sec), 6.5 ms avg latency, 207.0 max latency.
1483531 records sent, 296706.2 records/sec (1.41 MB/sec), 6.5 ms avg latency, 228.0 max latency.
1703763 records sent, 340752.6 records/sec (1.62 MB/sec), 5.3 ms avg latency, 175.0 max latency.
2235678 records sent, 447135.6 records/sec (2.13 MB/sec), 5.7 ms avg latency, 163.0 max latency.
1330573 records sent, 262595.8 records/sec (1.25 MB/sec), 9.1 ms avg latency, 283.0 max latency.
2014499 records sent, 402899.8 records/sec (1.92 MB/sec), 7.9 ms avg latency, 191.0 max latency.
2575821 records sent, 511177.0 records/sec (2.44 MB/sec), 4.3 ms avg latency, 150.0 max latency.
2571953 records sent, 504205.6 records/sec (2.40 MB/sec), 4.8 ms avg latency, 213.0 max latency.
1543762 records sent, 308752.4 records/sec (1.47 MB/sec), 5.4 ms avg latency, 215.0 max latency.
2080110 records sent, 414860.4 records/sec (1.98 MB/sec), 4.8 ms avg latency, 174.0 max latency.
2704038 records sent, 540807.6 records/sec (2.58 MB/sec), 4.5 ms avg latency, 223.0 max latency.
1668772 records sent, 333021.8 records/sec (1.59 MB/sec), 5.0 ms avg latency, 223.0 max latency.
2269376 records sent, 447873.7 records/sec (2.14 MB/sec), 5.0 ms avg latency, 177.0 max latency.
1697163 records sent, 333693.1 records/sec (1.59 MB/sec), 6.4 ms avg latency, 163.0 max latency.
2846152 records sent, 566511.1 records/sec (2.70 MB/sec), 3.6 ms avg latency, 193.0 max latency.
1997083 records sent, 388991.6 records/sec (1.85 MB/sec), 7.1 ms avg latency, 266.0 max latency.
1477868 records sent, 295573.6 records/sec (1.41 MB/sec), 6.9 ms avg latency, 149.0 max latency.
2121560 records sent, 424312.0 records/sec (2.02 MB/sec), 7.5 ms avg latency, 200.0 max latency.
2520299 records sent, 504059.8 records/sec (2.40 MB/sec), 5.7 ms avg latency, 168.0 max latency.
2989668 records sent, 597933.6 records/sec (2.85 MB/sec), 4.5 ms avg latency, 148.0 max latency.
2515123 records sent, 503024.6 records/sec (2.40 MB/sec), 6.3 ms avg latency, 298.0 max latency.
2937240 records sent, 582208.1 records/sec (2.78 MB/sec), 6.2 ms avg latency, 224.0 max latency.
2336296 records sent, 466233.5 records/sec (2.22 MB/sec), 10.7 ms avg latency, 213.0 max latency.
2991132 records sent, 593478.6 records/sec (2.83 MB/sec), 6.0 ms avg latency, 188.0 max latency.
1867562 records sent, 372098.4 records/sec (1.77 MB/sec), 6.7 ms avg latency, 271.0 max latency.
1419169 records sent, 283833.8 records/sec (1.35 MB/sec), 7.0 ms avg latency, 217.0 max latency.
2473210 records sent, 494642.0 records/sec (2.36 MB/sec), 7.4 ms avg latency, 151.0 max latency.
2000446 records sent, 396913.9 records/sec (1.89 MB/sec), 3.9 ms avg latency, 205.0 max latency.
1189854 records sent, 237353.7 records/sec (1.13 MB/sec), 8.4 ms avg latency, 230.0 max latency.
2249912 records sent, 449982.4 records/sec (2.15 MB/sec), 4.9 ms avg latency, 188.0 max latency.
4391802 records sent, 871908.3 records/sec (4.16 MB/sec), 5.4 ms avg latency, 187.0 max latency.
3091123 records sent, 618224.6 records/sec (2.95 MB/sec), 4.7 ms avg latency, 190.0 max latency.
2168141 records sent, 433628.2 records/sec (2.07 MB/sec), 3.6 ms avg latency, 208.0 max latency.
3407455 records sent, 674877.2 records/sec (3.22 MB/sec), 3.8 ms avg latency, 126.0 max latency.
2746337 records sent, 549267.4 records/sec (2.62 MB/sec), 16.8 ms avg latency, 320.0 max latency.
5295712 records sent, 1059142.4 records/sec (5.05 MB/sec), 3.1 ms avg latency, 123.0 max latency.
4541670 records sent, 907607.9 records/sec (4.33 MB/sec), 7.4 ms avg latency, 215.0 max latency.
2284907 records sent, 447845.4 records/sec (2.14 MB/sec), 10.5 ms avg latency, 279.0 max latency.
3402315 records sent, 676270.1 records/sec (3.22 MB/sec), 6.8 ms avg latency, 236.0 max latency.
2473812 records sent, 486970.9 records/sec (2.32 MB/sec), 6.3 ms avg latency, 210.0 max latency.
3632591 records sent, 725357.6 records/sec (3.46 MB/sec), 4.3 ms avg latency, 221.0 max latency.
2409696 records sent, 481169.3 records/sec (2.29 MB/sec), 12.6 ms avg latency, 323.0 max latency.
2044656 records sent, 408931.2 records/sec (1.95 MB/sec), 6.0 ms avg latency, 179.0 max latency.
2295560 records sent, 458012.8 records/sec (2.18 MB/sec), 4.5 ms avg latency, 236.0 max latency.
2577628 records sent, 515525.6 records/sec (2.46 MB/sec), 4.6 ms avg latency, 201.0 max latency.
1883446 records sent, 374666.0 records/sec (1.79 MB/sec), 5.0 ms avg latency, 220.0 max latency.
2240684 records sent, 444051.5 records/sec (2.12 MB/sec), 4.4 ms avg latency, 167.0 max latency.
2455487 records sent, 491097.4 records/sec (2.34 MB/sec), 9.1 ms avg latency, 219.0 max latency.
1989263 records sent, 396346.5 records/sec (1.89 MB/sec), 6.3 ms avg latency, 264.0 max latency.
1874192 records sent, 366984.9 records/sec (1.75 MB/sec), 5.0 ms avg latency, 163.0 max latency.
2755082 records sent, 539049.5 records/sec (2.57 MB/sec), 6.4 ms avg latency, 170.0 max latency.
3381986 records sent, 674508.6 records/sec (3.22 MB/sec), 5.8 ms avg latency, 164.0 max latency.
1392172 records sent, 277934.1 records/sec (1.33 MB/sec), 8.4 ms avg latency, 200.0 max latency.
3054335 records sent, 609161.3 records/sec (2.90 MB/sec), 6.2 ms avg latency, 208.0 max latency.
2024688 records sent, 404937.6 records/sec (1.93 MB/sec), 5.1 ms avg latency, 200.0 max latency.
2603692 records sent, 520738.4 records/sec (2.48 MB/sec), 3.7 ms avg latency, 163.0 max latency.
2596604 records sent, 518594.8 records/sec (2.47 MB/sec), 8.8 ms avg latency, 278.0 max latency.
1830515 records sent, 366103.0 records/sec (1.75 MB/sec), 5.2 ms avg latency, 203.0 max latency.
3437769 records sent, 686318.4 records/sec (3.27 MB/sec), 8.7 ms avg latency, 259.0 max latency.
2184361 records sent, 436610.2 records/sec (2.08 MB/sec), 7.0 ms avg latency, 194.0 max latency.
1688042 records sent, 333144.3 records/sec (1.59 MB/sec), 4.5 ms avg latency, 196.0 max latency.
2306017 records sent, 459823.9 records/sec (2.19 MB/sec), 5.5 ms avg latency, 247.0 max latency.
1350514 records sent, 268705.5 records/sec (1.28 MB/sec), 8.4 ms avg latency, 191.0 max latency.
1476152 records sent, 290752.8 records/sec (1.39 MB/sec), 6.1 ms avg latency, 227.0 max latency.
1508461 records sent, 299357.2 records/sec (1.43 MB/sec), 5.4 ms avg latency, 182.0 max latency.
2684556 records sent, 535412.0 records/sec (2.55 MB/sec), 6.4 ms avg latency, 212.0 max latency.
1799617 records sent, 359205.0 records/sec (1.71 MB/sec), 5.3 ms avg latency, 176.0 max latency.
1342018 records sent, 265746.1 records/sec (1.27 MB/sec), 7.0 ms avg latency, 150.0 max latency.
3323173 records sent, 654812.4 records/sec (3.12 MB/sec), 6.8 ms avg latency, 160.0 max latency.
4978098 records sent, 959355.9 records/sec (4.57 MB/sec), 3.9 ms avg latency, 211.0 max latency.
1203767 records sent, 240753.4 records/sec (1.15 MB/sec), 7.3 ms avg latency, 212.0 max latency.
3502818 records sent, 699584.2 records/sec (3.34 MB/sec), 2.3 ms avg latency, 200.0 max latency.
5356761 records sent, 1071352.2 records/sec (5.11 MB/sec), 5.1 ms avg latency, 161.0 max latency.
1762343 records sent, 344881.2 records/sec (1.64 MB/sec), 5.6 ms avg latency, 244.0 max latency.
2611200 records sent, 519435.1 records/sec (2.48 MB/sec), 7.2 ms avg latency, 192.0 max latency.
1452707 records sent, 290541.4 records/sec (1.39 MB/sec), 8.5 ms avg latency, 203.0 max latency.
2734742 records sent, 546948.4 records/sec (2.61 MB/sec), 5.3 ms avg latency, 187.0 max latency.
1811156 records sent, 359499.0 records/sec (1.71 MB/sec), 6.5 ms avg latency, 188.0 max latency.
2264820 records sent, 449279.9 records/sec (2.14 MB/sec), 8.3 ms avg latency, 197.0 max latency.
4016280 records sent, 803256.0 records/sec (3.83 MB/sec), 4.7 ms avg latency, 177.0 max latency.
1860994 records sent, 369978.9 records/sec (1.76 MB/sec), 6.4 ms avg latency, 200.0 max latency.
2789838 records sent, 557967.6 records/sec (2.66 MB/sec), 6.1 ms avg latency, 168.0 max latency.
2044546 records sent, 408256.0 records/sec (1.95 MB/sec), 5.3 ms avg latency, 209.0 max latency.
2563878 records sent, 512775.6 records/sec (2.45 MB/sec), 4.4 ms avg latency, 160.0 max latency.
3327936 records sent, 665587.2 records/sec (3.17 MB/sec), 5.6 ms avg latency, 186.0 max latency.
3996457 records sent, 799291.4 records/sec (3.81 MB/sec), 3.5 ms avg latency, 153.0 max latency.
4652917 records sent, 926875.9 records/sec (4.42 MB/sec), 3.9 ms avg latency, 151.0 max latency.
4724921 records sent, 944984.2 records/sec (4.51 MB/sec), 6.1 ms avg latency, 172.0 max latency.
5519909 records sent, 1103981.8 records/sec (5.26 MB/sec), 3.8 ms avg latency, 213.0 max latency.
4328079 records sent, 864405.6 records/sec (4.12 MB/sec), 1.8 ms avg latency, 176.0 max latency.
3785491 records sent, 757098.2 records/sec (3.61 MB/sec), 9.2 ms avg latency, 280.0 max latency.
4796003 records sent, 953290.2 records/sec (4.55 MB/sec), 1.9 ms avg latency, 202.0 max latency.
3916880 records sent, 783376.0 records/sec (3.74 MB/sec), 3.4 ms avg latency, 161.0 max latency.
2934569 records sent, 585742.3 records/sec (2.79 MB/sec), 9.9 ms avg latency, 230.0 max latency.
4086041 records sent, 817208.2 records/sec (3.90 MB/sec), 4.7 ms avg latency, 142.0 max latency.
4412000 records sent, 882400.0 records/sec (4.21 MB/sec), 3.7 ms avg latency, 133.0 max latency.
2969997 records sent, 589519.1 records/sec (2.81 MB/sec), 5.3 ms avg latency, 166.0 max latency.
3122983 records sent, 624596.6 records/sec (2.98 MB/sec), 7.9 ms avg latency, 246.0 max latency.
4234782 records sent, 846956.4 records/sec (4.04 MB/sec), 3.7 ms avg latency, 123.0 max latency.
5203821 records sent, 1040764.2 records/sec (4.96 MB/sec), 4.0 ms avg latency, 138.0 max latency.
4323860 records sent, 860812.3 records/sec (4.10 MB/sec), 5.2 ms avg latency, 185.0 max latency.
4582187 records sent, 916437.4 records/sec (4.37 MB/sec), 3.3 ms avg latency, 137.0 max latency.
4270760 records sent, 854152.0 records/sec (4.07 MB/sec), 4.8 ms avg latency, 177.0 max latency.
3619039 records sent, 723807.8 records/sec (3.45 MB/sec), 9.0 ms avg latency, 192.0 max latency.
5705548 records sent, 1140425.3 records/sec (5.44 MB/sec), 5.4 ms avg latency, 185.0 max latency.
5024612 records sent, 1004922.4 records/sec (4.79 MB/sec), 9.6 ms avg latency, 208.0 max latency.
4866384 records sent, 973276.8 records/sec (4.64 MB/sec), 3.2 ms avg latency, 205.0 max latency.
6129121 records sent, 1225824.2 records/sec (5.85 MB/sec), 3.1 ms avg latency, 113.0 max latency.
5552133 records sent, 1110426.6 records/sec (5.29 MB/sec), 9.5 ms avg latency, 148.0 max latency.
3958459 records sent, 791375.2 records/sec (3.77 MB/sec), 6.9 ms avg latency, 324.0 max latency.
4255473 records sent, 851094.6 records/sec (4.06 MB/sec), 5.7 ms avg latency, 131.0 max latency.
5811398 records sent, 1144877.5 records/sec (5.46 MB/sec), 6.0 ms avg latency, 156.0 max latency.
3883432 records sent, 776686.4 records/sec (3.70 MB/sec), 2.9 ms avg latency, 136.0 max latency.
4614149 records sent, 920253.1 records/sec (4.39 MB/sec), 4.7 ms avg latency, 260.0 max latency.
4355898 records sent, 862212.6 records/sec (4.11 MB/sec), 3.9 ms avg latency, 273.0 max latency.
5100575 records sent, 1020115.0 records/sec (4.86 MB/sec), 14.3 ms avg latency, 268.0 max latency.
4801851 records sent, 953694.3 records/sec (4.55 MB/sec), 5.9 ms avg latency, 163.0 max latency.
3006269 records sent, 600773.2 records/sec (2.86 MB/sec), 17.9 ms avg latency, 496.0 max latency.
3187186 records sent, 637437.2 records/sec (3.04 MB/sec), 5.3 ms avg latency, 176.0 max latency.
4477057 records sent, 895411.4 records/sec (4.27 MB/sec), 4.5 ms avg latency, 142.0 max latency.
3742980 records sent, 748596.0 records/sec (3.57 MB/sec), 5.7 ms avg latency, 210.0 max latency.
2304774 records sent, 460954.8 records/sec (2.20 MB/sec), 52.2 ms avg latency, 893.0 max latency.
5470443 records sent, 1091251.3 records/sec (5.20 MB/sec), 6.2 ms avg latency, 178.0 max latency.
3210909 records sent, 642181.8 records/sec (3.06 MB/sec), 13.9 ms avg latency, 667.0 max latency.
3985525 records sent, 795355.2 records/sec (3.79 MB/sec), 31.1 ms avg latency, 757.0 max latency.
4282129 records sent, 854887.0 records/sec (4.08 MB/sec), 4.1 ms avg latency, 176.0 max latency.
2790928 records sent, 558185.6 records/sec (2.66 MB/sec), 5.2 ms avg latency, 184.0 max latency.
4165680 records sent, 829486.3 records/sec (3.96 MB/sec), 30.8 ms avg latency, 711.0 max latency.
1409081 records sent, 281816.2 records/sec (1.34 MB/sec), 8.6 ms avg latency, 238.0 max latency.
5433803 records sent, 1086760.6 records/sec (5.18 MB/sec), 6.4 ms avg latency, 200.0 max latency.
4380308 records sent, 876061.6 records/sec (4.18 MB/sec), 19.0 ms avg latency, 669.0 max latency.
4477236 records sent, 891524.5 records/sec (4.25 MB/sec), 5.1 ms avg latency, 162.0 max latency.
5824847 records sent, 1164969.4 records/sec (5.56 MB/sec), 6.9 ms avg latency, 162.0 max latency.
500000000 records sent, 587933.718704 records/sec (2.80 MB/sec), 7.07 ms avg latency, 893.00 ms max latency, 1 ms 50th, 42 ms 95th, 128 ms 99th, 452 ms 99.9th.

bin/kafka-run-class.sh kafka.tools.GetOffsetShell --b
roker-list kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.
cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 --topic kbrep1-to
pic-px --time -1
kbrep1-topic-px:2:166666667
kbrep1-topic-px:1:166666668
kbrep1-topic-px:0:166666667
```

## Single Producer, no replication without PX. 

## 10 mil without PX (5KB Payload)
```
bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 10000000 --record-size 5 --throughput -1 --producer-props bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196

4906721 records sent, 981344.2 records/sec (4.68 MB/sec), 2.0 ms avg latency, 234.0 max latency.
10000000 records sent, 1064509.261231 records/sec (5.08 MB/sec), 2.33 ms avg latency, 234.00 ms max latency, 1 ms 50th, 9 ms 95th, 32 ms 99th, 77 ms 99.9th.
```

## 15 mil without PX (5KB Payload)
```
bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 15000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196
5182190 records sent, 1036438.0 records/sec (4.94 MB/sec), 2.2 ms avg latency, 259.0 max latency.
7156595 records sent, 1431319.0 records/sec (6.83 MB/sec), 1.3 ms avg latency, 30.0 max latency.
15000000 records sent, 1264755.480607 records/sec (6.03 MB/sec), 1.51 ms avg latency, 259.00 ms max latency, 1 ms 50th, 4 ms 95th, 17 ms 99th, 29 ms 99.9th.
```

## 25 mil without PX (5KB Payload)
```
bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 25000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196
5401275 records sent, 1080255.0 records/sec (5.15 MB/sec), 2.0 ms avg latency, 212.0 max latency.
6323585 records sent, 1264717.0 records/sec (6.03 MB/sec), 1.2 ms avg latency, 33.0 max latency.
6351348 records sent, 1270269.6 records/sec (6.06 MB/sec), 1.0 ms avg latency, 26.0 max latency.
6044584 records sent, 1208916.8 records/sec (5.76 MB/sec), 0.9 ms avg latency, 26.0 max latency.
25000000 records sent, 1201114.634381 records/sec (5.73 MB/sec), 1.24 ms avg latency, 212.00 ms max latency, 1 ms 50th, 2 ms 95th, 14 ms 99th, 26 ms 99.9th.
```

## 50 mil without PX (5KB Payload)
```
bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 50000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196
5366989 records sent, 1073397.8 records/sec (5.12 MB/sec), 2.1 ms avg latency, 245.0 max latency.
5963197 records sent, 1192639.4 records/sec (5.69 MB/sec), 1.4 ms avg latency, 59.0 max latency.
6221354 records sent, 1244270.8 records/sec (5.93 MB/sec), 1.3 ms avg latency, 86.0 max latency.
5931316 records sent, 1186263.2 records/sec (5.66 MB/sec), 1.1 ms avg latency, 28.0 max latency.
5861881 records sent, 1172376.2 records/sec (5.59 MB/sec), 1.0 ms avg latency, 29.0 max latency.
6071443 records sent, 1214288.6 records/sec (5.79 MB/sec), 1.0 ms avg latency, 32.0 max latency.
6339225 records sent, 1267845.0 records/sec (6.05 MB/sec), 1.0 ms avg latency, 23.0 max latency.
6375966 records sent, 1275193.2 records/sec (6.08 MB/sec), 0.9 ms avg latency, 26.0 max latency.
50000000 records sent, 1201028.080037 records/sec (5.73 MB/sec), 1.21 ms avg latency, 245.00 ms max latency, 1 ms 50th, 2 ms 95th, 13 ms 99th, 34 ms 99.9th.
```

## 200 mil without PX (5KB Payload)
```
bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 200000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196
5447940 records sent, 1089588.0 records/sec (5.20 MB/sec), 2.2 ms avg latency, 265.0 max latency.
6653416 records sent, 1330683.2 records/sec (6.35 MB/sec), 1.2 ms avg latency, 31.0 max latency.
6563223 records sent, 1312644.6 records/sec (6.26 MB/sec), 0.9 ms avg latency, 21.0 max latency.
6497012 records sent, 1299402.4 records/sec (6.20 MB/sec), 0.9 ms avg latency, 25.0 max latency.
6425005 records sent, 1285001.0 records/sec (6.13 MB/sec), 1.0 ms avg latency, 30.0 max latency.
6589255 records sent, 1317851.0 records/sec (6.28 MB/sec), 1.0 ms avg latency, 26.0 max latency.
6655792 records sent, 1331158.4 records/sec (6.35 MB/sec), 0.9 ms avg latency, 26.0 max latency.
6427277 records sent, 1285455.4 records/sec (6.13 MB/sec), 1.3 ms avg latency, 85.0 max latency.
6328425 records sent, 1265685.0 records/sec (6.04 MB/sec), 1.0 ms avg latency, 32.0 max latency.
6636299 records sent, 1327259.8 records/sec (6.33 MB/sec), 1.0 ms avg latency, 24.0 max latency.
6556785 records sent, 1311357.0 records/sec (6.25 MB/sec), 0.9 ms avg latency, 20.0 max latency.
6920392 records sent, 1384078.4 records/sec (6.60 MB/sec), 1.0 ms avg latency, 34.0 max latency.
6513628 records sent, 1302725.6 records/sec (6.21 MB/sec), 1.3 ms avg latency, 110.0 max latency.
6589936 records sent, 1317987.2 records/sec (6.28 MB/sec), 0.9 ms avg latency, 20.0 max latency.
6715332 records sent, 1343066.4 records/sec (6.40 MB/sec), 0.9 ms avg latency, 31.0 max latency.
6540024 records sent, 1308004.8 records/sec (6.24 MB/sec), 0.9 ms avg latency, 19.0 max latency.
6902663 records sent, 1380532.6 records/sec (6.58 MB/sec), 0.9 ms avg latency, 22.0 max latency.
6540690 records sent, 1308138.0 records/sec (6.24 MB/sec), 1.8 ms avg latency, 159.0 max latency.
6401253 records sent, 1280250.6 records/sec (6.10 MB/sec), 0.9 ms avg latency, 25.0 max latency.
6857589 records sent, 1371517.8 records/sec (6.54 MB/sec), 0.8 ms avg latency, 24.0 max latency.
6735348 records sent, 1347069.6 records/sec (6.42 MB/sec), 0.8 ms avg latency, 21.0 max latency.
6563528 records sent, 1312705.6 records/sec (6.26 MB/sec), 1.1 ms avg latency, 82.0 max latency.
6310762 records sent, 1262152.4 records/sec (6.02 MB/sec), 0.9 ms avg latency, 26.0 max latency.
6509403 records sent, 1301880.6 records/sec (6.21 MB/sec), 1.5 ms avg latency, 121.0 max latency.
6183424 records sent, 1236684.8 records/sec (5.90 MB/sec), 0.9 ms avg latency, 21.0 max latency.
6159802 records sent, 1231960.4 records/sec (5.87 MB/sec), 0.9 ms avg latency, 22.0 max latency.
6264054 records sent, 1252810.8 records/sec (5.97 MB/sec), 0.9 ms avg latency, 25.0 max latency.
6178421 records sent, 1235684.2 records/sec (5.89 MB/sec), 0.8 ms avg latency, 26.0 max latency.
6381081 records sent, 1276216.2 records/sec (6.09 MB/sec), 0.9 ms avg latency, 23.0 max latency.
6500185 records sent, 1300037.0 records/sec (6.20 MB/sec), 0.8 ms avg latency, 29.0 max latency.
200000000 records sent, 1297597.498232 records/sec (6.19 MB/sec), 1.03 ms avg latency, 265.00 ms max latency, 1 ms 50th, 2 ms 95th, 7 ms 99th, 35 ms 99.9th.
```

## 500 mil without PX (5KB Payload)
```
bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 500000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196
5461654 records sent, 1092330.8 records/sec (5.21 MB/sec), 2.1 ms avg latency, 255.0 max latency.
6142179 records sent, 1228435.8 records/sec (5.86 MB/sec), 1.1 ms avg latency, 37.0 max latency.
6440890 records sent, 1288178.0 records/sec (6.14 MB/sec), 0.8 ms avg latency, 22.0 max latency.
6470136 records sent, 1294027.2 records/sec (6.17 MB/sec), 0.9 ms avg latency, 28.0 max latency.
6062566 records sent, 1212513.2 records/sec (5.78 MB/sec), 0.8 ms avg latency, 84.0 max latency.
6359520 records sent, 1271904.0 records/sec (6.06 MB/sec), 1.2 ms avg latency, 89.0 max latency.
6423465 records sent, 1284693.0 records/sec (6.13 MB/sec), 1.2 ms avg latency, 84.0 max latency.
6405114 records sent, 1281022.8 records/sec (6.11 MB/sec), 0.8 ms avg latency, 28.0 max latency.
6421927 records sent, 1284385.4 records/sec (6.12 MB/sec), 0.9 ms avg latency, 21.0 max latency.
6450135 records sent, 1286681.6 records/sec (6.14 MB/sec), 0.8 ms avg latency, 28.0 max latency.
6230666 records sent, 1246133.2 records/sec (5.94 MB/sec), 0.7 ms avg latency, 33.0 max latency.
6373814 records sent, 1274762.8 records/sec (6.08 MB/sec), 0.8 ms avg latency, 33.0 max latency.
6368034 records sent, 1271318.4 records/sec (6.06 MB/sec), 1.0 ms avg latency, 82.0 max latency.
6279663 records sent, 1255932.6 records/sec (5.99 MB/sec), 0.7 ms avg latency, 26.0 max latency.
6557492 records sent, 1311498.4 records/sec (6.25 MB/sec), 0.7 ms avg latency, 23.0 max latency.
6284406 records sent, 1256881.2 records/sec (5.99 MB/sec), 0.7 ms avg latency, 30.0 max latency.
6300518 records sent, 1260103.6 records/sec (6.01 MB/sec), 1.1 ms avg latency, 91.0 max latency.
6270279 records sent, 1254055.8 records/sec (5.98 MB/sec), 0.7 ms avg latency, 22.0 max latency.
6449083 records sent, 1289816.6 records/sec (6.15 MB/sec), 0.7 ms avg latency, 27.0 max latency.
5958435 records sent, 1191687.0 records/sec (5.68 MB/sec), 0.8 ms avg latency, 23.0 max latency.
6083109 records sent, 1216621.8 records/sec (5.80 MB/sec), 0.8 ms avg latency, 24.0 max latency.
6467508 records sent, 1293501.6 records/sec (6.17 MB/sec), 0.8 ms avg latency, 24.0 max latency.
6327840 records sent, 1265568.0 records/sec (6.03 MB/sec), 1.2 ms avg latency, 109.0 max latency.
6309801 records sent, 1261960.2 records/sec (6.02 MB/sec), 0.8 ms avg latency, 24.0 max latency.
6531759 records sent, 1306351.8 records/sec (6.23 MB/sec), 0.8 ms avg latency, 24.0 max latency.
6574630 records sent, 1314926.0 records/sec (6.27 MB/sec), 0.7 ms avg latency, 21.0 max latency.
6602507 records sent, 1320501.4 records/sec (6.30 MB/sec), 0.7 ms avg latency, 21.0 max latency.
6655785 records sent, 1331157.0 records/sec (6.35 MB/sec), 0.6 ms avg latency, 19.0 max latency.
6260567 records sent, 1252113.4 records/sec (5.97 MB/sec), 0.7 ms avg latency, 23.0 max latency.
6598506 records sent, 1319701.2 records/sec (6.29 MB/sec), 0.7 ms avg latency, 20.0 max latency.
6415012 records sent, 1283002.4 records/sec (6.12 MB/sec), 0.7 ms avg latency, 20.0 max latency.
6480893 records sent, 1295660.3 records/sec (6.18 MB/sec), 0.7 ms avg latency, 19.0 max latency.
6717095 records sent, 1343419.0 records/sec (6.41 MB/sec), 0.7 ms avg latency, 23.0 max latency.
6585916 records sent, 1317183.2 records/sec (6.28 MB/sec), 1.0 ms avg latency, 81.0 max latency.
6419966 records sent, 1281430.3 records/sec (6.11 MB/sec), 0.7 ms avg latency, 28.0 max latency.
6930541 records sent, 1386108.2 records/sec (6.61 MB/sec), 0.7 ms avg latency, 24.0 max latency.
7105326 records sent, 1421065.2 records/sec (6.78 MB/sec), 0.7 ms avg latency, 26.0 max latency.
6784606 records sent, 1356921.2 records/sec (6.47 MB/sec), 0.7 ms avg latency, 24.0 max latency.
7347972 records sent, 1469594.4 records/sec (7.01 MB/sec), 0.8 ms avg latency, 25.0 max latency.
7074944 records sent, 1414988.8 records/sec (6.75 MB/sec), 0.8 ms avg latency, 24.0 max latency.
6936292 records sent, 1387258.4 records/sec (6.61 MB/sec), 0.7 ms avg latency, 26.0 max latency.
7144888 records sent, 1428977.6 records/sec (6.81 MB/sec), 0.7 ms avg latency, 21.0 max latency.
6899079 records sent, 1379815.8 records/sec (6.58 MB/sec), 0.8 ms avg latency, 25.0 max latency.
6449673 records sent, 1289934.6 records/sec (6.15 MB/sec), 12.7 ms avg latency, 658.0 max latency.
7004782 records sent, 1400956.4 records/sec (6.68 MB/sec), 0.7 ms avg latency, 21.0 max latency.
7392450 records sent, 1478490.0 records/sec (7.05 MB/sec), 0.9 ms avg latency, 34.0 max latency.
7204385 records sent, 1440877.0 records/sec (6.87 MB/sec), 0.7 ms avg latency, 21.0 max latency.
7031634 records sent, 1406326.8 records/sec (6.71 MB/sec), 0.7 ms avg latency, 22.0 max latency.
7171592 records sent, 1430598.8 records/sec (6.82 MB/sec), 0.7 ms avg latency, 21.0 max latency.
7231797 records sent, 1446070.2 records/sec (6.90 MB/sec), 0.6 ms avg latency, 22.0 max latency.
7163839 records sent, 1432767.8 records/sec (6.83 MB/sec), 0.7 ms avg latency, 22.0 max latency.
7170292 records sent, 1434058.4 records/sec (6.84 MB/sec), 0.7 ms avg latency, 24.0 max latency.
7181977 records sent, 1436108.2 records/sec (6.85 MB/sec), 0.7 ms avg latency, 22.0 max latency.
7191199 records sent, 1438239.8 records/sec (6.86 MB/sec), 0.8 ms avg latency, 25.0 max latency.
6998363 records sent, 1399672.6 records/sec (6.67 MB/sec), 1.2 ms avg latency, 89.0 max latency.
7035887 records sent, 1407177.4 records/sec (6.71 MB/sec), 0.6 ms avg latency, 21.0 max latency.
6649772 records sent, 1329954.4 records/sec (6.34 MB/sec), 0.7 ms avg latency, 34.0 max latency.
7231839 records sent, 1443480.8 records/sec (6.88 MB/sec), 0.7 ms avg latency, 21.0 max latency.
7365575 records sent, 1473115.0 records/sec (7.02 MB/sec), 0.7 ms avg latency, 22.0 max latency.
7203968 records sent, 1440793.6 records/sec (6.87 MB/sec), 0.9 ms avg latency, 82.0 max latency.
7268708 records sent, 1453741.6 records/sec (6.93 MB/sec), 1.2 ms avg latency, 95.0 max latency.
7305881 records sent, 1461176.2 records/sec (6.97 MB/sec), 0.7 ms avg latency, 22.0 max latency.
7281700 records sent, 1456340.0 records/sec (6.94 MB/sec), 0.6 ms avg latency, 22.0 max latency.
7272838 records sent, 1454567.6 records/sec (6.94 MB/sec), 0.8 ms avg latency, 26.0 max latency.
6851834 records sent, 1370366.8 records/sec (6.53 MB/sec), 0.7 ms avg latency, 25.0 max latency.
7109050 records sent, 1421810.0 records/sec (6.78 MB/sec), 1.0 ms avg latency, 82.0 max latency.
6845520 records sent, 1369104.0 records/sec (6.53 MB/sec), 0.8 ms avg latency, 71.0 max latency.
7291492 records sent, 1458298.4 records/sec (6.95 MB/sec), 0.7 ms avg latency, 21.0 max latency.
7380613 records sent, 1476122.6 records/sec (7.04 MB/sec), 0.7 ms avg latency, 30.0 max latency.
7252307 records sent, 1450461.4 records/sec (6.92 MB/sec), 0.7 ms avg latency, 25.0 max latency.
7282354 records sent, 1456470.8 records/sec (6.94 MB/sec), 0.7 ms avg latency, 20.0 max latency.
7131624 records sent, 1426324.8 records/sec (6.80 MB/sec), 0.8 ms avg latency, 22.0 max latency.
7355507 records sent, 1471101.4 records/sec (7.01 MB/sec), 1.1 ms avg latency, 95.0 max latency.
500000000 records sent, 1352060.269439 records/sec (6.45 MB/sec), 0.96 ms avg latency, 658.00 ms max latency, 1 ms 50th, 1 ms 95th, 3 ms 99th, 47 ms 99.9th.
```