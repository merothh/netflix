.class public final Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$debugOverlay$2;
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
        "Lo/ImageSwitcher;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/Vn;


# direct methods
.method public constructor <init>(Lo/Vn;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$debugOverlay$2;->b:Lo/Vn;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e()Lo/ImageSwitcher;
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$debugOverlay$2;->b:Lo/Vn;

    .line 17
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->cs:I

    .line 16
    invoke-virtual {v0, v1}, Lo/Vn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 18
    check-cast v0, Lo/ImageSwitcher;

    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePointLayout$debugOverlay$2;->e()Lo/ImageSwitcher;

    move-result-object v0

    return-object v0
.end method
