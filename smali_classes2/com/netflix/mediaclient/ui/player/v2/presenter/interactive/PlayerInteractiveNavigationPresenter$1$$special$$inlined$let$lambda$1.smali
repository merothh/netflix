.class final Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1$$special$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;->b(Lo/UP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;",
        "Lcom/netflix/model/leafs/originals/interactive/condition/State;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/UP;

.field final synthetic c:Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;


# direct methods
.method constructor <init>(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Ljava/lang/String;Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;Lo/UP;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1$$special$$inlined$let$lambda$1;->e:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1$$special$$inlined$let$lambda$1;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1$$special$$inlined$let$lambda$1;->c:Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1$$special$$inlined$let$lambda$1;->b:Lo/UP;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;Lcom/netflix/model/leafs/originals/interactive/condition/State;)V
    .locals 5

    const-string v0, "snapshots"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "persistentMap"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1$$special$$inlined$let$lambda$1;->e:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->playerControls()Lcom/netflix/model/leafs/originals/interactive/PlayerControls;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls;->config()Lcom/netflix/model/leafs/originals/interactive/PlayerControls$Config;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$Config;->maxSnapshotsToDisplay()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 73
    :goto_0
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-le v2, v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1$$special$$inlined$let$lambda$1;->c:Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;->e:Lo/We;

    invoke-static {v0}, Lo/We;->d(Lo/We;)Lo/Xv;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lo/Xv;->c(IZ)V

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1$$special$$inlined$let$lambda$1;->e:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->playerControls()Lcom/netflix/model/leafs/originals/interactive/PlayerControls;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls;->choicePointsMetadata()Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata;->choicePoints()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1$$special$$inlined$let$lambda$1;->d:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    .line 80
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;->getSegmentIds()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 81
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1$$special$$inlined$let$lambda$1;->d:Ljava/lang/String;

    .line 80
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_4

    .line 85
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/condition/State;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/interactive/condition/State;-><init>()V

    .line 86
    new-instance v2, Ljava/util/HashMap;

    iget-object p2, p2, Lcom/netflix/model/leafs/originals/interactive/condition/State;->values:Ljava/util/HashMap;

    check-cast p2, Ljava/util/Map;

    invoke-direct {v2, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v2, v0, Lcom/netflix/model/leafs/originals/interactive/condition/State;->values:Ljava/util/HashMap;

    .line 87
    iget-object p2, v0, Lcom/netflix/model/leafs/originals/interactive/condition/State;->values:Ljava/util/HashMap;

    sget-object v2, Lcom/netflix/model/leafs/originals/interactive/condition/State;->SEGMENT_ID:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object p2, v0, Lcom/netflix/model/leafs/originals/interactive/condition/State;->values:Ljava/util/HashMap;

    const-string v2, "persistentState.values"

    invoke-static {p2, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/util/Map;

    sget-object v2, Lcom/netflix/model/leafs/originals/interactive/condition/State;->SEGMENT_ID:Ljava/lang/String;

    new-instance v3, Lcom/google/gson/JsonPrimitive;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1$$special$$inlined$let$lambda$1;->d:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p1, v0}, Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_4
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1$$special$$inlined$let$lambda$1;->c:Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;->e:Lo/We;

    invoke-static {p1}, Lo/We;->d(Lo/We;)Lo/Xv;

    move-result-object p1

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1$$special$$inlined$let$lambda$1;->e:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v0, v2}, Lo/Xv$TaskDescription;->a(Lo/Xv;Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;ZILjava/lang/Object;)V

    .line 93
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1$$special$$inlined$let$lambda$1;->c:Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1;->e:Lo/We;

    invoke-static {p1}, Lo/We;->d(Lo/We;)Lo/Xv;

    move-result-object p1

    invoke-interface {p1, v2}, Lo/Xv;->a(Lcom/netflix/model/leafs/originals/interactive/ImpressionData;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;

    check-cast p2, Lcom/netflix/model/leafs/originals/interactive/condition/State;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/v2/presenter/interactive/PlayerInteractiveNavigationPresenter$1$$special$$inlined$let$lambda$1;->c(Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;Lcom/netflix/model/leafs/originals/interactive/condition/State;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
