.class public final Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alS;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ws;->b(Lo/Tv;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alS<",
        "Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;",
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/String;",
        "Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;",
        "Lo/FillResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Ws;

.field final synthetic b:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;


# direct methods
.method public constructor <init>(Lo/Ws;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2;->a:Lo/Ws;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2;->b:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    check-cast p2, Ljava/util/ArrayList;

    check-cast p3, Ljava/lang/String;

    check-cast p4, Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2;->c(Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;Ljava/util/ArrayList;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;)Lo/FillResponse;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;Ljava/util/ArrayList;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;)Lo/FillResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;",
            ")",
            "Lo/FillResponse;"
        }
    .end annotation

    const-string v0, "stateHistory"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "segmentHistory"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "snapshots"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2;->b:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/ImpressionData;->data()Lcom/netflix/model/leafs/originals/interactive/ImpressionData$Data;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 84
    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p2, p1}, Lcom/netflix/model/leafs/originals/interactive/ImpressionData$Data;->persistentIterator(Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "impressionData.persisten\u2026entHistory, stateHistory)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;->persistent()Lcom/netflix/model/leafs/originals/interactive/condition/State;

    move-result-object v3

    iget-object v3, v3, Lcom/netflix/model/leafs/originals/interactive/condition/State;->values:Ljava/util/HashMap;

    const-string v4, "stateHistory.persistent().values"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/Map;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v0, p2, p1}, Lcom/netflix/model/leafs/originals/interactive/ImpressionData$Data;->globalIterator(Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "impressionData.globalIte\u2026entHistory, stateHistory)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-eqz v2, :cond_2

    .line 91
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;->global()Lcom/netflix/model/leafs/originals/interactive/condition/State;

    move-result-object v3

    iget-object v3, v3, Lcom/netflix/model/leafs/originals/interactive/condition/State;->values:Ljava/util/HashMap;

    const-string v4, "stateHistory.global().values"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/Map;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 94
    :cond_3
    invoke-virtual {v0, p2, p1}, Lcom/netflix/model/leafs/originals/interactive/ImpressionData$Data;->sessionIterator(Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)Ljava/util/Iterator;

    move-result-object p2

    const-string v0, "impressionData.sessionIt\u2026entHistory, stateHistory)"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_4

    .line 96
    iget-object v1, p1, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;->sessionState:Ljava/util/HashMap;

    const-string v2, "stateHistory.sessionState"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Map;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 100
    :cond_5
    sget-object p2, Lo/Ws;->a:Lo/Ws$ActionBar;

    check-cast p2, Lo/MessagePdu;

    .line 101
    new-instance p2, Lo/FillResponse;

    invoke-direct {p2, p3, p1, p4}, Lo/FillResponse;-><init>(Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;)V

    .line 106
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2;->a:Lo/Ws;

    invoke-static {p3, p2}, Lo/Ws;->a(Lo/Ws;Lo/FillResponse;)V

    .line 107
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2;->a:Lo/Ws;

    invoke-static {p3}, Lo/Ws;->c(Lo/Ws;)Lo/Zx;

    move-result-object p3

    invoke-virtual {p3}, Lo/Zx;->f()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/hW;

    if-eqz p3, :cond_6

    .line 108
    move-object v0, p2

    check-cast v0, Lo/SettingsValidators;

    .line 109
    new-instance v1, Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2$ActionBar;

    invoke-direct {v1, p0, p4, p1}, Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2;Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)V

    check-cast v1, Lo/ci;

    .line 107
    invoke-interface {p3, v0, v1}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    :cond_6
    return-object p2
.end method
