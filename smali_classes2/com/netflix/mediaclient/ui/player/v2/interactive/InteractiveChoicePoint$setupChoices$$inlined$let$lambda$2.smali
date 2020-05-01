.class public final Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupChoices$$inlined$let$lambda$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vk;->b(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Vn;

.field final synthetic b:Lo/Vk;

.field final synthetic c:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

.field final synthetic d:I

.field final synthetic e:Lcom/netflix/model/leafs/originals/interactive/Choice;

.field final synthetic f:F


# direct methods
.method public constructor <init>(Lo/Vn;Lcom/netflix/model/leafs/originals/interactive/Choice;Lo/Vk;ILcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;F)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupChoices$$inlined$let$lambda$2;->a:Lo/Vn;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupChoices$$inlined$let$lambda$2;->e:Lcom/netflix/model/leafs/originals/interactive/Choice;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupChoices$$inlined$let$lambda$2;->b:Lo/Vk;

    iput p4, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupChoices$$inlined$let$lambda$2;->d:I

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupChoices$$inlined$let$lambda$2;->c:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

    iput p6, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupChoices$$inlined$let$lambda$2;->f:F

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(II)V
    .locals 7

    .line 440
    sget-object v0, Lo/XJ;->c:Lo/XJ;

    .line 441
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupChoices$$inlined$let$lambda$2;->a:Lo/Vn;

    check-cast v1, Landroid/view/View;

    .line 446
    iget v6, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupChoices$$inlined$let$lambda$2;->f:F

    const/4 v2, -0x2

    const/4 v3, -0x2

    move v4, p1

    move v5, p2

    .line 440
    invoke-virtual/range {v0 .. v6}, Lo/XJ;->e(Landroid/view/View;IIIIF)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupChoices$$inlined$let$lambda$2;->d(II)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
