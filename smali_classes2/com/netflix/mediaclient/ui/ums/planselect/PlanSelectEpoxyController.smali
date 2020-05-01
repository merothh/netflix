.class public final Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectEpoxyController;
.super Lcom/airbnb/epoxy/TypedEpoxyController;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/epoxy/TypedEpoxyController<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final planSelectionClicks:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/subjects/BehaviorSubject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "planSelectionClicks"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lcom/airbnb/epoxy/TypedEpoxyController;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectEpoxyController;->planSelectionClicks:Lio/reactivex/subjects/BehaviorSubject;

    return-void
.end method


# virtual methods
.method protected buildModels(Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 37
    :cond_0
    new-instance v0, Lo/ack;

    invoke-direct {v0}, Lo/ack;-><init>()V

    .line 41
    move-object v1, v0

    check-cast v1, Lo/aci;

    const-string v2, "header"

    .line 24
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Lo/aci;->a(Ljava/lang/CharSequence;)Lo/aci;

    .line 40
    invoke-virtual {v0, p0}, Lo/ack;->a(Lo/OfPrimitive;)V

    .line 27
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;->choices()Ljava/util/List;

    move-result-object p1

    const-string v0, "data.choices()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    const/4 v0, 0x0

    .line 46
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_1

    invoke-static {}, Lo/akz;->c()V

    :cond_1
    check-cast v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    .line 47
    new-instance v3, Lo/acz;

    invoke-direct {v3}, Lo/acz;-><init>()V

    .line 51
    move-object v4, v3

    check-cast v4, Lo/acu;

    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "product-choice-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v4, v0}, Lo/acu;->e(Ljava/lang/CharSequence;)Lo/acu;

    .line 30
    invoke-interface {v4, v1}, Lo/acu;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;)Lo/acu;

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectEpoxyController;->planSelectionClicks:Lio/reactivex/subjects/BehaviorSubject;

    invoke-interface {v4, v0}, Lo/acu;->e(Lio/reactivex/subjects/BehaviorSubject;)Lo/acu;

    .line 50
    invoke-virtual {v3, p0}, Lo/acz;->a(Lo/OfPrimitive;)V

    move v0, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public bridge synthetic buildModels(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectEpoxyController;->buildModels(Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;)V

    return-void
.end method
