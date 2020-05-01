.class public final Lcom/netflix/mediaclient/acquisition/adapters/MonthYearInputFieldViewHolder;
.super Lo/RecognitionService;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RecognitionService<",
        "Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lo/amT;


# instance fields
.field private final monthYearEditText$delegate:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/netflix/mediaclient/acquisition/adapters/MonthYearInputFieldViewHolder;

    invoke-static {v2}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v2

    const-string v3, "monthYearEditText"

    const-string v4, "getMonthYearEditText()Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v1

    check-cast v1, Lo/amT;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/acquisition/adapters/MonthYearInputFieldViewHolder;->$$delegatedProperties:[Lo/amT;

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

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lo/RecognitionService;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V

    .line 19
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->ft:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/MonthYearInputFieldViewHolder;->monthYearEditText$delegate:Lo/ams;

    return-void
.end method

.method private final getMonthYearEditText()Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/adapters/MonthYearInputFieldViewHolder;->monthYearEditText$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/adapters/MonthYearInputFieldViewHolder;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;

    return-object v0
.end method


# virtual methods
.method public bind(Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;)V
    .locals 2

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    move-object v0, p1

    check-cast v0, Lo/AndroidCharacter;

    invoke-super {p0, v0}, Lo/RecognitionService;->bind(Lo/AndroidCharacter;)V

    .line 23
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/adapters/MonthYearInputFieldViewHolder;->getMonthYearEditText()Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition/adapters/MonthYearInputFieldViewHolder$bind$1;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/acquisition/adapters/MonthYearInputFieldViewHolder$bind$1;-><init>(Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;)V

    check-cast v1, Lcom/netflix/mediaclient/acquisition/view/MonthYearUpdateListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->setMonthYearUpdateListener(Lcom/netflix/mediaclient/acquisition/view/MonthYearUpdateListener;)V

    return-void
.end method

.method public bridge synthetic bind(Lo/AndroidCharacter;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/adapters/MonthYearInputFieldViewHolder;->bind(Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;)V

    return-void
.end method
