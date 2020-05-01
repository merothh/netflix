.class public final Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1$3;
.super Lo/cu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1;->c(Lo/hW;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/cu<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1$3;->a:Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1;

    invoke-direct {p0}, Lo/cu;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Object;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-super {p0, p1, p2}, Lo/cu;->e(Ljava/lang/Object;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1$3;->a:Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1;->c:Lio/reactivex/ObservableEmitter;

    const-string v1, "subscriber"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_3

    .line 51
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 62
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1$3;->a:Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1;->c:Lio/reactivex/ObservableEmitter;

    .line 63
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    .line 64
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p2

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error onGenericResponseFetched empty response for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1$3;->a:Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1;->b:Lo/Zx$Dialog;

    iget-object v2, v2, Lo/Zx$Dialog;->c:Lo/DateTransformation;

    invoke-interface {v2}, Lo/DateTransformation;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-direct {v0, p2, v1}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    .line 62
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 71
    :cond_2
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1$3;->a:Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1;->c:Lio/reactivex/ObservableEmitter;

    invoke-interface {p2, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 72
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1$3;->a:Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1;->c:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void

    .line 52
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1$3;->a:Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1;->c:Lio/reactivex/ObservableEmitter;

    .line 53
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;

    if-eqz p2, :cond_4

    .line 54
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p2

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    .line 55
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error onGenericResponseFetched for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1$3;->a:Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1;->b:Lo/Zx$Dialog;

    iget-object v2, v2, Lo/Zx$Dialog;->c:Lo/DateTransformation;

    invoke-interface {v2}, Lo/DateTransformation;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-direct {v0, p2, v1}, Lcom/netflix/mediaclient/service/webclient/volley/StatusCodeError;-><init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    .line 52
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
