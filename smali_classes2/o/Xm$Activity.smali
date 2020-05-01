.class public final Lo/Xm$Activity;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xm;->a(Landroid/view/ViewGroup;)Landroid/view/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final b:I

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Lo/Xm;

.field private final e:I


# direct methods
.method constructor <init>(Lo/Xm;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lo/Xm$Activity;->d:Lo/Xm;

    iput-object p2, p0, Lo/Xm$Activity;->c:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/16 p1, 0x14

    .line 72
    iput p1, p0, Lo/Xm$Activity;->e:I

    .line 73
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget p2, p0, Lo/Xm$Activity;->e:I

    invoke-static {p1, p2}, Lo/RemoteException;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lo/Xm$Activity;->b:I

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lo/gO;->d:Lo/gO$Activity;

    invoke-virtual {v0}, Lo/gO$Activity;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Xm$Activity;->d:Lo/Xm;

    invoke-static {v0}, Lo/Xm;->c(Lo/Xm;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    :cond_0
    iget-object v0, p0, Lo/Xm$Activity;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/app/Activity;

    invoke-static {v0, v2}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    div-int/lit8 v0, v0, 0x2

    iget v3, p0, Lo/Xm$Activity;->b:I

    sub-int v3, v0, v3

    int-to-float v3, v3

    const/4 v4, 0x1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 87
    iget-object p1, p0, Lo/Xm$Activity;->d:Lo/Xm;

    new-instance v0, Lo/UU$Configuration;

    invoke-direct {v0, v4}, Lo/UU$Configuration;-><init>(Z)V

    invoke-virtual {p1, v0}, Lo/Xm;->e(Ljava/lang/Object;)V

    return v4

    .line 89
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v2, p0, Lo/Xm$Activity;->b:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 90
    iget-object p1, p0, Lo/Xm$Activity;->d:Lo/Xm;

    new-instance v0, Lo/UU$Configuration;

    invoke-direct {v0, v1}, Lo/UU$Configuration;-><init>(Z)V

    invoke-virtual {p1, v0}, Lo/Xm;->e(Ljava/lang/Object;)V

    return v4

    :cond_2
    return v1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lo/Xm$Activity;->d:Lo/Xm;

    sget-object v0, Lo/UU$PackageItemInfo;->c:Lo/UU$PackageItemInfo;

    invoke-virtual {p1, v0}, Lo/Xm;->e(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
