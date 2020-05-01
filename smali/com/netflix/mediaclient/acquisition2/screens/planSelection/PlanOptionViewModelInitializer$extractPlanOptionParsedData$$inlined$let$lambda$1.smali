.class public final Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanOptionViewModelInitializer$extractPlanOptionParsedData$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/InflateException;->b(Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alO<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lo/InflateException;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lo/InflateException;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanOptionViewModelInitializer$extractPlanOptionParsedData$$inlined$let$lambda$1;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanOptionViewModelInitializer$extractPlanOptionParsedData$$inlined$let$lambda$1;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanOptionViewModelInitializer$extractPlanOptionParsedData$$inlined$let$lambda$1;->a:Ljava/util/Map;

    iput-object p4, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanOptionViewModelInitializer$extractPlanOptionParsedData$$inlined$let$lambda$1;->d:Lo/InflateException;

    iput-object p5, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanOptionViewModelInitializer$extractPlanOptionParsedData$$inlined$let$lambda$1;->b:Ljava/util/ArrayList;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "offerId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "planPrice"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billingFrequency"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lo/HandlerActionQueue;

    .line 39
    iget-object v5, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanOptionViewModelInitializer$extractPlanOptionParsedData$$inlined$let$lambda$1;->e:Ljava/lang/String;

    .line 40
    iget-object v6, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanOptionViewModelInitializer$extractPlanOptionParsedData$$inlined$let$lambda$1;->c:Ljava/lang/String;

    .line 41
    iget-object v7, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanOptionViewModelInitializer$extractPlanOptionParsedData$$inlined$let$lambda$1;->a:Ljava/util/Map;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 35
    invoke-direct/range {v1 .. v7}, Lo/HandlerActionQueue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 43
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanOptionViewModelInitializer$extractPlanOptionParsedData$$inlined$let$lambda$1;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanOptionViewModelInitializer$extractPlanOptionParsedData$$inlined$let$lambda$1;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
