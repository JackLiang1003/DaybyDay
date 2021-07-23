package exe0724;
import java.awt.*;
import java.awt.geom.Ellipse2D;
import java.awt.geom.Rectangle2D;
import javax.swing.JFrame;
import javax.swing.JPanel;

public class Dice extends JFrame {
    DicePanel dicePanel = new DicePanel();

    public static void main(String[] args) {
        Dice frame = new Dice();
        frame.setVisible(true);
    }

    public Dice() {
        super();
        setTitle("绘制骰子");
        setBounds(100, 100, 300, 300);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        add(dicePanel);
    }
}

class DicePanel extends JPanel{
    public void paint(Graphics g){
        Graphics2D g2 = (Graphics2D)g;
        BasicStroke stroke = new BasicStroke(3);
        g2.setStroke(stroke);
        Color color = new Color(0,162,232);
        double leftX = 100;
        double topY = 100;
        double width = 150;
        double height = 150;
        var rect = new Rectangle2D.Double(leftX,topY,width,height);
        g2.draw(rect);

        var circle1 = new Ellipse2D.Double(120,120,20,20);
        g2.setPaint(Color.BLUE);
        g2.fill(circle1);
        g2.draw(circle1);

        var circle2 = new Ellipse2D.Double(160,160,20,20);
        g2.setPaint(Color.BLUE);
        g2.fill(circle2);
        g2.draw(circle2);

        var circle3 = new Ellipse2D.Double(200,200,20,20);
        g2.setPaint(Color.BLUE);
        g2.fill(circle3);
        g2.draw(circle3);
    }
}
