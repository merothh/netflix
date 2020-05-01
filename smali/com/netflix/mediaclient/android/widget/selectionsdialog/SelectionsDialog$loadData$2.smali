.class public final Lcom/netflix/mediaclient/android/widget/selectionsdialog/SelectionsDialog$loadData$2;
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
        "Ljava/lang/Throwable;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/Spinner;


# direct methods
.method public constructor <init>(Lo/Spinner;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/selectionsdialog/SelectionsDialog$loadData$2;->d:Lo/Spinner;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/selectionsdialog/SelectionsDialog$loadData$2;->d:Lo/Spinner;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qZ:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "select_recyclerview"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 83
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/selectionsdialog/SelectionsDialog$loadData$2;->d:Lo/Spinner;

    invoke-static {p1}, Lo/Spinner;->e(Lo/Spinner;)Lo/EditText;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/EditText;->b(Z)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/widget/selectionsdialog/SelectionsDialog$loadData$2;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
