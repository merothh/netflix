.class public final Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder;
.super Lo/RecognitionService;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RecognitionService<",
        "Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;",
        ">;"
    }
.end annotation


# direct methods
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

    return-void
.end method

.method public static final synthetic access$showDialog(Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder;Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder;->showDialog(Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;)V

    return-void
.end method

.method private final getMonthList(Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;)[Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Lo/amD;

    const/4 v1, 0x1

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lo/amD;-><init>(II)V

    check-cast v0, Ljava/lang/Iterable;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 68
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lo/akG;

    invoke-virtual {v2}, Lo/akG;->c()I

    move-result v2

    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;->getMonthString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_0
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 72
    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final showDialog(Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;)V
    .locals 5

    .line 35
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder;->getMonthList(Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;)[Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;->getBirthMonthInputField()Lo/BidiFormatter;

    move-result-object v1

    invoke-interface {v1}, Lo/BidiFormatter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 39
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder;->itemView:Landroid/view/View;

    const-string v4, "itemView"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 40
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->pN:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 42
    check-cast v0, [Ljava/lang/CharSequence;

    .line 44
    new-instance v3, Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder$showDialog$alertDialog$1;

    invoke-direct {v3, p0, p1}, Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder$showDialog$alertDialog$1;-><init>(Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder;Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    .line 41
    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const-string v0, "alertDialog"

    .line 54
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const-string v1, "alertDialog.listView"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$Application;->L:I

    invoke-static {v3, v4}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 55
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 56
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public bind(Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;)V
    .locals 1

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    move-object v0, p1

    check-cast v0, Lo/AndroidCharacter;

    invoke-super {p0, v0}, Lo/RecognitionService;->bind(Lo/AndroidCharacter;)V

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder$bind$clickListener$1;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder$bind$clickListener$1;-><init>(Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder;Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 30
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic bind(Lo/AndroidCharacter;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder;->bind(Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;)V

    return-void
.end method
