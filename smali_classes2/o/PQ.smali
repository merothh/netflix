.class public final Lo/PQ;
.super Lo/PD;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PQ$StateListAnimator;
    }
.end annotation


# static fields
.field public static final c:Lo/PQ$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/PQ$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/PQ$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/PQ;->c:Lo/PQ$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/PD;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 28
    new-instance v0, Lo/PU;

    invoke-direct {v0}, Lo/PU;-><init>()V

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public initToolbar()V
    .locals 0

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 18
    invoke-super {p0}, Lo/PD;->onAttachedToWindow()V

    .line 20
    invoke-virtual {p0}, Lo/PQ;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window.decorView"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    .line 23
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v1, 0x3f59999a    # 0.85f

    .line 24
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 v1, 0x2

    .line 25
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void

    .line 21
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager.LayoutParams"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 36
    sget-object p1, Lo/PQ$ActionBar;->b:Lo/PQ$ActionBar;

    check-cast p1, Lcom/netflix/cl/model/TrackingInfo;

    invoke-super {p0, p1}, Lo/PD;->d(Lcom/netflix/cl/model/TrackingInfo;)V

    .line 38
    invoke-virtual {p0}, Lo/PQ;->finish()V

    const/4 p1, 0x1

    return p1

    .line 42
    :cond_0
    invoke-super {p0, p1}, Lo/PD;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
