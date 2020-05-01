.class public Lo/XG;
.super Lo/Xy;
.source ""

# interfaces
.implements Lo/Xz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/XG$StateListAnimator;
    }
.end annotation


# static fields
.field public static final c:Lo/XG$StateListAnimator;


# instance fields
.field private b:Lo/Vf;

.field private final d:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/XG$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/XG$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/XG;->c:Lo/XG$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Lo/Xy;-><init>(Landroid/view/ViewGroup;)V

    .line 72
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->ca:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lo/XG;->d:Landroid/widget/FrameLayout;

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final b(Lcom/netflix/model/leafs/originals/interactive/Moment;Landroid/view/ViewGroup;)Lo/Vf;
    .locals 3

    .line 38
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->subType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.ui.player.v2.interactive.InteractiveChoicePoint"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "cs_template"

    .line 54
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 55
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->ef:I

    .line 54
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lo/Vm;

    check-cast p1, Lo/Vf;

    goto/16 :goto_1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.ui.player.v2.interactive.InteractiveTemplateChoicePoint"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_1
    const-string v2, "cs_v2"

    .line 49
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 50
    sget v2, Lcom/netflix/mediaclient/ui/R$Dialog;->ej:I

    .line 49
    invoke-virtual {p1, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lo/Vk;

    check-cast p1, Lo/Vf;

    goto :goto_1

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_2
    const-string v2, "cs_bs"

    .line 39
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 40
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->ee:I

    .line 39
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Lo/Vj;

    check-cast p1, Lo/Vf;

    goto :goto_1

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.ui.player.v2.interactive.InteractiveBrookerMomentLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_3
    const-string v2, "cs_bs_phone"

    .line 44
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 45
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->eb:I

    .line 44
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Lo/XA;

    check-cast p1, Lo/Vf;

    goto :goto_1

    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.ui.player.v2.uiView.interactive.InteractiveBrookerPhoneMomentLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_5
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 60
    sget v2, Lcom/netflix/mediaclient/ui/R$Dialog;->ej:I

    .line 59
    invoke-virtual {p1, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, Lo/Vk;

    check-cast p1, Lo/Vf;

    .line 65
    :goto_1
    invoke-virtual {p0}, Lo/XG;->o()Z

    move-result p2

    invoke-virtual {p1, p2}, Lo/Vf;->setDebug(Z)V

    return-object p1

    .line 59
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79147111 -> :sswitch_3
        0x5a8ce80 -> :sswitch_2
        0x5a8d0ab -> :sswitch_1
        0x80eef69 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 83
    iget-object v0, p0, Lo/XG;->b:Lo/Vf;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/XG;->d:Landroid/widget/FrameLayout;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lo/Vf;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lo/XG;->k()Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public d(Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/Moment;J)V
    .locals 8
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

    const-string v0, "momentState"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "choices"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moment"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    sget-object v0, Lo/XG;->c:Lo/XG$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 141
    new-instance v0, Lo/UW$VoiceInteractor;

    .line 145
    iget-object v1, p0, Lo/XG;->b:Lo/Vf;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;->e:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lo/XG;->b:Lo/Vf;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lo/Vf;->x()F

    move-result v1

    move v5, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x0

    :goto_1
    move-object v1, v0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-wide v6, p4

    .line 141
    invoke-direct/range {v1 .. v7}, Lo/UW$VoiceInteractor;-><init>(Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;Lcom/netflix/model/leafs/originals/interactive/Moment;Ljava/util/List;FJ)V

    .line 140
    invoke-virtual {p0, v0}, Lo/XG;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Lcom/netflix/model/leafs/originals/interactive/AssetManifest;Lcom/netflix/model/leafs/originals/interactive/AssetManifest;)V
    .locals 3

    .line 153
    sget-object v0, Lo/XJ;->c:Lo/XJ;

    iget-object v1, p0, Lo/XG;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "uiView.context"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lo/XJ;->b(Lcom/netflix/model/leafs/originals/interactive/AssetManifest;Landroid/content/Context;)V

    .line 154
    sget-object p1, Lo/XJ;->c:Lo/XJ;

    iget-object v0, p0, Lo/XG;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lo/XJ;->b(Lcom/netflix/model/leafs/originals/interactive/AssetManifest;Landroid/content/Context;)V

    return-void
.end method

.method public d(ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;Ljava/lang/String;)V
    .locals 8

    const-string v0, "choiceId"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextSegmentId"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 172
    check-cast v0, Ljava/lang/String;

    .line 173
    iget-object v1, p0, Lo/XG;->b:Lo/Vf;

    .line 174
    instance-of v2, v1, Lo/Vd;

    if-eqz v2, :cond_0

    .line 175
    check-cast v1, Lo/Vd;

    invoke-virtual {v1}, Lo/Vd;->k()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz p6, :cond_1

    move-object v7, p6

    goto :goto_0

    :cond_1
    move-object v7, v0

    :goto_0
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 178
    invoke-super/range {v1 .. v7}, Lo/Xy;->d(ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 79
    iget-object v0, p0, Lo/XG;->b:Lo/Vf;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/XG;->d:Landroid/widget/FrameLayout;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lo/Vf;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public e(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/model/leafs/originals/interactive/Moment;Lcom/netflix/model/leafs/originals/interactive/BaseLayout;Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/UiDefinition;I)V
    .locals 10
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

    move-object v0, p0

    move-object v5, p2

    const-string v1, "moment"

    invoke-static {p2, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "layoutInfo"

    move-object v6, p3

    invoke-static {p3, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "choices"

    move-object v7, p4

    invoke-static {p4, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v1, v0, Lo/XG;->d:Landroid/widget/FrameLayout;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, p2, v1}, Lo/XG;->b(Lcom/netflix/model/leafs/originals/interactive/Moment;Landroid/view/ViewGroup;)Lo/Vf;

    move-result-object v1

    .line 99
    iput-object v1, v0, Lo/XG;->b:Lo/Vf;

    .line 100
    iget-object v2, v0, Lo/XG;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 101
    iget-object v2, v0, Lo/XG;->d:Landroid/widget/FrameLayout;

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 102
    iget-object v2, v0, Lo/XG;->d:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 104
    sget-object v2, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    iget-object v3, v0, Lo/XG;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "uiView.context"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object v3

    .line 105
    iget-object v2, v0, Lo/XG;->b:Lo/Vf;

    .line 106
    instance-of v4, v2, Lo/Vd;

    if-eqz v4, :cond_1

    if-eqz v1, :cond_0

    .line 107
    check-cast v1, Lo/Vd;

    .line 110
    move-object v4, v0

    check-cast v4, Lo/Xz;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move/from16 v8, p6

    .line 107
    invoke-virtual/range {v1 .. v8}, Lo/Vd;->a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lo/ErrorCodes;Lo/Xz;Lcom/netflix/model/leafs/originals/interactive/Moment;Lcom/netflix/model/leafs/originals/interactive/BaseLayout;Ljava/util/List;I)V

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.netflix.mediaclient.ui.player.v2.interactive.BaseInteractiveChoicePointScene"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_1
    instance-of v2, v2, Lo/Vm;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    .line 117
    check-cast v1, Lo/Vm;

    .line 120
    move-object v4, v0

    check-cast v4, Lo/Xz;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move/from16 v9, p6

    .line 117
    invoke-virtual/range {v1 .. v9}, Lo/Vm;->e(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lo/ErrorCodes;Lo/Xz;Lcom/netflix/model/leafs/originals/interactive/Moment;Lcom/netflix/model/leafs/originals/interactive/BaseLayout;Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/UiDefinition;I)V

    :goto_0
    return-void

    :cond_2
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.netflix.mediaclient.ui.player.v2.interactive.InteractiveTemplateChoicePoint"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "invalid scene for moment."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public f()V
    .locals 2

    .line 87
    iget-object v0, p0, Lo/XG;->d:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public h()V
    .locals 1

    .line 188
    iget-object v0, p0, Lo/XG;->b:Lo/Vf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Vf;->f()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    .line 158
    invoke-super {p0}, Lo/Xy;->i()V

    .line 159
    iget-object v0, p0, Lo/XG;->d:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lo/XG;->b:Lo/Vf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Vf;->g()V

    :cond_0
    const/4 v0, 0x0

    .line 161
    check-cast v0, Lo/Vf;

    iput-object v0, p0, Lo/XG;->b:Lo/Vf;

    return-void
.end method

.method public j()V
    .locals 1

    .line 192
    iget-object v0, p0, Lo/XG;->b:Lo/Vf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Vf;->h()V

    :cond_0
    return-void
.end method

.method public final k()Landroid/widget/FrameLayout;
    .locals 1

    .line 71
    iget-object v0, p0, Lo/XG;->d:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public l()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lo/XG;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
