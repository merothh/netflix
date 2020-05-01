.class final Lo/Wo$ActionBar;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Wo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ActionBar"
.end annotation


# instance fields
.field private final a:Lo/UK$TaskDescription;

.field private final b:Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

.field final synthetic d:Lo/Wo;


# direct methods
.method public constructor <init>(Lo/Wo;Lo/UK$TaskDescription;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UK$TaskDescription;",
            "Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;",
            ")V"
        }
    .end annotation

    const-string v0, "playerData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lo/Wo$ActionBar;->d:Lo/Wo;

    .line 55
    invoke-direct {p0}, Lo/cq;-><init>()V

    iput-object p2, p0, Lo/Wo$ActionBar;->a:Lo/UK$TaskDescription;

    iput-object p3, p0, Lo/Wo$ActionBar;->b:Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-super {p0, p1, p2}, Lo/cq;->e(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 61
    iget-object p2, p0, Lo/Wo$ActionBar;->b:Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    if-nez p2, :cond_0

    .line 62
    iget-object p2, p0, Lo/Wo$ActionBar;->a:Lo/UK$TaskDescription;

    invoke-virtual {p2, p1}, Lo/UK$TaskDescription;->b(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V

    goto :goto_1

    .line 64
    :cond_0
    iget-object p2, p0, Lo/Wo$ActionBar;->a:Lo/UK$TaskDescription;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->toBuilder()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments$Builder;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lo/Wo$ActionBar;->b:Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    invoke-virtual {p1, v0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments$Builder;->stateHistory(Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments$Builder;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments$Builder;->snapshots(Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;)Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments$Builder;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments$Builder;->build()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lo/UK$TaskDescription;->b(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V

    .line 66
    :goto_1
    iget-object p1, p0, Lo/Wo$ActionBar;->d:Lo/Wo;

    invoke-static {p1}, Lo/Wo;->b(Lo/Wo;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iget-object p2, p0, Lo/Wo$ActionBar;->a:Lo/UK$TaskDescription;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
