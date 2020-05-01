.class Lo/ye$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/yf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ye;->d(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lio/reactivex/CompletableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/CompletableEmitter;

.field final synthetic d:Lo/ye;


# direct methods
.method constructor <init>(Lo/ye;Lio/reactivex/CompletableEmitter;)V
    .locals 0

    .line 752
    iput-object p1, p0, Lo/ye$4;->d:Lo/ye;

    iput-object p2, p0, Lo/ye$4;->a:Lio/reactivex/CompletableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 761
    invoke-interface {p7}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 762
    iget-object p1, p0, Lo/ye$4;->a:Lio/reactivex/CompletableEmitter;

    invoke-interface {p1}, Lio/reactivex/CompletableEmitter;->onComplete()V

    goto :goto_0

    .line 764
    :cond_0
    iget-object p1, p0, Lo/ye$4;->a:Lio/reactivex/CompletableEmitter;

    new-instance p2, Lcom/netflix/mediaclient/android/app/StatusException;

    invoke-direct {p2, p7}, Lcom/netflix/mediaclient/android/app/StatusException;-><init>(Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {p1, p2}, Lio/reactivex/CompletableEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method
