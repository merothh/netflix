.class public final Lo/LM$Activity$3$ActionBar;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LM$Activity$3;->b(Lo/hW;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/LM$Activity$3;


# direct methods
.method constructor <init>(Lo/LM$Activity$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 418
    iput-object p1, p0, Lo/LM$Activity$3$ActionBar;->e:Lo/LM$Activity$3;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    iget-object p1, p0, Lo/LM$Activity$3$ActionBar;->e:Lo/LM$Activity$3;

    iget-object p1, p1, Lo/LM$Activity$3;->b:Lio/reactivex/SingleEmitter;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->f()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2}, Ljava/lang/RuntimeException;-><init>()V

    check-cast p2, Ljava/lang/Throwable;

    :goto_0
    invoke-interface {p1, p2}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 423
    :cond_1
    iget-object p2, p0, Lo/LM$Activity$3$ActionBar;->e:Lo/LM$Activity$3;

    iget-object p2, p2, Lo/LM$Activity$3;->b:Lio/reactivex/SingleEmitter;

    if-eqz p1, :cond_2

    invoke-interface {p2, p1}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
