.class public final Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupChoices$$inlined$let$lambda$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vk$StateListAnimator;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/Vk$StateListAnimator;

.field final synthetic e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lo/Vk$StateListAnimator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupChoices$$inlined$let$lambda$1$1;->d:Lo/Vk$StateListAnimator;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupChoices$$inlined$let$lambda$1$1;->e:Landroid/view/View;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;I)Lo/akj;
    .locals 8

    const-string v0, "nextSegmentId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupChoices$$inlined$let$lambda$1$1;->e:Landroid/view/View;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 411
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupChoices$$inlined$let$lambda$1$1;->d:Lo/Vk$StateListAnimator;

    iget-object v0, v0, Lo/Vk$StateListAnimator;->d:Lo/Vk;

    invoke-virtual {v0}, Lo/Vk;->s()Lo/Xt;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 413
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupChoices$$inlined$let$lambda$1$1;->d:Lo/Vk$StateListAnimator;

    iget-object v0, v0, Lo/Vk$StateListAnimator;->d:Lo/Vk;

    invoke-virtual {v0}, Lo/Vk;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v3

    .line 414
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupChoices$$inlined$let$lambda$1$1;->d:Lo/Vk$StateListAnimator;

    iget-object v0, v0, Lo/Vk$StateListAnimator;->b:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Choice;->id()Ljava/lang/String;

    move-result-object v4

    const-string v0, "choiceDetail.id()"

    invoke-static {v4, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v5, p1

    move v7, p2

    .line 411
    invoke-interface/range {v1 .. v7}, Lo/Xt;->a(ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;I)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupChoices$$inlined$let$lambda$1$1;->b(Ljava/lang/String;I)Lo/akj;

    move-result-object p1

    return-object p1
.end method
