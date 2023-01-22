using System.Text.Json;
var incoming = new List<Item>();
using (StreamReader r = new StreamReader("response.json"))
{
    string json = r.ReadToEnd();
    incoming = JsonSerializer.Deserialize<List<Item>>(json);
}
Console.WriteLine(incoming[0].description);
Console.ReadLine();

public record struct Item(
    string description
);