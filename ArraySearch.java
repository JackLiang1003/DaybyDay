import java.util.Scanner;

public class ArraySearch {
    public static void main(String[] args) {
        int [] arr = new int[]{1,2,3,4,5,6,7,8,9};
        //二分查找法查找，比较快
        int head = 0;
        int tail = arr.length -1 ;
        int mid = 0;
        System.out.println("请输入一个整数，我会查找他是不是在我的库数组中:");
        Scanner input = new Scanner(System.in);
        int target = input.nextInt();
        System.out.println("您输入的数字是："+target);
        boolean flag = true;
        while (head<=tail){
            mid = (head + tail)/2;
            if (arr[mid]==target){
                System.out.println("查找到了，索引为："+mid);
                flag = false;
                break;
            }else if (arr[mid]>target){
                tail = arr[mid-1];
            }else {
                head = arr[mid+1];
            }
        }
        if (flag){
            System.out.println("抱歉，您输入的不在数组中！");
        }
    }
}
