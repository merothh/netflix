.class final Lo/StatsDimensionsValue$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/StatsDimensionsValue;->setOnRateListener(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lo/SimpleClock$Activity;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/StatsDimensionsValue;


# direct methods
.method constructor <init>(Lo/StatsDimensionsValue;)V
    .locals 0

    iput-object p1, p0, Lo/StatsDimensionsValue$StateListAnimator;->c:Lo/StatsDimensionsValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 52
    iget-object p1, p0, Lo/StatsDimensionsValue$StateListAnimator;->c:Lo/StatsDimensionsValue;

    invoke-static {p1}, Lo/StatsDimensionsValue;->a(Lo/StatsDimensionsValue;)Lo/StatsLogEventWrapper;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/StatsDimensionsValue$StateListAnimator;->c:Lo/StatsDimensionsValue;

    invoke-static {p1}, Lo/StatsDimensionsValue;->a(Lo/StatsDimensionsValue;)Lo/StatsLogEventWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/StatsLogEventWrapper;->e()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 53
    iget-object p1, p0, Lo/StatsDimensionsValue$StateListAnimator;->c:Lo/StatsDimensionsValue;

    invoke-static {p1}, Lo/StatsDimensionsValue;->a(Lo/StatsDimensionsValue;)Lo/StatsLogEventWrapper;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "event"

    invoke-static {p2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lo/StatsLogEventWrapper;->c(Landroid/view/MotionEvent;)V

    :cond_1
    return v0
.end method
