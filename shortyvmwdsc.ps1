configuration ConfigureIIS
{
    Import-DscResource -ModuleName PSDesiredStateConfiguration

    Node "localhost"
    {
        WindowsFeature IIS
        {
            Name = "Web-Server"
            Ensure = "Present"
        }

        WindowsFeature ASP
        {
            Name = "Web-Asp-Net45"
            Ensure = "Present"
        }

        File DefaultPage
        {
            Ensure = "Present"
            Type = "File"
            DestinationPath = "https://shortyprimestore0.blob.core.windows.net/shortycontainer0?sp=r&st=2024-08-27T12:59:09Z&se=2024-08-29T20:59:09Z&spr=https&sv=2022-11-02&sr=c&sig=hmfQOdnUPvbcJOry2bGogdrpVtMCaWTIHHQlhr9Ypd4%3D"
            Contents = "Hello World from DSC!"
            DependsOn = "[WindowsFeature]IIS"
        }
    }
}

# Generate the MOF file
ConfigureIIS -OutputPath C:\DSC