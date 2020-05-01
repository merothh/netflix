.class final Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder$bind$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;->bind(Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;

.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder$bind$3;->this$0:Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder$bind$3;->$viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 45
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder$bind$3;->this$0:Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder$bind$3;->$viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;->getShowCvvTrustMessage()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;->access$showCvvTakeoverDialog(Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;Z)V

    return-void
.end method
