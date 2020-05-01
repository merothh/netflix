.class final Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder$showDialog$alertDialog$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder;->showDialog(Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $dateList:[Ljava/lang/String;

.field final synthetic $viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;

.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder;Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder$showDialog$alertDialog$1;->this$0:Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder;

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder$showDialog$alertDialog$1;->$viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder$showDialog$alertDialog$1;->$dateList:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder$showDialog$alertDialog$1;->$viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder$showDialog$alertDialog$1;->$dateList:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;->setUserFacingString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder$showDialog$alertDialog$1;->$viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;->getBirthDateInputField()Lo/BidiFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder$showDialog$alertDialog$1;->$dateList:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-static {p2}, Lo/anv;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Lo/BidiFormatter;->b(Ljava/lang/Object;)V

    .line 47
    iget-object p2, p0, Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder$showDialog$alertDialog$1;->this$0:Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder$showDialog$alertDialog$1;->$viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;->getBirthDateInputField()Lo/BidiFormatter;

    move-result-object v0

    invoke-interface {v0}, Lo/BidiFormatter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p2, p0, Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder$showDialog$alertDialog$1;->$viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;->setShowValidationState(Z)V

    .line 49
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
