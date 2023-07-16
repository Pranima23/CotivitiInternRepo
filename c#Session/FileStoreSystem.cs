namespace FileStore
{
    public interface IFileStoreSystem
    {
        public void Save(string content);
        public string Read();
    }

    public class FileStoreSystem : IFileStoreSystem
    {
        string FilePath = "";
        public FileStoreSystem(string filePath)
        {
            FilePath = filePath;

            if (!File.Exists(FilePath))
            {
                File.Create(FilePath);
            }
        }
        public string Read()
        {
            StreamReader streamReader = new StreamReader(FilePath);
            try
            {

                string readFile = streamReader.ReadToEnd();
                return readFile;

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                Console.WriteLine(ex.StackTrace);
            }
            finally
            {
                streamReader.Close();
            }
            return "No-Content";
        }


        public void Save(string content)
        {
            StreamWriter streamWriter = new StreamWriter(FilePath);
            try
            {
                streamWriter.Write(content);

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                Console.WriteLine(ex.StackTrace);
            }
            finally
            {
                streamWriter.Close();
            }
        }
    }
}