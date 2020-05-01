.class Lo/ye$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/yf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ye;->e(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lio/reactivex/SingleEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lio/reactivex/SingleEmitter;

.field final synthetic e:Lo/ye;


# direct methods
.method constructor <init>(Lo/ye;Lio/reactivex/SingleEmitter;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lo/ye$3;->e:Lo/ye;

    iput-object p2, p0, Lo/ye$3;->d:Lio/reactivex/SingleEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 701
    :try_start_0
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 702
    iget-object p1, p0, Lo/ye$3;->d:Lio/reactivex/SingleEmitter;

    invoke-interface {p1, p2}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 704
    :cond_0
    iget-object p1, p0, Lo/ye$3;->d:Lio/reactivex/SingleEmitter;

    new-instance p2, Lcom/netflix/mediaclient/android/app/StatusException;

    invoke-direct {p2, p3}, Lcom/netflix/mediaclient/android/app/StatusException;-><init>(Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {p1, p2}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 707
    iget-object p2, p0, Lo/ye$3;->d:Lio/reactivex/SingleEmitter;

    invoke-interface {p2, p1}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method
