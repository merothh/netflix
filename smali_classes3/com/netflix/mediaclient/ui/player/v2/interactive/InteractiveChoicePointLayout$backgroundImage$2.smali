.class public final Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$backgroundImage$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
.field final synthetic a:Lo/Vn;


# direct methods
.method public constructor <init>(Lo/Vn;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$backgroundImage$2;->a:Lo/Vn;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Lo/GridView;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$backgroundImage$2;->a:Lo/Vn;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->cl:I

    invoke-virtual {v0, v1}, Lo/Vn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$backgroundImage$2;->c()Lo/GridView;

    move-result-object v0

    return-object v0
.end method
