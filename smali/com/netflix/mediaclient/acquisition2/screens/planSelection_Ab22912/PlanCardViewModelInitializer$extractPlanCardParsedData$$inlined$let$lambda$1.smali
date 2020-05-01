.class public final Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardViewModelInitializer$extractPlanCardParsedData$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RemoteAnimationAdapter;->b(Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/Long;

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lo/RemoteAnimationAdapter;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/util/ArrayList;

.field final synthetic i:Z

.field final synthetic j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Long;ZZLjava/lang/String;Lo/RemoteAnimationAdapter;ZLjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardViewModelInitializer$extractPlanCardParsedData$$inlined$let$lambda$1;->e:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardViewModelInitializer$extractPlanCardParsedData$$inlined$let$lambda$1;->d:Z

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardViewModelInitializer$extractPlanCardParsedData$$inlined$let$lambda$1;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardViewModelInitializer$extractPlanCardParsedData$$inlined$let$lambda$1;->c:Ljava/lang/Long;

    iput-boolean p5, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardViewModelInitializer$extractPlanCardParsedData$$inlined$let$lambda$1;->b:Z

    iput-boolean p6, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardViewModelInitializer$extractPlanCardParsedData$$inlined$let$lambda$1;->j:Z

    iput-object p7, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardViewModelInitializer$extractPlanCardParsedData$$inlined$let$lambda$1;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardViewModelInitializer$extractPlanCardParsedData$$inlined$let$lambda$1;->f:Lo/RemoteAnimationAdapter;

    iput-boolean p9, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardViewModelInitializer$extractPlanCardParsedData$$inlined$let$lambda$1;->i:Z

    iput-object p10, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardViewModelInitializer$extractPlanCardParsedData$$inlined$let$lambda$1;->h:Ljava/util/ArrayList;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)Z
    .locals 11

    const-string v0, "planPrice"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lo/RemotableViewMethod;

    .line 51
    iget-object v3, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardViewModelInitializer$extractPlanCardParsedData$$inlined$let$lambda$1;->e:Ljava/lang/String;

    .line 53
    iget-boolean v5, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardViewModelInitializer$extractPlanCardParsedData$$inlined$let$lambda$1;->d:Z

    .line 54
    iget-object v6, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardViewModelInitializer$extractPlanCardParsedData$$inlined$let$lambda$1;->a:Ljava/lang/String;

    .line 55
    iget-object v7, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardViewModelInitializer$extractPlanCardParsedData$$inlined$let$lambda$1;->c:Ljava/lang/Long;

    .line 56
    iget-boolean v8, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardViewModelInitializer$extractPlanCardParsedData$$inlined$let$lambda$1;->b:Z

    .line 57
    iget-boolean v9, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardViewModelInitializer$extractPlanCardParsedData$$inlined$let$lambda$1;->j:Z

    .line 58
    iget-object v10, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardViewModelInitializer$extractPlanCardParsedData$$inlined$let$lambda$1;->g:Ljava/lang/String;

    move-object v1, v0

    move v2, p1

    move-object v4, p2

    .line 49
    invoke-direct/range {v1 .. v10}, Lo/RemotableViewMethod;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Long;ZZLjava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardViewModelInitializer$extractPlanCardParsedData$$inlined$let$lambda$1;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection_Ab22912/PlanCardViewModelInitializer$extractPlanCardParsedData$$inlined$let$lambda$1;->a(ZLjava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
