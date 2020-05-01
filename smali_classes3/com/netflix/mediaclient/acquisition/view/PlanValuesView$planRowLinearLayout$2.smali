.class final Lcom/netflix/mediaclient/acquisition/view/PlanValuesView$planRowLinearLayout$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView$planRowLinearLayout$2;->this$0:Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/ViewGroup;
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView$planRowLinearLayout$2;->this$0:Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->mw:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView$planRowLinearLayout$2;->invoke()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method
