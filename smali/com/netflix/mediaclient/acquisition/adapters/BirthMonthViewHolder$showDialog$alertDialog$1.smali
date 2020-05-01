.class final Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder$showDialog$alertDialog$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder;->showDialog(Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;

.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder;Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder$showDialog$alertDialog$1;->this$0:Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder;

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder$showDialog$alertDialog$1;->$viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p2, v0

    .line 46
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder$showDialog$alertDialog$1;->$viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;->getBirthMonthInputField()Lo/BidiFormatter;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Lo/BidiFormatter;->b(Ljava/lang/Object;)V

    .line 47
    iget-object p2, p0, Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder$showDialog$alertDialog$1;->this$0:Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder$showDialog$alertDialog$1;->$viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;->getUserFacingString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p2, p0, Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder$showDialog$alertDialog$1;->$viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;

    invoke-virtual {p2, v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;->setShowValidationState(Z)V

    .line 49
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
