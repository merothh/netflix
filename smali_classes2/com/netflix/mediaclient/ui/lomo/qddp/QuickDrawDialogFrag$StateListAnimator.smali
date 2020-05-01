.class public final Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/model/leafs/advisory/RatingDetails;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->e(Lo/agg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

.field final synthetic e:Lo/agg;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;Lo/agg;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$StateListAnimator;->b:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$StateListAnimator;->e:Lo/agg;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdvisoryBoard()Lcom/netflix/model/leafs/advisory/AdvisoryBoard;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$StateListAnimator;->e:Lo/agg;

    invoke-interface {v0}, Lo/agg;->E()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-static {v0}, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->getAdvisoryBoardById(Ljava/lang/String;)Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    move-result-object v0

    return-object v0
.end method

.method public getRatingLevel()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$StateListAnimator;->e:Lo/agg;

    invoke-interface {v0}, Lo/agg;->G()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRatingValue()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$StateListAnimator;->e:Lo/agg;

    invoke-interface {v0}, Lo/agg;->F()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
