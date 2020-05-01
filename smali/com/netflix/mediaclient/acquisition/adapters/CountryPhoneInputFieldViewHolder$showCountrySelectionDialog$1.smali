.class final Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder$showCountrySelectionDialog$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->showCountrySelectionDialog(Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;)V
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

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder$showCountrySelectionDialog$1;->this$0:Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder$showCountrySelectionDialog$1;->$viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder$showCountrySelectionDialog$1;->$viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;->getAvailableCountriesList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/acquisition/viewmodels/Country;

    .line 55
    iget-object p2, p0, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder$showCountrySelectionDialog$1;->$viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/viewmodels/Country;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;->setCountryValue(Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder$showCountrySelectionDialog$1;->this$0:Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;

    iget-object p2, p0, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder$showCountrySelectionDialog$1;->$viewModel:Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->access$initFlagImage(Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;)V

    return-void
.end method
