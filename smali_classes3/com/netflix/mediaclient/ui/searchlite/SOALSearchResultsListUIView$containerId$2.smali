.class public final Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsListUIView$containerId$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aaA;-><init>(Landroid/view/View;Landroid/view/View$OnTouchListener;Lo/alN;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/aaA;


# direct methods
.method public constructor <init>(Lo/aaA;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsListUIView$containerId$2;->a:Lo/aaA;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d()I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsListUIView$containerId$2;->a:Lo/aaA;

    invoke-virtual {v0}, Lo/aaA;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    return v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsListUIView$containerId$2;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
