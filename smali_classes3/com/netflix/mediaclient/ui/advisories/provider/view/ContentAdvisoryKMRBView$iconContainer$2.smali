.class public final Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryKMRBView$iconContainer$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CH;-><init>(Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/CH;


# direct methods
.method public constructor <init>(Lo/CH;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryKMRBView$iconContainer$2;->c:Lo/CH;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d()Landroid/view/ViewGroup;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryKMRBView$iconContainer$2;->c:Lo/CH;

    invoke-virtual {v0}, Lo/CH;->a()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lo/CH;->b:Lo/CH$StateListAnimator;

    invoke-virtual {v1}, Lo/CH$StateListAnimator;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryKMRBView$iconContainer$2;->d()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method
