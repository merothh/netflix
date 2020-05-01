.class public final Lo/abU$PendingIntent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abU;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:J

.field final synthetic e:Lo/GridView;


# direct methods
.method constructor <init>(JLo/GridView;)V
    .locals 0

    .line 201
    iput-wide p1, p0, Lo/abU$PendingIntent;->c:J

    iput-object p3, p0, Lo/abU$PendingIntent;->e:Lo/GridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;)V
    .locals 5

    const-string v0, "t"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lo/abU$PendingIntent;->c:J

    sub-long/2addr v0, v2

    const/high16 p1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0xfa

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 205
    iget-object v0, p0, Lo/abU$PendingIntent;->e:Lo/GridView;

    invoke-virtual {v0}, Lo/GridView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 206
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 207
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 208
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    check-cast v0, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lo/abU$PendingIntent;->e:Lo/GridView;

    const-string v1, "bgImg"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lo/GridView;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 201
    check-cast p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;

    invoke-virtual {p0, p1}, Lo/abU$PendingIntent;->b(Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;)V

    return-void
.end method
