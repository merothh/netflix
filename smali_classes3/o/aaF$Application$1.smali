.class public final Lo/aaF$Application$1;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aaF$Application;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/ObservableEmitter;

.field final synthetic c:Lo/aaF$Application;


# direct methods
.method constructor <init>(Lo/aaF$Application;Lio/reactivex/ObservableEmitter;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lo/aaF$Application$1;->c:Lo/aaF$Application;

    iput-object p2, p0, Lo/aaF$Application$1;->a:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0, p3}, Lo/zP;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 8

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-super {p0, p1, p2, p3}, Lo/zP;->c(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V

    .line 38
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "serverLogDebugMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchQueryCompletionResults error: statusCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 45
    :cond_0
    iget-object v0, p0, Lo/aaF$Application$1;->a:Lio/reactivex/ObservableEmitter;

    new-instance v7, Lo/aaF$TaskDescription;

    iget-object v1, p0, Lo/aaF$Application$1;->c:Lo/aaF$Application;

    iget-wide v4, v1, Lo/aaF$Application;->c:J

    move-object v1, v7

    move-object v2, p2

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lo/aaF$TaskDescription;-><init>(Lcom/netflix/mediaclient/android/app/Status;Lo/Bs;JZ)V

    invoke-interface {v0, v7}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 46
    iget-object p1, p0, Lo/aaF$Application$1;->a:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
