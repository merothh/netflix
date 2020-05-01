.class public Lo/InputChannel;
.super Lo/ChangeScroll;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private final c:Ljava/lang/CharSequence;

.field private final d:Z

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Z

.field private i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Lo/InputEventReceiver;

.field private final l:Z

.field private final m:Lo/InputEventConsistencyVerifier;

.field private final n:Lo/InputBinding;

.field private final o:Lo/aka;

.field private final p:Lo/SystemTextClassifier;

.field private final q:Lo/RelativeSizeSpan;

.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/GhostView;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/GestureDetector;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lo/TextClassificationSessionFactory;


# direct methods
.method public constructor <init>(Lo/InputBinding;Lo/InputEventReceiver;Lo/InputEventConsistencyVerifier;Ljava/util/List;Lo/RelativeSizeSpan;Ljava/util/List;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/TextClassifierImpl;Lo/TextClassifierService;Lo/SystemTextClassifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputBinding;",
            "Lo/InputEventReceiver;",
            "Lo/InputEventConsistencyVerifier;",
            "Ljava/util/List<",
            "Lo/GhostView;",
            ">;",
            "Lo/RelativeSizeSpan;",
            "Ljava/util/List<",
            "Lo/GestureDetector;",
            ">;",
            "Lo/TextClassificationSessionFactory;",
            "Lo/DynamicDrawableSpan;",
            "Lo/TextClassifierImpl;",
            "Lo/TextClassifierService;",
            "Lo/SystemTextClassifier;",
            ")V"
        }
    .end annotation

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleData"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "planOptionViewModels"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upgradeOnUsPlanViewModel"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "planRowParsedData"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "planSelectionRequestLogger"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stepsViewModel"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupNetworkManager"

    invoke-static {p9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModel"

    invoke-static {p10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupErrorReporter"

    invoke-static {p11, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p9, p1, p10}, Lo/ChangeScroll;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassifierService;)V

    iput-object p1, p0, Lo/InputChannel;->n:Lo/InputBinding;

    iput-object p2, p0, Lo/InputChannel;->k:Lo/InputEventReceiver;

    iput-object p3, p0, Lo/InputChannel;->m:Lo/InputEventConsistencyVerifier;

    iput-object p4, p0, Lo/InputChannel;->r:Ljava/util/List;

    iput-object p5, p0, Lo/InputChannel;->q:Lo/RelativeSizeSpan;

    iput-object p6, p0, Lo/InputChannel;->s:Ljava/util/List;

    iput-object p7, p0, Lo/InputChannel;->t:Lo/TextClassificationSessionFactory;

    iput-object p11, p0, Lo/InputChannel;->p:Lo/SystemTextClassifier;

    .line 50
    iget-object p1, p0, Lo/InputChannel;->k:Lo/InputEventReceiver;

    invoke-virtual {p1}, Lo/InputEventReceiver;->d()Z

    move-result p1

    iput-boolean p1, p0, Lo/InputChannel;->d:Z

    .line 52
    invoke-virtual {p8}, Lo/DynamicDrawableSpan;->b()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/InputChannel;->c:Ljava/lang/CharSequence;

    .line 54
    iget-object p1, p0, Lo/InputChannel;->k:Lo/InputEventReceiver;

    invoke-virtual {p1}, Lo/InputEventReceiver;->i()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 55
    iget-object p3, p0, Lo/InputChannel;->k:Lo/InputEventReceiver;

    invoke-virtual {p3}, Lo/InputEventReceiver;->k()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lo/InputChannel;->k:Lo/InputEventReceiver;

    invoke-virtual {p3}, Lo/InputEventReceiver;->n()Ljava/lang/String;

    move-result-object p3

    const-string p4, "LCFM"

    invoke-static {p4, p3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 56
    iget-object p1, p0, Lo/InputChannel;->n:Lo/InputBinding;

    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->eO:I

    invoke-virtual {p1, p3}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p1

    .line 57
    iget-object p3, p0, Lo/InputChannel;->k:Lo/InputEventReceiver;

    invoke-virtual {p3}, Lo/InputEventReceiver;->m()Ljava/lang/String;

    move-result-object p3

    const-string p4, "offerPrice"

    invoke-virtual {p1, p4, p3}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 60
    :cond_0
    iget-object p3, p0, Lo/InputChannel;->n:Lo/InputBinding;

    invoke-virtual {p3, p1}, Lo/InputBinding;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p2

    .line 54
    :goto_0
    iput-object p1, p0, Lo/InputChannel;->a:Ljava/lang/String;

    .line 64
    iget-object p1, p0, Lo/InputChannel;->k:Lo/InputEventReceiver;

    invoke-virtual {p1}, Lo/InputEventReceiver;->g()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 65
    iget-object p3, p0, Lo/InputChannel;->n:Lo/InputBinding;

    invoke-virtual {p3, p1}, Lo/InputBinding;->b(Ljava/lang/String;)Lo/VideoView2;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 66
    iget-object p3, p0, Lo/InputChannel;->n:Lo/InputBinding;

    sget p4, Lcom/netflix/mediaclient/ui/R$AssistContent;->qv:I

    invoke-virtual {p3, p4}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "planName"

    invoke-virtual {p1, p4, p3}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 67
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, p2

    .line 64
    :goto_1
    iput-object p1, p0, Lo/InputChannel;->e:Ljava/lang/String;

    .line 70
    iget-object p1, p0, Lo/InputChannel;->k:Lo/InputEventReceiver;

    invoke-virtual {p1}, Lo/InputEventReceiver;->o()Z

    move-result p1

    iput-boolean p1, p0, Lo/InputChannel;->h:Z

    .line 72
    iget-object p1, p0, Lo/InputChannel;->k:Lo/InputEventReceiver;

    invoke-virtual {p1}, Lo/InputEventReceiver;->f()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 73
    iget-object p3, p0, Lo/InputChannel;->n:Lo/InputBinding;

    invoke-virtual {p3, p1}, Lo/InputBinding;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 74
    :cond_3
    iget-object p1, p0, Lo/InputChannel;->n:Lo/InputBinding;

    .line 75
    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->qE:I

    .line 74
    invoke-virtual {p1, p3}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lo/InputChannel;->g:Ljava/lang/String;

    const/4 p1, 0x0

    .line 81
    invoke-direct {p0, p1}, Lo/InputChannel;->d(Z)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 82
    iget-object p3, p0, Lo/InputChannel;->k:Lo/InputEventReceiver;

    invoke-virtual {p3}, Lo/InputEventReceiver;->c()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 83
    iget-object p2, p0, Lo/InputChannel;->n:Lo/InputBinding;

    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->rM:I

    invoke-virtual {p2, p3}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p2

    .line 84
    iget-object p3, p0, Lo/InputChannel;->k:Lo/InputEventReceiver;

    invoke-virtual {p3}, Lo/InputEventReceiver;->c()Ljava/lang/String;

    move-result-object p3

    const-string p4, "name"

    invoke-virtual {p2, p4, p3}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p2

    .line 85
    invoke-virtual {p2}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p2

    .line 81
    :cond_4
    iput-object p2, p0, Lo/InputChannel;->f:Ljava/lang/String;

    .line 109
    iget-object p2, p0, Lo/InputChannel;->k:Lo/InputEventReceiver;

    invoke-virtual {p2}, Lo/InputEventReceiver;->e()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/InputChannel;->i:Ljava/lang/String;

    .line 119
    iget-object p2, p0, Lo/InputChannel;->k:Lo/InputEventReceiver;

    invoke-virtual {p2}, Lo/InputEventReceiver;->l()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/InputChannel;->j:Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Lo/InputChannel;->q()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    const/4 p1, 0x1

    :cond_5
    iput-boolean p1, p0, Lo/InputChannel;->l:Z

    .line 232
    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionViewModel$isFourthPlanEnabled$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionViewModel$isFourthPlanEnabled$2;-><init>(Lo/InputChannel;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/InputChannel;->o:Lo/aka;

    return-void
.end method

.method private final B()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/GhostView;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lo/InputChannel;->r:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 332
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lo/GhostView;

    .line 209
    invoke-virtual {v3}, Lo/GhostView;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Weekly"

    invoke-static {v3, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    :cond_1
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private final D()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/GhostView;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lo/InputChannel;->r:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 334
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 335
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lo/GhostView;

    .line 212
    invoke-virtual {v3}, Lo/GhostView;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Monthly"

    invoke-static {v3, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 336
    :cond_1
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private final b(Ljava/lang/String;Lo/GestureDetector;)Lo/VideoView2;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x65cb935f

    if-eq v1, v2, :cond_2

    const v2, -0x5311d813

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "Monthly"

    .line 171
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lo/GestureDetector;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 172
    iget-object p2, p0, Lo/InputChannel;->n:Lo/InputBinding;

    invoke-virtual {p2, p1}, Lo/InputBinding;->b(Ljava/lang/String;)Lo/VideoView2;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v1, "Weekly"

    .line 168
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lo/GestureDetector;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 169
    iget-object p2, p0, Lo/InputChannel;->n:Lo/InputBinding;

    invoke-virtual {p2, p1}, Lo/InputBinding;->b(Ljava/lang/String;)Lo/VideoView2;

    move-result-object v0

    goto :goto_1

    .line 174
    :cond_3
    :goto_0
    invoke-virtual {p2}, Lo/GestureDetector;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lo/InputChannel;->n:Lo/InputBinding;

    invoke-virtual {p2}, Lo/GestureDetector;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/InputBinding;->b(Ljava/lang/String;)Lo/VideoView2;

    move-result-object v0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private final d(Lo/GestureDetector;)Ljava/lang/String;
    .locals 4

    .line 142
    invoke-virtual {p1}, Lo/GestureDetector;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lo/InputChannel;->n:Lo/InputBinding;

    invoke-virtual {v2, v0}, Lo/InputBinding;->b(Ljava/lang/String;)Lo/VideoView2;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 143
    :goto_0
    invoke-virtual {p1}, Lo/GestureDetector;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "planPrice"

    invoke-static {v2, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    invoke-virtual {p0}, Lo/InputChannel;->q()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lo/InputChannel;->b(Ljava/lang/String;Lo/GestureDetector;)Lo/VideoView2;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_5

    .line 148
    iget-object v1, p0, Lo/InputChannel;->k:Lo/InputEventReceiver;

    invoke-virtual {v1}, Lo/InputEventReceiver;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 149
    iget-object v1, p0, Lo/InputChannel;->k:Lo/InputEventReceiver;

    invoke-virtual {v1}, Lo/InputEventReceiver;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "endDate"

    invoke-virtual {v0, v2, v1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    .line 151
    :cond_2
    invoke-virtual {p1}, Lo/GestureDetector;->e()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 322
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 323
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 152
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 325
    :cond_3
    check-cast v1, Ljava/util/List;

    .line 154
    :cond_4
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method private final d(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 242
    invoke-virtual {p0}, Lo/InputChannel;->q()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/InputChannel;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    check-cast v0, Ljava/lang/Iterable;

    .line 353
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 362
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 361
    check-cast v2, Lo/GhostView;

    const/4 v3, 0x0

    if-nez p1, :cond_1

    goto/16 :goto_3

    .line 243
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x5f5e8754

    if-eq v4, v5, :cond_9

    const v5, 0x1e0b5404

    if-eq v4, v5, :cond_4

    const v5, 0x7c7dc7a0    # 5.2708E36f

    if-eq v4, v5, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v4, "planPrice"

    .line 244
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 245
    invoke-direct {p0}, Lo/InputChannel;->z()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lo/GhostView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v3, v2

    :cond_3
    if-nez v3, :cond_d

    .line 247
    iget-object v4, p0, Lo/InputChannel;->p:Lo/SystemTextClassifier;

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "SignupNativeFieldError"

    const-string v6, "planPrice"

    invoke-static/range {v4 .. v9}, Lo/SystemTextClassifier;->e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    goto/16 :goto_4

    :cond_4
    const-string v4, "videoQuality"

    .line 251
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 252
    invoke-virtual {v2}, Lo/GhostView;->h()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/android/moneyball/fields/Field;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    :cond_5
    if-eqz v3, :cond_8

    check-cast v3, Ljava/util/List;

    .line 253
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 254
    check-cast v3, Ljava/lang/Iterable;

    .line 363
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 255
    iget-object v5, p0, Lo/InputChannel;->n:Lo/InputBinding;

    invoke-virtual {v5, v4}, Lo/InputBinding;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    :goto_2
    move-object v3, v2

    goto :goto_4

    .line 252
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.String>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const-string v4, "resolution"

    .line 259
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 260
    iget-object v4, p0, Lo/InputChannel;->n:Lo/InputBinding;

    invoke-virtual {v2}, Lo/GhostView;->h()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/android/moneyball/fields/Field;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    :cond_a
    if-eqz v3, :cond_b

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lo/InputBinding;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_b
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_3
    if-eqz p1, :cond_d

    .line 264
    invoke-virtual {v2}, Lo/GhostView;->h()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/android/moneyball/fields/Field;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_d
    :goto_4
    if-eqz v3, :cond_0

    .line 361
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 366
    :cond_e
    check-cast v1, Ljava/util/List;

    goto :goto_5

    .line 268
    :cond_f
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v1

    :goto_5
    return-object v1
.end method

.method private final d(Z)Z
    .locals 1

    .line 79
    invoke-virtual {p0}, Lo/InputChannel;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/InputChannel;->k:Lo/InputEventReceiver;

    invoke-virtual {p1}, Lo/InputEventReceiver;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final e(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/GhostView;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x65cb935f

    if-eq v0, v1, :cond_2

    const v1, -0x5311d813

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "Monthly"

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lo/InputChannel;->D()Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string v0, "Weekly"

    .line 191
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lo/InputChannel;->B()Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 193
    :cond_3
    :goto_0
    iget-object p1, p0, Lo/InputChannel;->r:Ljava/util/List;

    :goto_1
    return-object p1
.end method

.method private final z()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Lo/InputChannel;->q()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/InputChannel;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lo/akz;->n(Ljava/lang/Iterable;)Lo/anb;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionViewModel$planPrices$1;->b:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionViewModel$planPrices$1;

    check-cast v1, Lo/alA;

    invoke-static {v0, v1}, Lo/ane;->a(Lo/anb;Lo/alA;)Lo/anb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 327
    invoke-interface {v0}, Lo/anb;->d()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 328
    check-cast v2, Lkotlin/Pair;

    .line 185
    invoke-virtual {v2}, Lkotlin/Pair;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 115
    iput-object p1, p0, Lo/InputChannel;->i:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lo/InputChannel;->b:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lo/InputChannel;->d:Z

    return v0
.end method

.method public final b(IF)I
    .locals 2

    const/4 v0, 0x0

    int-to-float v1, v0

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_1

    int-to-float v1, p1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lo/InputChannel;->y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr p1, v0

    int-to-float p1, p1

    div-float/2addr p2, p1

    float-to-int p1, p2

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lo/InputChannel;->k:Lo/InputEventReceiver;

    invoke-virtual {v0}, Lo/InputEventReceiver;->b()Lcom/netflix/android/moneyball/fields/ChoiceField;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/netflix/android/moneyball/fields/ChoiceField;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 1

    .line 101
    iget-object v0, p0, Lo/InputChannel;->k:Lo/InputEventReceiver;

    invoke-virtual {v0}, Lo/InputEventReceiver;->r()Lcom/netflix/android/moneyball/fields/BooleanField;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/android/moneyball/fields/BooleanField;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 3

    .line 39
    iget-object v0, p0, Lo/InputChannel;->k:Lo/InputEventReceiver;

    invoke-virtual {v0}, Lo/InputEventReceiver;->j()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lo/InputChannel;->j()Lo/Cloneable;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lo/InputChannel;->t:Lo/TextClassificationSessionFactory;

    .line 38
    invoke-virtual {p0, v0, v1, v2}, Lo/InputChannel;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lo/InputChannel;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 1

    .line 52
    iget-object v0, p0, Lo/InputChannel;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lo/InputChannel;->b:Z

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lo/InputChannel;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lo/InputChannel;->m:Lo/InputEventConsistencyVerifier;

    invoke-virtual {v0}, Lo/InputEventConsistencyVerifier;->a()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lo/InputChannel;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Z
    .locals 2

    .line 104
    iget-object v0, p0, Lo/InputChannel;->k:Lo/InputEventReceiver;

    invoke-virtual {v0}, Lo/InputEventReceiver;->r()Lcom/netflix/android/moneyball/fields/BooleanField;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/BooleanField;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    .line 106
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final m()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lo/InputChannel;->h:Z

    return v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lo/InputChannel;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 3

    .line 92
    iget-object v0, p0, Lo/InputChannel;->k:Lo/InputEventReceiver;

    invoke-virtual {v0}, Lo/InputEventReceiver;->b()Lcom/netflix/android/moneyball/fields/ChoiceField;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/ChoiceField;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lo/InputChannel;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lo/InputChannel;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lo/InputChannel;->l:Z

    return v0
.end method

.method public final s()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lo/InputChannel;->s:Ljava/util/List;

    .line 133
    check-cast v0, Ljava/lang/Iterable;

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 319
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 318
    check-cast v2, Lo/GestureDetector;

    .line 134
    invoke-direct {p0, v2}, Lo/InputChannel;->d(Lo/GestureDetector;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 136
    new-instance v4, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;

    invoke-virtual {v2}, Lo/GestureDetector;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lo/InputChannel;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    .line 318
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 321
    :cond_2
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final t()Z
    .locals 2

    .line 159
    iget-object v0, p0, Lo/InputChannel;->q:Lo/RelativeSizeSpan;

    invoke-virtual {p0}, Lo/InputChannel;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/RelativeSizeSpan;->e(Ljava/lang/String;)Lo/GhostView;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lo/InputChannel;->q:Lo/RelativeSizeSpan;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/GhostView;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lo/RelativeSizeSpan;->a(Ljava/lang/String;)Lo/GhostView;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lo/InputChannel;->q:Lo/RelativeSizeSpan;

    invoke-virtual {v1}, Lo/RelativeSizeSpan;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/InputChannel;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final u()Lo/RelativeSizeSpan;
    .locals 1

    .line 28
    iget-object v0, p0, Lo/InputChannel;->q:Lo/RelativeSizeSpan;

    return-object v0
.end method

.method public final v()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lo/InputChannel;->q()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/InputChannel;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    .line 337
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 346
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 345
    check-cast v2, Lo/GhostView;

    .line 217
    invoke-virtual {v2}, Lo/GhostView;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 345
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 348
    :cond_1
    check-cast v1, Ljava/util/List;

    goto :goto_1

    .line 218
    :cond_2
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public final w()Z
    .locals 1

    iget-object v0, p0, Lo/InputChannel;->o:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final x()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lo/InputChannel;->b:Z

    return v0
.end method

.method public final y()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lo/InputChannel;->q()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/InputChannel;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    .line 349
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 350
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 351
    check-cast v2, Lo/GhostView;

    .line 227
    invoke-virtual {v2}, Lo/GhostView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 352
    :cond_0
    check-cast v1, Ljava/util/List;

    goto :goto_1

    .line 228
    :cond_1
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v1

    :goto_1
    return-object v1
.end method
