.class public final Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryNICAMView$ratingIconView$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CF;-><init>(Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/GridView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/CF;


# direct methods
.method public constructor <init>(Lo/CF;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryNICAMView$ratingIconView$2;->a:Lo/CF;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lo/GridView;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryNICAMView$ratingIconView$2;->a:Lo/CF;

    invoke-virtual {v0}, Lo/CF;->a()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lo/CF;->b:Lo/CF$Application;

    invoke-virtual {v1}, Lo/CF$Application;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryNICAMView$ratingIconView$2;->b()Lo/GridView;

    move-result-object v0

    return-object v0
.end method
