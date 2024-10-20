namespace RickAndMortyApi.Dtos
{

    public class LocationDto
    {
        public int id {get; set;}
        public string name {get; set;}
        public string type {get; set;}
        public string dimension {get; set;}
        public string url {get; set;}
        public List<string> residents {get; set;}
    }

}