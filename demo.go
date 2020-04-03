package main
import (
			"fmt"
		"os"
		"io/ioutil"
		"encoding/json"
// 		"os/exec"
	)
 
func main(){
    var rows int
    var temp int = 1
    fmt.Print("Enter number of rows: ")
    fmt.Scan(&rows)
 
    for i := 0; i < rows; i++ {  
 
        for j := 1; j <= rows-i ; j++ {          
            fmt.Print(" ")          
        }
 
        for k := 0; k <= i; k++ {
 
            if (k==0 || i==0) {
                    temp = 1
                }else{
                    temp = temp*(i-k+1)/k 
                }
 
            fmt.Printf(" %d",temp)              
        }
        fmt.Println("")
         
	}
// 	jsonFile, err := os.Open("package.json")
// 	if err != nil {
//         fmt.Println(err)
// }
// byteValue,   _ := ioutil.ReadAll(jsonFile)
// 	var fileContents map[string]interface{}

// 	json.Unmarshal([]byte(byteValue), &fileContents)
// 	var version=fmt.Sprintf("%v",fileContents["version"])
// 	fmt.Println(version)
// 	fmt.Println("version=", version)
// 	cmd := exec.Command("go build -ldflags=\"-X 'main.Version="+version)
// 	cmd.Start()
// 	fmt.Println(cmd)
 
}
