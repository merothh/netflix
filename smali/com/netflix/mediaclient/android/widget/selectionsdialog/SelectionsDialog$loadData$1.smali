.class public final Lcom/netflix/mediaclient/android/widget/selectionsdialog/SelectionsDialog$loadData$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Spinner;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/Object;",
        ">;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/Spinner;


# direct methods
.method public constructor <init>(Lo/Spinner;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/selectionsdialog/SelectionsDialog$loadData$1;->e:Lo/Spinner;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/selectionsdialog/SelectionsDialog$loadData$1;->e:Lo/Spinner;

    invoke-virtual {p1}, Lo/Spinner;->d()Lo/SimpleAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/SimpleAdapter;->b()I

    move-result p1

    const/4 v0, 0x0

    const-string v1, "select_recyclerview"

    if-lez p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/selectionsdialog/SelectionsDialog$loadData$1;->e:Lo/Spinner;

    invoke-static {p1}, Lo/Spinner;->e(Lo/Spinner;)Lo/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/EditText;->a(Z)V

    .line 74
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/selectionsdialog/SelectionsDialog$loadData$1;->e:Lo/Spinner;

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->qZ:I

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 75
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/selectionsdialog/SelectionsDialog$loadData$1;->e:Lo/Spinner;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qZ:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Activity;->notifyDataSetChanged()V

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/selectionsdialog/SelectionsDialog$loadData$1;->e:Lo/Spinner;

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->qZ:I

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 78
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/selectionsdialog/SelectionsDialog$loadData$1;->e:Lo/Spinner;

    invoke-static {p1}, Lo/Spinner;->e(Lo/Spinner;)Lo/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/EditText;->b(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/widget/selectionsdialog/SelectionsDialog$loadData$1;->d(Ljava/util/List;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
