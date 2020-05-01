.class public final Lo/ES$Application$4$2;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ES$Application$4;->run(Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/ES$Application$4;


# direct methods
.method constructor <init>(Lo/ES$Application$4;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lo/ES$Application$4$2;->c:Lo/ES$Application$4;

    invoke-direct {p0, p2}, Lo/zP;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public j(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AS;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-super {p0, p1, p2}, Lo/zP;->j(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 69
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 70
    iget-object v0, p0, Lo/ES$Application$4$2;->c:Lo/ES$Application$4;

    iget-object v0, v0, Lo/ES$Application$4;->d:Lio/reactivex/ObservableEmitter;

    new-instance v1, Lo/EQ;

    invoke-direct {v1, p2, p1}, Lo/EQ;-><init>(Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 71
    iget-object p1, p0, Lo/ES$Application$4$2;->c:Lo/ES$Application$4;

    iget-object p1, p1, Lo/ES$Application$4;->d:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lo/ES$Application$4$2;->c:Lo/ES$Application$4;

    iget-object p1, p1, Lo/ES$Application$4;->d:Lio/reactivex/ObservableEmitter;

    new-instance p2, Ljava/lang/Throwable;

    const-string v0, "No data from SeasonsSelectionRepository.fetchMoreEpisodesForSeason"

    invoke-direct {p2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
