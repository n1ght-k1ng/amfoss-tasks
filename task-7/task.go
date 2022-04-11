package main

import (
	"encoding/csv"
	"fmt"
	"log"
	"os"
	"time"

	"github.com/gocolly/colly"
)
type features struct {
	networth string
	age string
	name string
	source string
	country string
 }

func main()
{
	f := features{}
	scrapurl :="https://www.forbes.com/real-time-billionaires/#131241903d78"
	csv_file = "data.csv"
	file , err := os.Create(csv_file)
	if err != nil {
		log.Fatalf("could not create the file, err :%q",err)
		return
	defer file.Close()

	writer := csv.NewWriter(file)
	defer writer.Flush()

	c:= colly.NewCollector(
		colly.AllowedDomains("https://www.forbes.com")
	)
	c.SetRequestTimeout(120* time.Second)
	
	

	c.OnRequest(func(r *colly.Request){

	}
	c.OnHTML("scrolly-table", func(e *colly.HTMLElement){
		selection := e.DOM
	 	fmt.println(selection.Find("").Text())
		child := selection.Children().Nodes 

		f := features{}
		f.name = e.ChildAttr("name")
		f.networth = e.ChildText("Net Worth")
		f.country = e.ChildAttr("Country/Territory")
		f.source = e.ChildAttr("Source")
		f.age = e.ChildAttr("age")

		row := []string(f.name, f.networth , f.country , f.source , f.age )
		writer.Write(row)
		// Writer.write([]string)

		

	}

	c.Visit()
	fmt.Println("done")
	

}
