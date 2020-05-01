.class public Lo/XD;
.super Lo/Xy;
.source ""

# interfaces
.implements Lo/Xu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/XD$StateListAnimator;
    }
.end annotation


# static fields
.field public static final e:Lo/XD$StateListAnimator;


# instance fields
.field private final c:Lo/Vo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/XD$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/XD$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/XD;->e:Lo/XD$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Lo/Xy;-><init>(Landroid/view/ViewGroup;)V

    .line 26
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->eh:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lo/Vo;

    const/16 v1, 0x8

    .line 27
    invoke-virtual {v0, v1}, Lo/Vo;->setVisibility(I)V

    .line 28
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    iput-object v0, p0, Lo/XD;->c:Lo/Vo;

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.ui.player.v2.interactive.InteractiveTemplateNotificationView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/model/leafs/originals/interactive/Moment;Lcom/netflix/model/leafs/originals/interactive/BaseLayout;Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/UiDefinition;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;",
            "Lcom/netflix/model/leafs/originals/interactive/Moment;",
            "Lcom/netflix/model/leafs/originals/interactive/BaseLayout;",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;",
            "Lcom/netflix/model/leafs/originals/interactive/UiDefinition;",
            "I)V"
        }
    .end annotation

    const-string p6, "moment"

    invoke-static {p2, p6}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "layoutInfo"

    invoke-static {p3, p6}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "choices"

    invoke-static {p4, p6}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object p4, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    invoke-virtual {p0}, Lo/XD;->k()Lo/Vo;

    move-result-object p6

    invoke-virtual {p6}, Lo/Vo;->getContext()Landroid/content/Context;

    move-result-object p6

    const-string v0, "uiView.context"

    invoke-static {p6, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4, p6}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object v3

    .line 52
    invoke-virtual {p0}, Lo/XD;->k()Lo/Vo;

    move-result-object p4

    const/4 p6, 0x0

    invoke-virtual {p4, p6}, Lo/Vo;->setVisibility(I)V

    .line 53
    invoke-virtual {p0}, Lo/XD;->k()Lo/Vo;

    move-result-object v1

    .line 56
    move-object v4, p0

    check-cast v4, Lo/Xt;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    .line 53
    invoke-virtual/range {v1 .. v7}, Lo/Vo;->a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lo/ErrorCodes;Lo/Xt;Lcom/netflix/model/leafs/originals/interactive/Moment;Lcom/netflix/model/leafs/originals/interactive/BaseLayout;Lcom/netflix/model/leafs/originals/interactive/UiDefinition;)V

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lo/XD;->k()Lo/Vo;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public d(Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/Moment;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;",
            "Lcom/netflix/model/leafs/originals/interactive/Moment;",
            "J)V"
        }
    .end annotation

    const-string p4, "momentState"

    invoke-static {p1, p4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "choices"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "moment"

    invoke-static {p3, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 36
    invoke-virtual {p0}, Lo/XD;->k()Lo/Vo;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/Vo;->setVisibility(I)V

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 1

    .line 64
    invoke-super {p0}, Lo/Xy;->i()V

    .line 65
    invoke-virtual {p0}, Lo/XD;->k()Lo/Vo;

    move-result-object v0

    invoke-virtual {v0}, Lo/Vo;->g()V

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()Lo/Vo;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/XD;->c:Lo/Vo;

    return-object v0
.end method

.method public l()Z
    .locals 1

    .line 32
    invoke-virtual {p0}, Lo/XD;->k()Lo/Vo;

    move-result-object v0

    invoke-virtual {v0}, Lo/Vo;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t()V
    .locals 1

    .line 40
    sget-object v0, Lo/UW$Dialog;->d:Lo/UW$Dialog;

    invoke-virtual {p0, v0}, Lo/XD;->e(Ljava/lang/Object;)V

    return-void
.end method
