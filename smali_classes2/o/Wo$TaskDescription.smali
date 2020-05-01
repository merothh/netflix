.class public final Lo/Wo$TaskDescription;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Wo;->e(Lo/UK$TaskDescription;Lo/hW;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/hW;

.field final synthetic d:Lo/Wo;

.field final synthetic e:Lo/UK$TaskDescription;


# direct methods
.method constructor <init>(Lo/Wo;Lo/UK$TaskDescription;Lo/hW;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UK$TaskDescription;",
            "Lo/hW;",
            ")V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lo/Wo$TaskDescription;->d:Lo/Wo;

    iput-object p2, p0, Lo/Wo$TaskDescription;->e:Lo/UK$TaskDescription;

    iput-object p3, p0, Lo/Wo$TaskDescription;->c:Lo/hW;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 10

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 81
    iget-object p2, p0, Lo/Wo$TaskDescription;->e:Lo/UK$TaskDescription;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lo/UK$TaskDescription;->d(I)V

    .line 82
    iget-object p2, p0, Lo/Wo$TaskDescription;->d:Lo/Wo;

    iget-object v0, p0, Lo/Wo$TaskDescription;->e:Lo/UK$TaskDescription;

    iget-object v1, p0, Lo/Wo$TaskDescription;->c:Lo/hW;

    invoke-virtual {p2, v0, v1, p1}, Lo/Wo;->d(Lo/UK$TaskDescription;Lo/hW;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lo/Wo$TaskDescription;->d:Lo/Wo;

    invoke-static {p1}, Lo/Wo;->b(Lo/Wo;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    new-instance p2, Lo/UK$TaskDescription;

    const/4 v1, 0x0

    .line 85
    sget-object v0, Lo/LegacyErrorStrings;->U:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v2, "CommonStatus.INTERACTIVE_RESET_ERROR"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lcom/netflix/mediaclient/android/app/Status;

    const/4 v3, 0x0

    .line 86
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const/16 v4, -0x168

    const-string v5, "InteractiveMomentsPlayerRepository"

    invoke-direct {v0, v5, v4}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    move-object v4, v0

    check-cast v4, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x75

    const/4 v9, 0x0

    move-object v0, p2

    .line 84
    invoke-direct/range {v0 .. v9}, Lo/UK$TaskDescription;-><init>(Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;ILo/amc;)V

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
