.class Lo/acX$4;
.super Lio/reactivex/observers/DisposableObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acX;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableObserver<",
        "Lo/JM$StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

.field final synthetic c:Ljava/lang/String;

.field final synthetic e:Lo/acX;


# direct methods
.method constructor <init>(Lo/acX;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lo/acX$4;->e:Lo/acX;

    iput-object p2, p0, Lo/acX$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lo/acX$4;->c:Ljava/lang/String;

    iput-object p4, p0, Lo/acX$4;->b:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/JM$StateListAnimator;)V
    .locals 3

    .line 255
    invoke-virtual {p1}, Lo/JM$StateListAnimator;->b()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/JM$StateListAnimator;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    iget-object v1, p0, Lo/acX$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lo/acX$4;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "nftoken"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo/JM$StateListAnimator;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    iget-object p1, p0, Lo/acX$4;->e:Lo/acX;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/acX$4;->b:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    invoke-static {p1, v0, v1}, Lo/acX;->a(Lo/acX;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;)V

    goto :goto_0

    :cond_0
    const-string p1, "VoipActivity"

    const-string v0, "Couldn\'t fetch token, opening url without auto login"

    .line 260
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object p1, p0, Lo/acX$4;->e:Lo/acX;

    iget-object v0, p0, Lo/acX$4;->a:Ljava/lang/String;

    iget-object v1, p0, Lo/acX$4;->b:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    invoke-static {p1, v0, v1}, Lo/acX;->a(Lo/acX;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;)V

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 252
    check-cast p1, Lo/JM$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/acX$4;->b(Lo/JM$StateListAnimator;)V

    return-void
.end method
