.class final Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment$StateListAnimator;->a:Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment$StateListAnimator;->a:Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment;->n()Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment$TaskDescription;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment$TaskDescription;->onPlanContextConfirm()V

    return-void
.end method
