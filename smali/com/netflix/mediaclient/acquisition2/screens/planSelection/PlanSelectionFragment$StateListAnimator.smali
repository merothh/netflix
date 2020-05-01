.class final Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$StateListAnimator;->b:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 237
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$StateListAnimator;->b:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object p1

    invoke-virtual {p1}, Lo/InputChannel;->t()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 238
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$StateListAnimator;->b:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->r()Lo/RasterizerSpan;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$StateListAnimator;->b:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lo/RasterizerSpan;->c(Landroidx/fragment/app/Fragment;Lo/InputChannel;)V

    goto :goto_0

    .line 240
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$StateListAnimator;->b:Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object p1

    invoke-virtual {p1}, Lo/InputChannel;->e()V

    :goto_0
    return-void
.end method
