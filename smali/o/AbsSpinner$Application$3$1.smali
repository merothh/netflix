.class public final Lo/AbsSpinner$Application$3$1;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AbsSpinner$Application$3;->run(Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/AbsSpinner$Application$3;


# direct methods
.method constructor <init>(Lo/AbsSpinner$Application$3;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lo/AbsSpinner$Application$3$1;->b:Lo/AbsSpinner$Application$3;

    invoke-direct {p0, p2}, Lo/zP;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-super {p0, p1, p2}, Lo/zP;->c(Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 120
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lo/AbsSpinner$Application$3$1;->b:Lo/AbsSpinner$Application$3;

    iget-object p1, p1, Lo/AbsSpinner$Application$3;->b:Lio/reactivex/SingleEmitter;

    new-instance v0, Ljava/lang/Exception;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->f()Ljava/lang/Throwable;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 121
    iget-object p1, p0, Lo/AbsSpinner$Application$3$1;->b:Lo/AbsSpinner$Application$3;

    iget-object p1, p1, Lo/AbsSpinner$Application$3;->b:Lio/reactivex/SingleEmitter;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, "VideoDetails null"

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    invoke-interface {p1, p2}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 122
    :cond_1
    invoke-interface {p1}, Lo/Bc;->bk()Lcom/netflix/model/leafs/VideoInfo$Sharing;

    move-result-object p2

    if-nez p2, :cond_2

    iget-object p1, p0, Lo/AbsSpinner$Application$3$1;->b:Lo/AbsSpinner$Application$3;

    iget-object p1, p1, Lo/AbsSpinner$Application$3;->b:Lio/reactivex/SingleEmitter;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, "Sharing info null"

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    invoke-interface {p1, p2}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 123
    :cond_2
    iget-object p2, p0, Lo/AbsSpinner$Application$3$1;->b:Lo/AbsSpinner$Application$3;

    iget-object p2, p2, Lo/AbsSpinner$Application$3;->b:Lio/reactivex/SingleEmitter;

    invoke-interface {p1}, Lo/Bc;->bk()Lcom/netflix/model/leafs/VideoInfo$Sharing;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
