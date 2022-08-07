


public class Arrows {
    public static void main(String[] args) {
		if(args.length == 1) {
			int QUANTITY_OF_STRINGS;
			
			try {
				QUANTITY_OF_STRINGS = Integer.parseInt(args[0]);
			} catch(Exception ex) {
				System.out.println("Insert a Int value");
				return;
			}
			
			String spaces;
			for(int x = 1; x <= QUANTITY_OF_STRINGS; ++x) {
				spaces = "";

				// Triangle
				for (int i = 0; i < x - 1; ++i) {
					spaces += " ";
				}
				for (int i = 0, j; i < x * 2; i += 2) {
					System.out.print(spaces.substring(0, spaces.length() - i / 2));
					for (j = 0; j <= i; ++j) {
						System.out.print('+');
					}
					System.out.println();
				}

				// Tail
				int tailHeight = 3 * x / 2;
				int tailWidth = (2 * x - 1) / 3;
				if (tailWidth % 2 == 0) --tailWidth;
				spaces = spaces.substring(0, spaces.length() - tailWidth / 2);
				for (int i = 0, j; i < tailHeight; ++i) {
					System.out.print(spaces);
					for (j = 0; j < tailWidth; ++j) {
						System.out.print('+');
					}
					System.out.println();
				}
				System.out.print("\n\n");
			}
			return;
		}
		
		System.out.println("Enter the command as follows: " + 
			"java Arrows [Integer value]"
		);
    }
}
