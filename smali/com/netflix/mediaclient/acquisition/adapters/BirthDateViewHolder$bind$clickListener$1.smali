.class final Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder$bind$clickListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder;->bind(Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;

.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder;Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder$bind$clickListener$1;->this$0:Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder;

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder$bind$clickListener$1;->$viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 23
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder$bind$clickListener$1;->this$0:Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder;

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder$bind$clickListener$1;->$viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder;->access$showDialog(Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder;Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;)V

    .line 24
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder$bind$clickListener$1;->$viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;->setShowValidationState(Z)V

    return-void
.end method
