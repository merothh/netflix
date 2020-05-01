.class public final Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryTwoLineView$secondaryMessageView$2;
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
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/CE;


# direct methods
.method public constructor <init>(Lo/CE;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryTwoLineView$secondaryMessageView$2;->b:Lo/CE;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Landroid/widget/TextView;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryTwoLineView$secondaryMessageView$2;->b:Lo/CE;

    invoke-virtual {v0}, Lo/CE;->a()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lo/CE;->a:Lo/CE$Application;

    invoke-virtual {v1}, Lo/CE$Application;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryTwoLineView$secondaryMessageView$2;->c()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method
