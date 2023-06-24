static class utils{
    public static float round(int round, float number){
        int truc = (int) (number * round);
        println("truc " + truc);
        return (float) truc / round;
    }
}