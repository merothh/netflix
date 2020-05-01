.class public final Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;
.super Lo/RecognitionService;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder$CountryListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RecognitionService<",
        "Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lo/amT;


# instance fields
.field private final countryPicker$delegate:Lo/ams;

.field private final dropDownArrow$delegate:Lo/ams;

.field private final flagImage$delegate:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;

    const/4 v1, 0x3

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "countryPicker"

    const-string v5, "getCountryPicker()Landroid/widget/LinearLayout;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "flagImage"

    const-string v5, "getFlagImage()Lcom/netflix/mediaclient/android/widget/NetflixImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "dropDownArrow"

    const-string v4, "getDropDownArrow()Landroid/view/View;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->$$delegatedProperties:[Lo/amT;

    return-void
.end method

.method public constructor <init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V
    .locals 1

    const-string v0, "signupLogger"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lo/RecognitionService;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V

    .line 24
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->cU:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->countryPicker$delegate:Lo/ams;

    .line 25
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->gU:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->flagImage$delegate:Lo/ams;

    .line 26
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->fp:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->dropDownArrow$delegate:Lo/ams;

    return-void
.end method

.method public static final synthetic access$initFlagImage(Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->initFlagImage(Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;)V

    return-void
.end method

.method public static final synthetic access$showCountrySelectionDialog(Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->showCountrySelectionDialog(Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;)V

    return-void
.end method

.method private final initClickListener(Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;)V
    .locals 4

    .line 40
    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;->isDropDownAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->getCountryPicker()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder$initClickListener$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder$initClickListener$1;-><init>(Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->getDropDownArrow()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->getDropDownArrow()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 45
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "itemView.context"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->ba:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 46
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingEnd()I

    move-result v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    :goto_0
    return-void
.end method

.method private final initCountryPicker(Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->initFlagImage(Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->initClickListener(Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;)V

    return-void
.end method

.method private final initFlagImage(Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;)V
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->getFlagImage()Lo/GridView;

    move-result-object v0

    new-instance v1, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;->getSelectedCountryFlagUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->a(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/GridView;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    return-void
.end method

.method private final showCountrySelectionDialog(Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;)V
    .locals 4

    .line 51
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 69
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 52
    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;->getAvailableCountriesList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder$CountryListAdapter;

    invoke-direct {v3, v1, v2}, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder$CountryListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    check-cast v3, Landroid/widget/ListAdapter;

    .line 53
    new-instance v1, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder$showCountrySelectionDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder$showCountrySelectionDialog$1;-><init>(Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    .line 52
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public bind(Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;)V
    .locals 1

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    move-object v0, p1

    check-cast v0, Lo/AndroidCharacter;

    invoke-super {p0, v0}, Lo/RecognitionService;->bind(Lo/AndroidCharacter;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->initCountryPicker(Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;)V

    return-void
.end method

.method public bridge synthetic bind(Lo/AndroidCharacter;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->bind(Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;)V

    return-void
.end method

.method public final getCountryPicker()Landroid/widget/LinearLayout;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->countryPicker$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getDropDownArrow()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->dropDownArrow$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getFlagImage()Lo/GridView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->flagImage$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method
