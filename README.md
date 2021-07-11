# bulk-download
Is a shell utility for download multiple files from ftp server, the files are read 
of **files_to_download.csv** file.
| Column | value |
| ------ | ------ |
| column 1 | downloaded name|
| column 2 | file path |

# uso/use
Replace the ftp credentials in the `download_files.sh`  line **14**
```sh
mkdir myFilesFolder
cd myFilesFolder
./download_files.sh
```
The files will be downloaded in the `myFilesFolder` directory
this shell script require **wget** installed


# Licencia/License
**MIT**
