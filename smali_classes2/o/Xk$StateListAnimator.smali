.class public final Lo/Xk$StateListAnimator;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xk;->a(Landroid/view/ViewGroup;)Landroid/view/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Xk;

.field private final b:I

.field private final c:I

.field final synthetic d:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lo/Xk;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lo/Xk$StateListAnimator;->a:Lo/Xk;

    iput-object p2, p0, Lo/Xk$StateListAnimator;->d:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/16 p1, 0x14

    .line 22
    iput p1, p0, Lo/Xk$StateListAnimator;->b:I

    .line 24
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget p2, p0, Lo/Xk$StateListAnimator;->b:I

    invoke-static {p1, p2}, Lo/RemoteException;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lo/Xk$StateListAnimator;->c:I

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lo/Xk$StateListAnimator;->a:Lo/Xk;

    invoke-static {v0}, Lo/Xk;->d(Lo/Xk;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lo/Xk$StateListAnimator;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/app/Activity;

    invoke-static {v0, v2}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    div-int/lit8 v0, v0, 0x2

    iget v3, p0, Lo/Xk$StateListAnimator;->c:I

    sub-int v3, v0, v3

    int-to-float v3, v3

    const/4 v4, 0x1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 36
    iget-object p1, p0, Lo/Xk$StateListAnimator;->a:Lo/Xk;

    new-instance v0, Lo/UU$Configuration;

    invoke-direct {v0, v4}, Lo/UU$Configuration;-><init>(Z)V

    invoke-virtual {p1, v0}, Lo/Xk;->e(Ljava/lang/Object;)V

    return v4

    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v2, p0, Lo/Xk$StateListAnimator;->c:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 39
    iget-object p1, p0, Lo/Xk$StateListAnimator;->a:Lo/Xk;

    new-instance v0, Lo/UU$Configuration;

    invoke-direct {v0, v1}, Lo/UU$Configuration;-><init>(Z)V

    invoke-virtual {p1, v0}, Lo/Xk;->e(Ljava/lang/Object;)V

    return v4

    :cond_1
    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const-string p3, "e1"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e2"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lo/Xk$StateListAnimator;->a:Lo/Xk;

    sget-object v0, Lo/UU$PackageItemInfo;->c:Lo/UU$PackageItemInfo;

    invoke-virtual {p1, v0}, Lo/Xk;->e(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
