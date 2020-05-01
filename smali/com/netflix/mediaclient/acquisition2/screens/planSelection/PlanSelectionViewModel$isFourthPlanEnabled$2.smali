.class public final Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionViewModel$isFourthPlanEnabled$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/InputChannel;-><init>(Lo/InputBinding;Lo/InputEventReceiver;Lo/InputEventConsistencyVerifier;Ljava/util/List;Lo/RelativeSizeSpan;Ljava/util/List;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/TextClassifierImpl;Lo/TextClassifierService;Lo/SystemTextClassifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/InputChannel;


# direct methods
.method public constructor <init>(Lo/InputChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionViewModel$isFourthPlanEnabled$2;->e:Lo/InputChannel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionViewModel$isFourthPlanEnabled$2;->e:Lo/InputChannel;

    invoke-virtual {v0}, Lo/InputChannel;->y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionViewModel$isFourthPlanEnabled$2;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
