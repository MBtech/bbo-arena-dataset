# Cloud Configuration Dataset
Data for research on automatic cloud configuration. The benchmarks are part of the [HiBench benchmark](https://github.com/Intel-bigdata/HiBench). Please take a look at the benchmark respository to get more 
information about the benchmarks and the input datasets.

This is the dataset accompanying the [github repository for our research work](https://github.com/MBtech/bbo-arena):

> **Do the Best Cloud Configurations Grow on Trees? An Experimental Evaluation of Black Box Algorithms for Optimizing Cloud Workloads.** </br>
> Muhammad Bilal, Marco Serafini, Marco Canini and Rodrigo Rodrigues. </br>
> Proceedings of the VLDB Endowment, 13(11). </br>


## Information about the Dataset
### Directory Names
The directories in the `dataset` folder use the following naming scheme: 
```
<num of instances>_<instance type>_<benchmark>_<distributed framework>_<input size>_1
```
For example: 
`1_c5.4xlarge_linear_spark_huge_1` is a directory that contains data on the run of the `linear` regression `spark` benchmark using `huge` 
input dataset on a single instance of `c5.4xlarge` type. 

### Data in the directories
Data inside the each directory contains four types of files:
1. `bench.log`: contains spark output logs of the benchmark run
2. `error.log`: contains either `1` or `0` indicating whether there is an error in the spark output logs or not. 
3. `log`: contains the spark output log as well as some other information from the script that ran the benchmark
4. `report.json`: contains the following fields:
    - `completed`: Whether the benchmark completely successfully
    - `datasize`: Input datasize
    - `elapsed_time`: Execution time of the benchmark on this cloud configuration
    - `wall_time`: Same as `elapsed_time` in this case 
    - `framework`: Distributed framework used for the benchmark
    - `workload`: Benchmark name
5. `sar_node*.csv`: The low-level metrics collected using `sar` utility. Each node of the cloud configuration has its own metrics file. 
The files are enumerated from `sar_node1.csv` to `sar_node<n>.csv` (total number of nodes in the configuration).

## Usage:
The dataset has been compressed in order to upload it to github. 
1.  Clone the github repository: 
```
git clone https://github.com/MBtech/bbo-arena-dataset.git
```

2. Uncompress the dataset:
```
./uncompress.sh
```
