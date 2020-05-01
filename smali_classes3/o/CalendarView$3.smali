.class Lo/CalendarView$3;
.super Lo/aen;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CalendarView;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/CalendarView;


# direct methods
.method constructor <init>(Lo/CalendarView;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lo/CalendarView$3;->d:Lo/CalendarView;

    invoke-direct {p0}, Lo/aen;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 26
    iget-object p1, p0, Lo/CalendarView$3;->d:Lo/CalendarView;

    invoke-virtual {p1}, Lo/CalendarView;->e()V

    return-void
.end method
