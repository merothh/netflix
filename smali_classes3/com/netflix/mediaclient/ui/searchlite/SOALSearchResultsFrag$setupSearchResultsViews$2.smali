.class public final synthetic Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsFrag$setupSearchResultsViews$2;
.super Lkotlin/jvm/internal/FunctionReference;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aaz;->c(Landroid/view/View;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lo/alN<",
        "Ljava/lang/Integer;",
        "Lcom/netflix/android/imageloader/api/ImageDataSource;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/aaz;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final e(ILcom/netflix/android/imageloader/api/ImageDataSource;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsFrag$setupSearchResultsViews$2;->receiver:Ljava/lang/Object;

    check-cast v0, Lo/aaz;

    .line 48
    invoke-static {v0, p1, p2}, Lo/aaz;->a(Lo/aaz;ILcom/netflix/android/imageloader/api/ImageDataSource;)V

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "onSearchVideoVideoLoaded"

    return-object v0
.end method

.method public final getOwner()Lo/amH;
    .locals 1

    const-class v0, Lo/aaz;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "onSearchVideoVideoLoaded(ILcom/netflix/android/imageloader/api/ImageDataSource;)V"

    return-object v0
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lcom/netflix/android/imageloader/api/ImageDataSource;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsFrag$setupSearchResultsViews$2;->e(ILcom/netflix/android/imageloader/api/ImageDataSource;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
