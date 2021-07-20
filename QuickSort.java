package Quick;
import java.util.Arrays;
//快速排序
public class QuickSort {
    public static void main(String[] args) {
        int [] arr = new int[]{10,9,8,7,6,5,4,3,2,1,0,-1};
        quickSort(arr,0,arr.length-1);
        System.out.println(Arrays.toString(arr));
    }
    public static void quickSort(int [] arr,int low,int high){
        int p , i , j,temp;
        if (low > high){
            return;
        }
        //p就是基准数，在这里是每个数组的第一个
        p = arr[low];
        i = low;
        j = high;
        while (i < j){
            while (arr[j]>=p && i<j){
                j--;
            }
            //这里一定是右边开始，上下这两个循环不能调换（下面有解析，可以先想想）
            //左边当发现大于p的值时停止循环
            while (arr[i]<=p && i<j){
                i++;
            }
            temp = arr[j];
            arr[j] = arr[i];
            arr[i] = temp;
        }
        arr[low] = arr[i];
        arr[i] = p;
        quickSort(arr,low,j-1);
        quickSort(arr,j+1,high);
    }
}
