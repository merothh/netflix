.class final Lo/Wl$ActionBar;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Wl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic d:Lo/Wl;

.field private final e:Lo/Wn$Activity;


# direct methods
.method public constructor <init>(Lo/Wl;Lo/Wn$Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Wn$Activity;",
            ")V"
        }
    .end annotation

    const-string v0, "prePlayerData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lo/Wl$ActionBar;->d:Lo/Wl;

    .line 45
    invoke-direct {p0}, Lo/cq;-><init>()V

    iput-object p2, p0, Lo/Wl$ActionBar;->e:Lo/Wn$Activity;

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const-string v0, "status"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->momentsBySegment()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    if-ne p2, v0, :cond_1

    .line 51
    iget-object p2, p0, Lo/Wl$ActionBar;->e:Lo/Wn$Activity;

    invoke-virtual {p2}, Lo/Wn$Activity;->a()Lo/Tv;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lo/Tv;->b(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V

    .line 52
    :cond_0
    iget-object p1, p0, Lo/Wl$ActionBar;->d:Lo/Wl;

    invoke-static {p1}, Lo/Wl;->c(Lo/Wl;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iget-object p2, p0, Lo/Wl$ActionBar;->e:Lo/Wn$Activity;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    :cond_1
    iget-object p1, p0, Lo/Wl$ActionBar;->d:Lo/Wl;

    invoke-static {p1}, Lo/Wl;->c(Lo/Wl;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    new-instance p2, Lo/Wn$Activity;

    sget-object v0, Lo/LegacyErrorStrings;->V:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v1, "CommonStatus.INTERNAL_ERROR"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/netflix/mediaclient/android/app/Status;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p2, v0, v2, v1, v2}, Lo/Wn$Activity;-><init>(Lcom/netflix/mediaclient/android/app/Status;Lo/Tv;ILo/amc;)V

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
