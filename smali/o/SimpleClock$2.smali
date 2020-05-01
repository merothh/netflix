.class Lo/SimpleClock$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SimpleClock;->setOnRateListener(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lo/SimpleClock$Activity;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/SimpleClock;


# direct methods
.method constructor <init>(Lo/SimpleClock;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lo/SimpleClock$2;->d:Lo/SimpleClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 329
    iget-object p1, p0, Lo/SimpleClock$2;->d:Lo/SimpleClock;

    invoke-static {p1}, Lo/SimpleClock;->d(Lo/SimpleClock;)Lo/StatFs;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/SimpleClock$2;->d:Lo/SimpleClock;

    invoke-static {p1}, Lo/SimpleClock;->d(Lo/SimpleClock;)Lo/StatFs;

    move-result-object p1

    invoke-virtual {p1}, Lo/StatFs;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 330
    iget-object p1, p0, Lo/SimpleClock$2;->d:Lo/SimpleClock;

    invoke-static {p1}, Lo/SimpleClock;->d(Lo/SimpleClock;)Lo/StatFs;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/StatFs;->a(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
