.class public final Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryTwoLineView$view$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CE;-><init>(Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/CE;


# direct methods
.method public constructor <init>(Lo/CE;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryTwoLineView$view$2;->b:Lo/CE;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Landroid/view/View;
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryTwoLineView$view$2;->b:Lo/CE;

    invoke-static {v0}, Lo/CE;->b(Lo/CE;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lo/Ct$StateListAnimator;->j:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryTwoLineView$view$2;->c()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
