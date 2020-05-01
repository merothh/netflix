.class public final Lo/ES$TaskDescription$4$4;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ES$TaskDescription$4;->run(Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/ES$TaskDescription$4;


# direct methods
.method constructor <init>(Lo/ES$TaskDescription$4;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lo/ES$TaskDescription$4$4;->b:Lo/ES$TaskDescription$4;

    invoke-direct {p0, p2}, Lo/zP;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public e(Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Bb;",
            "Ljava/util/List<",
            "Lo/Ba;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const-string v0, "res"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-super {p0, p1, p2, p3}, Lo/zP;->e(Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 33
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lo/ES$TaskDescription$4$4;->b:Lo/ES$TaskDescription$4;

    iget-object v0, v0, Lo/ES$TaskDescription$4;->c:Lio/reactivex/ObservableEmitter;

    .line 35
    new-instance v1, Lo/ER;

    invoke-direct {v1, p3, p1, p2}, Lo/ER;-><init>(Lcom/netflix/mediaclient/android/app/Status;Lo/Bb;Ljava/util/List;)V

    .line 34
    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lo/ES$TaskDescription$4$4;->b:Lo/ES$TaskDescription$4;

    iget-object p1, p1, Lo/ES$TaskDescription$4;->c:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lo/ES$TaskDescription$4$4;->b:Lo/ES$TaskDescription$4;

    iget-object p1, p1, Lo/ES$TaskDescription$4;->c:Lio/reactivex/ObservableEmitter;

    new-instance p2, Ljava/lang/Throwable;

    const-string p3, "No data from SeasonsSelectionRepository.fetchShowDetailsAndSeasons"

    invoke-direct {p2, p3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
