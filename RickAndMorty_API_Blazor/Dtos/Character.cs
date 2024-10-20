namespace RickAndMortyApi.Dtos
{

    public class CharacterDto{

        public int id {get; set;}
        public string name {get; set;}
        public string status {get; set;}
        public string species {get; set;}
        public string gender {get; set;}
        public string type {get; set;}
        public string image {get; set;}
        public string created {get; set;}
        public LocationDto location {get; set;}
        public OriginDto origin {get; set;}

    //Para traerme el location tambien, del objeto que retorna JSON
    public class LocationDto
    {
        public string name {get; set;}
        public string url {get; set;}
    }

    //Traer origin
    public class OriginDto
    {
        public string name {get; set;}
        public string url {get; set;}
    }

    }


}