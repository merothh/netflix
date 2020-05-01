.class public final Lo/aaR$TaskDescription$3;
.super Lio/reactivex/observers/ResourceObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aaR$TaskDescription;-><init>(Lo/aaR;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/ResourceObserver<",
        "Ljava/util/List<",
        "+",
        "Lo/aaU$TaskDescription;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/aaR$TaskDescription;


# direct methods
.method constructor <init>(Lo/aaR$TaskDescription;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lo/aaR$TaskDescription$3;->e:Lo/aaR$TaskDescription;

    .line 57
    invoke-direct {p0}, Lio/reactivex/observers/ResourceObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/aaU$TaskDescription;",
            ">;)V"
        }
    .end annotation

    const-string v0, "entries"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lo/aaR$TaskDescription$3;->e:Lo/aaR$TaskDescription;

    invoke-static {v0}, Lo/aaR$TaskDescription;->b(Lo/aaR$TaskDescription;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 60
    iget-object v0, p0, Lo/aaR$TaskDescription$3;->e:Lo/aaR$TaskDescription;

    invoke-static {v0}, Lo/aaR$TaskDescription;->b(Lo/aaR$TaskDescription;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 61
    iget-object p1, p0, Lo/aaR$TaskDescription$3;->e:Lo/aaR$TaskDescription;

    invoke-virtual {p1}, Lo/aaR$TaskDescription;->notifyDataSetChanged()V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Couldn\'t load licenses"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lo/aaR$TaskDescription$3;->c(Ljava/util/List;)V

    return-void
.end method
