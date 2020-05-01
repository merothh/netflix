.class public final Lo/Ws$Application;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ws;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Application"
.end annotation


# instance fields
.field final synthetic a:Lo/Ws;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netflix/model/leafs/originals/interactive/condition/State;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;


# direct methods
.method public constructor <init>(Lo/Ws;Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;",
            "Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;",
            ")V"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lo/Ws$Application;->a:Lo/Ws;

    .line 132
    invoke-direct {p0}, Lo/cq;-><init>()V

    .line 133
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/Ws$Application;->b:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    .line 138
    iget-object p1, p0, Lo/Ws$Application;->b:Ljava/util/ArrayList;

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p3, :cond_1

    .line 140
    invoke-virtual {p3}, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;->builder()Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory$Builder;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory$Builder;->build()Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lo/Ws$Application;->d:Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const-string v0, "status"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 148
    iget-object v0, p0, Lo/Ws$Application;->b:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lo/Ws;->a:Lo/Ws$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 150
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->snapshots()Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;->clear()V

    .line 151
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->snapshots()Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;

    move-result-object v0

    iget-object v1, p0, Lo/Ws$Application;->b:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;->addAll(Ljava/util/Collection;)Z

    .line 153
    :cond_0
    iget-object v0, p0, Lo/Ws$Application;->d:Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->stateHistory()Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;->persistent()Lcom/netflix/model/leafs/originals/interactive/condition/State;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;->persistent()Lcom/netflix/model/leafs/originals/interactive/condition/State;

    move-result-object v2

    iget-object v2, v2, Lcom/netflix/model/leafs/originals/interactive/condition/State;->values:Ljava/util/HashMap;

    iput-object v2, v1, Lcom/netflix/model/leafs/originals/interactive/condition/State;->values:Ljava/util/HashMap;

    .line 155
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->stateHistory()Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;->global()Lcom/netflix/model/leafs/originals/interactive/condition/State;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;->global()Lcom/netflix/model/leafs/originals/interactive/condition/State;

    move-result-object v2

    iget-object v2, v2, Lcom/netflix/model/leafs/originals/interactive/condition/State;->values:Ljava/util/HashMap;

    iput-object v2, v1, Lcom/netflix/model/leafs/originals/interactive/condition/State;->values:Ljava/util/HashMap;

    .line 156
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->stateHistory()Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    move-result-object v1

    iget-object v0, v0, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;->sessionState:Ljava/util/HashMap;

    iput-object v0, v1, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;->sessionState:Ljava/util/HashMap;

    .line 159
    :cond_1
    iget-object v0, p0, Lo/Ws$Application;->a:Lo/Ws;

    invoke-static {v0}, Lo/Ws;->a(Lo/Ws;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    new-instance v1, Lo/Ws$TaskDescription;

    invoke-direct {v1, p2, p1}, Lo/Ws$TaskDescription;-><init>(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
