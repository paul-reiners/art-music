import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

public class RandomPairs {

    public static void main(String[] args) {
        int width = 274; 
        int height = 216;

        List<int[]> pairs = generateRandomPairs(width, height);

        // Print the pairs
        for (int[] pair : pairs) {
            System.out.println(pair[0] + "\t" + pair[1]);
        }
    }

    private static List<int[]> generateRandomPairs(int width, int height) {
        List<int[]> pairs = new ArrayList<>();
        Random random = new Random();

        // Generate all possible pairs
        for (int i = 0; i < width; i++) {
            for (int j = 0; j < height; j++) {
                pairs.add(new int[]{i, j});
            }
        }

        // Shuffle the list to randomize the order
        Collections.shuffle(pairs, random);

        return pairs;
    }
}
