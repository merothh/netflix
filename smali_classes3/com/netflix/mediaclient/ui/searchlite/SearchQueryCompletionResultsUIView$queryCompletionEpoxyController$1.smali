.class public final synthetic Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionResultsUIView$queryCompletionEpoxyController$1;
.super Lkotlin/jvm/internal/FunctionReference;
.source ""

# interfaces
.implements Lo/alO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aaE;-><init>(Landroid/view/View;Landroid/view/View$OnTouchListener;Lo/alA;Lo/alA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lo/alO<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/aaE;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionResultsUIView$queryCompletionEpoxyController$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lo/aaE;

    .line 31
    invoke-static {v0, p1, p2, p3}, Lo/aaE;->a(Lo/aaE;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "onQueryCompletionItemClicked"

    return-object v0
.end method

.method public final getOwner()Lo/amH;
    .locals 1

    const-class v0, Lo/aaE;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "onQueryCompletionItemClicked(Ljava/lang/String;Ljava/lang/String;I)V"

    return-object v0
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionResultsUIView$queryCompletionEpoxyController$1;->a(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
