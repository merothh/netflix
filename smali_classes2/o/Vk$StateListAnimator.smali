.class public final Lo/Vk$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vk;->b(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

.field public final synthetic b:Lcom/netflix/model/leafs/originals/interactive/Choice;

.field final synthetic c:I

.field public final synthetic d:Lo/Vk;

.field final synthetic e:F


# direct methods
.method constructor <init>(Lcom/netflix/model/leafs/originals/interactive/Choice;Lo/Vk;ILcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;F)V
    .locals 0

    iput-object p1, p0, Lo/Vk$StateListAnimator;->b:Lcom/netflix/model/leafs/originals/interactive/Choice;

    iput-object p2, p0, Lo/Vk$StateListAnimator;->d:Lo/Vk;

    iput p3, p0, Lo/Vk$StateListAnimator;->c:I

    iput-object p4, p0, Lo/Vk$StateListAnimator;->a:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

    iput p5, p0, Lo/Vk$StateListAnimator;->e:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 407
    iget-object v0, p0, Lo/Vk$StateListAnimator;->b:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Choice;->segmentId()Ljava/lang/String;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lo/Vk$StateListAnimator;->b:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->startTimeMs()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 409
    new-instance v2, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupChoices$$inlined$let$lambda$1$1;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupChoices$$inlined$let$lambda$1$1;-><init>(Lo/Vk$StateListAnimator;Landroid/view/View;)V

    check-cast v2, Lo/alN;

    .line 406
    invoke-static {v0, v1, v2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    return-void
.end method
