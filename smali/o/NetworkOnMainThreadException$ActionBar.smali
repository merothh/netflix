.class final Lo/NetworkOnMainThreadException$ActionBar;
.super Lcom/google/android/material/behavior/SwipeDismissBehavior;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/NetworkOnMainThreadException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ActionBar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/behavior/SwipeDismissBehavior<",
        "Lo/NetworkOnMainThreadException$StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/NetworkOnMainThreadException;


# direct methods
.method public constructor <init>(Lo/NetworkOnMainThreadException;)V
    .locals 0

    .line 929
    iput-object p1, p0, Lo/NetworkOnMainThreadException$ActionBar;->d:Lo/NetworkOnMainThreadException;

    invoke-direct {p0}, Lcom/google/android/material/behavior/SwipeDismissBehavior;-><init>()V

    const p1, 0x3ea8f5c3    # 0.33f

    .line 930
    invoke-virtual {p0, p1}, Lo/NetworkOnMainThreadException$ActionBar;->setDragDismissDistance(F)V

    const p1, 0x3e99999a    # 0.3f

    .line 931
    invoke-virtual {p0, p1}, Lo/NetworkOnMainThreadException$ActionBar;->setSensitivity(F)V

    const p1, 0x3dcccccd    # 0.1f

    .line 932
    invoke-virtual {p0, p1}, Lo/NetworkOnMainThreadException$ActionBar;->setStartAlphaSwipeDistance(F)V

    const p1, 0x3f19999a    # 0.6f

    .line 933
    invoke-virtual {p0, p1}, Lo/NetworkOnMainThreadException$ActionBar;->setEndAlphaSwipeDistance(F)V

    const/4 p1, 0x2

    .line 934
    invoke-virtual {p0, p1}, Lo/NetworkOnMainThreadException$ActionBar;->setSwipeDirection(I)V

    return-void
.end method


# virtual methods
.method public canSwipeDismissView(Landroid/view/View;)Z
    .locals 0

    .line 939
    instance-of p1, p1, Lo/NetworkOnMainThreadException$StateListAnimator;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/NetworkOnMainThreadException$ActionBar;->d:Lo/NetworkOnMainThreadException;

    invoke-static {p1}, Lo/NetworkOnMainThreadException;->a(Lo/NetworkOnMainThreadException;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lo/NetworkOnMainThreadException$StateListAnimator;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 947
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 948
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 954
    :cond_0
    invoke-static {}, Lo/Message;->c()Lo/Message;

    move-result-object v0

    iget-object v1, p0, Lo/NetworkOnMainThreadException$ActionBar;->d:Lo/NetworkOnMainThreadException;

    iget-object v1, v1, Lo/NetworkOnMainThreadException;->d:Lo/Message$Activity;

    invoke-virtual {v0, v1}, Lo/Message;->b(Lo/Message$Activity;)V

    goto :goto_0

    .line 950
    :cond_1
    invoke-static {}, Lo/Message;->c()Lo/Message;

    move-result-object v0

    iget-object v1, p0, Lo/NetworkOnMainThreadException$ActionBar;->d:Lo/NetworkOnMainThreadException;

    iget-object v1, v1, Lo/NetworkOnMainThreadException;->d:Lo/Message$Activity;

    invoke-virtual {v0, v1}, Lo/Message;->d(Lo/Message$Activity;)V

    .line 959
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public synthetic onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 922
    check-cast p2, Lo/NetworkOnMainThreadException$StateListAnimator;

    invoke-virtual {p0, p1, p2, p3}, Lo/NetworkOnMainThreadException$ActionBar;->e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lo/NetworkOnMainThreadException$StateListAnimator;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
