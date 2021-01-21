public void setup()
{
String[] lines = {"beast", "dough", "happy", "question", "star", "three", "eagle", "try"};
System.out.println("there are " + lines.length + " lines");
for (int i = 0 ; i < lines.length; i++)
{
 System.out.println(pigLatin(lines[i]));
}
}
public int findFirstVowel(String word)
{
for(int i = 0; i < word.length(); i++)
    if(word.substring(i,i+1).equals("a")||word.substring(i,i+1).equals("e")||word.substring(i,i+1).equals("i")||word.substring(i,i+1).equals("o")||word.substring(i,i+1).equals("u"))
 
   return i;
return -1;
}
public String pigLatin(String word)
{
if(findFirstVowel(word) == -1)
{
 return word + "ay";
}
else if(findFirstVowel(word) == 0)
{
 return word + "way";
}
else if(word.substring(0,3).equals("thr"))
{
  return word.substring(3) + word.substring(0,3) + "ay";
}
else if(word.substring(0,2).equals("qu") || word.substring(0,2).equals("st"))
{
 return word.substring(2) + word.substring(0,2) + "ay";
}
else
{
 return word.substring(1) + word.substring(0,1) + "ay";
}
}
