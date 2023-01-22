using System.Text.Json;
var incoming = new List<Item>();
using (StreamReader r = new StreamReader("response.json"))
{
    string json = r.ReadToEnd();
    incoming = JsonSerializer.Deserialize<List<Item>>(json);
}
var i = 1;
foreach (var item in incoming[0].description.Split("\n", StringSplitOptions.RemoveEmptyEntries))
{
    Console.WriteLine("{0,-3}| {1} ", i.ToString(), item);
    i++;
}

Console.ReadLine();

public record struct Item(
    string description
);