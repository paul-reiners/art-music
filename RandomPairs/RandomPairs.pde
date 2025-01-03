BufferedReader reader;
String line;
 
void setup() {
  // Open the file from the createWriter() example
  reader = createReader("/Users/paulreiners/Library/CloudStorage/Dropbox/projects/art-music/Brain_Pointillism/data/RandomPairs.txt");    
}
 
void draw() {
  try {
    line = reader.readLine();
  } catch (IOException e) {
    e.printStackTrace();
    line = null;
  }
  if (line == null) {
    // Stop reading because of an error or file is empty
    noLoop();  
  } else {
    String[] pieces = split(line, TAB);
    int x = int(pieces[0]);
    int y = int(pieces[1]);
    print(x + y);
  }
} 
