.class final Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder$initClickListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->initClickListener(Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;

.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder$initClickListener$1;->this$0:Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder$initClickListener$1;->$viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 41
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder$initClickListener$1;->this$0:Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder$initClickListener$1;->$viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->access$showCountrySelectionDialog(Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;)V

    return-void
.end method
