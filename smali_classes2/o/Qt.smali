.class public abstract Lo/Qt;
.super Lo/QA;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Qt$StateListAnimator;,
        Lo/Qt$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/QA<",
        "Lo/Qt$StateListAnimator;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lo/Qt$TaskDescription;

# The value of this static final field might be set in the static constructor
.field private static final p:F = 6.0f


# instance fields
.field public a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

.field public b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

.field public c:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

.field private g:J

.field private h:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field private j:Ljava/lang/Integer;

.field private k:I

.field private l:Lo/Tf;

.field private m:Z

.field private n:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field private o:I

.field private r:Landroid/view/View$OnLongClickListener;

.field private s:Landroid/view/View$OnClickListener;

.field private t:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Qt$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Qt$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/Qt;->f:Lo/Qt$TaskDescription;

    const/high16 v0, 0x40c00000    # 6.0f

    .line 46
    sput v0, Lo/Qt;->p:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Lo/QA;-><init>()V

    .line 108
    new-instance v0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    sget-object v1, Lcom/netflix/cl/model/AppView;->cachedVideos:Lcom/netflix/cl/model/AppView;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;-><init>(Lcom/netflix/cl/model/AppView;)V

    iput-object v0, p0, Lo/Qt;->n:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-void
.end method

.method public static final synthetic u()F
    .locals 1

    .line 44
    sget v0, Lo/Qt;->p:F

    return v0
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    .line 103
    iput-wide p1, p0, Lo/Qt;->g:J

    return-void
.end method

.method protected b()I
    .locals 1

    .line 116
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->aE:I

    return v0
.end method

.method public final b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lo/Qt;->h:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lo/Qt;->m:Z

    return-void
.end method

.method public final c(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lo/Qt;->s:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 44
    check-cast p1, Lo/Qt$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/Qt;->e(Lo/Qt$StateListAnimator;)V

    return-void
.end method

.method public final d(I)V
    .locals 0

    .line 110
    iput p1, p0, Lo/Qt;->k:I

    return-void
.end method

.method public final d(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lo/Qt;->r:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public final d(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lo/Qt;->n:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-void
.end method

.method public final d(Ljava/lang/Integer;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lo/Qt;->j:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p1, Lo/Qt$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/Qt;->e(Lo/Qt$StateListAnimator;)V

    return-void
.end method

.method public final d(Lo/Tf;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lo/Qt;->l:Lo/Tf;

    return-void
.end method

.method public final e(I)V
    .locals 0

    .line 106
    iput p1, p0, Lo/Qt;->o:I

    return-void
.end method

.method public final e(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lo/Qt;->t:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public e(Lo/Qt$StateListAnimator;)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "holder"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v1, v0, Lo/Qt;->l:Lo/Tf;

    .line 120
    iget-object v11, v0, Lo/Qt;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    if-nez v11, :cond_0

    const-string v3, "watchState"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    .line 121
    :cond_0
    iget-object v12, v0, Lo/Qt;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-nez v12, :cond_1

    const-string v3, "downloadState"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_21

    if-eqz v11, :cond_21

    if-nez v12, :cond_2

    goto/16 :goto_f

    .line 128
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->e()Lo/ImageSwitcher;

    move-result-object v3

    invoke-virtual {v1}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v6, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eq v4, v5, :cond_3

    invoke-virtual {v1}, Lo/Tf;->getTitle()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->e()Lo/ImageSwitcher;

    move-result-object v4

    invoke-virtual {v4}, Lo/ImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 129
    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->gE:I

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 130
    invoke-virtual {v1}, Lo/Tf;->ag()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v14

    .line 131
    invoke-virtual {v1}, Lo/Tf;->V()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    .line 132
    invoke-virtual {v1}, Lo/Tf;->N()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    .line 128
    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->c()Lo/ImageSwitcher;

    move-result-object v3

    .line 136
    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->iu:I

    new-array v5, v6, [Ljava/lang/Object;

    .line 137
    invoke-virtual {v1}, Lo/Tf;->bb()Lo/AK;

    move-result-object v6

    const-string v15, "video.playable"

    invoke-static {v6, v15}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lo/AK;->S()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->c()Lo/ImageSwitcher;

    move-result-object v7

    invoke-virtual {v7}, Lo/ImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lo/aeD;->e(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v14

    .line 139
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->c()Lo/ImageSwitcher;

    move-result-object v6

    invoke-virtual {v6}, Lo/ImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v1}, Lo/Tf;->w()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lo/aeE;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 138
    invoke-static {v6}, Lo/afw;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v13

    .line 135
    invoke-static {v4, v5}, Lo/aev;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v3, v0, Lo/Qt;->j:Ljava/lang/Integer;

    if-eqz v3, :cond_4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 143
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->a()Lo/Lw;

    move-result-object v4

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Lo/Lw;->c(F)V

    .line 144
    sget-object v3, Lo/akj;->a:Lo/akj;

    .line 145
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->j()Landroid/view/View;

    move-result-object v3

    iget-object v4, v0, Lo/Qt;->j:Ljava/lang/Integer;

    const/16 v10, 0x8

    if-eqz v4, :cond_7

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/16 v4, 0x8

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 147
    sget-object v3, Lo/aeN;->e:Lo/aeN;

    .line 148
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->b()Lo/ImageSwitcher;

    move-result-object v4

    invoke-virtual {v4}, Lo/ImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "holder.errorView.context"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-wide v7, v0, Lo/Qt;->g:J

    .line 152
    iget-object v9, v0, Lo/Qt;->h:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 153
    iget v6, v0, Lo/Qt;->o:I

    move-object v5, v12

    move/from16 v16, v6

    move-object v6, v11

    const/16 v13, 0x8

    move/from16 v10, v16

    .line 147
    invoke-virtual/range {v3 .. v10}, Lo/aeN;->a(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;JLcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 155
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->b()Lo/ImageSwitcher;

    move-result-object v4

    invoke-virtual {v4, v3}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_9

    .line 157
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v3, 0x1

    :goto_5
    if-eqz v3, :cond_a

    .line 158
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->b()Lo/ImageSwitcher;

    move-result-object v3

    invoke-virtual {v3, v13}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 159
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->c()Lo/ImageSwitcher;

    move-result-object v3

    invoke-virtual {v3, v14}, Lo/ImageSwitcher;->setVisibility(I)V

    goto :goto_6

    .line 161
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->b()Lo/ImageSwitcher;

    move-result-object v3

    invoke-virtual {v3, v14}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 162
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->c()Lo/ImageSwitcher;

    move-result-object v3

    invoke-virtual {v3, v13}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 165
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->i()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object v3

    .line 166
    invoke-virtual {v1}, Lo/Tf;->bb()Lo/AK;

    move-result-object v4

    invoke-static {v4, v15}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v4

    .line 167
    iget-object v5, v0, Lo/Qt;->c:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    if-nez v5, :cond_b

    const-string v6, "downloadButtonState"

    invoke-static {v6}, Lo/amh;->d(Ljava/lang/String;)V

    .line 168
    :cond_b
    iget v6, v0, Lo/Qt;->o:I

    .line 165
    invoke-virtual {v3, v4, v5, v6}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setStateAndProgress(Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;I)V

    .line 171
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->i()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object v3

    .line 172
    invoke-virtual {v1}, Lo/Tf;->bb()Lo/AK;

    move-result-object v4

    invoke-static {v4, v15}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v4

    .line 173
    invoke-virtual {v1}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v5

    .line 174
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->i()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 276
    const-class v7, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v6, v7}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 171
    invoke-virtual {v3, v4, v5, v6}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setupClickHandling(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 177
    invoke-static {v12, v11}, Lo/RL;->d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)Z

    move-result v3

    .line 178
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->f()Lo/GridView;

    move-result-object v4

    if-eqz v3, :cond_c

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_c
    const v3, 0x3e4ccccd    # 0.2f

    :goto_7
    invoke-virtual {v4, v3}, Lo/GridView;->setAlpha(F)V

    .line 180
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->i()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lo/Qt;->I()Z

    move-result v4

    if-eqz v4, :cond_d

    const/16 v4, 0x8

    goto :goto_8

    :cond_d
    const/4 v4, 0x0

    :goto_8
    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setVisibility(I)V

    .line 181
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->i()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object v3

    iget-object v4, v0, Lo/Qt;->n:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->i:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-virtual {v4, v5}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object v4

    check-cast v4, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setPlayContext(Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 182
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->h()Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lo/Qt;->I()Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    goto :goto_9

    :cond_e
    const/16 v4, 0x8

    :goto_9
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 183
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->h()Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lo/Qt;->F()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 184
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->h()Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v1}, Lo/Tf;->getTitle()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->h()Landroid/widget/CheckBox;

    move-result-object v3

    iget-object v4, v0, Lo/Qt;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->d()Landroid/view/View;

    move-result-object v3

    iget-object v4, v0, Lo/Qt;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->d()Landroid/view/View;

    move-result-object v3

    iget-object v4, v0, Lo/Qt;->r:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 189
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->h()Landroid/widget/CheckBox;

    move-result-object v3

    iget-boolean v4, v0, Lo/Qt;->m:Z

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    goto :goto_a

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lo/Qt;->F()Z

    move-result v4

    :goto_a
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 190
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->h()Landroid/widget/CheckBox;

    move-result-object v3

    iget-boolean v4, v0, Lo/Qt;->m:Z

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 191
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->d()Landroid/view/View;

    move-result-object v3

    iget-boolean v4, v0, Lo/Qt;->m:Z

    xor-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 194
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->d()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 195
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->d()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$Activity;->F:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 197
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->d()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "holder.baseView.context"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aI:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 198
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->d()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/netflix/mediaclient/ui/R$TaskDescription;->U:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 199
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->d()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/netflix/mediaclient/ui/R$TaskDescription;->x:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 201
    iget v6, v0, Lo/Qt;->k:I

    const/4 v7, 0x0

    const-string v8, "layoutParams"

    if-lez v6, :cond_17

    .line 202
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->l()Lo/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1, v14}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 203
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->m()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 204
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->l()Lo/HorizontalScrollView;

    move-result-object v1

    .line 205
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->md:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 206
    iget v9, v0, Lo/Qt;->k:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v14

    .line 204
    invoke-static {v3, v6}, Lo/aev;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->l()Lo/HorizontalScrollView;

    move-result-object v1

    iget-object v3, v0, Lo/Qt;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/view/View;->setEnabled(Z)V

    .line 212
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 215
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->f()Lo/GridView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    add-int/2addr v5, v4

    .line 277
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lo/BatteryManager;->a(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v3

    .line 278
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-static {v6, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lo/BatteryManager;->b(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v6

    .line 279
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-static {v9, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lo/BatteryManager;->d(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v9

    .line 281
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    invoke-static {v10, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lo/BatteryManager;->e(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v10

    .line 282
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-static {v11, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lo/BatteryManager;->f(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v11

    .line 284
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    instance-of v13, v12, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v13, :cond_10

    move-object v12, v7

    :cond_10
    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v12, :cond_11

    .line 285
    iput v3, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 286
    iput v6, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 287
    iput v9, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 288
    iput v5, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 289
    invoke-virtual {v12, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 290
    invoke-virtual {v12, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 291
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 216
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->e()Lo/ImageSwitcher;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 294
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lo/BatteryManager;->a(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v3

    .line 295
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-static {v5, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lo/BatteryManager;->b(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v5

    .line 296
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-static {v6, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lo/BatteryManager;->d(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v6

    .line 298
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-static {v9, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lo/BatteryManager;->e(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v9

    .line 299
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    invoke-static {v10, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lo/BatteryManager;->f(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v10

    .line 301
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    instance-of v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v12, :cond_12

    move-object v11, v7

    :cond_12
    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v11, :cond_13

    .line 302
    iput v3, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 303
    iput v5, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 304
    iput v6, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 305
    iput v4, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 306
    invoke-virtual {v11, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 307
    invoke-virtual {v11, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 308
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 217
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->h()Landroid/widget/CheckBox;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 311
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lo/BatteryManager;->a(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v3

    .line 312
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-static {v5, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lo/BatteryManager;->b(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v5

    .line 313
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-static {v6, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lo/BatteryManager;->d(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v6

    .line 315
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-static {v9, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lo/BatteryManager;->e(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v9

    .line 316
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    invoke-static {v10, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lo/BatteryManager;->f(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v10

    .line 318
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    instance-of v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v12, :cond_14

    move-object v11, v7

    :cond_14
    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v11, :cond_15

    .line 319
    iput v3, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 320
    iput v5, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 321
    iput v6, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 322
    iput v4, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 323
    invoke-virtual {v11, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 324
    invoke-virtual {v11, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 325
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 218
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->i()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 328
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lo/BatteryManager;->a(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v2

    .line 329
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lo/BatteryManager;->b(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v3

    .line 330
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-static {v5, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lo/BatteryManager;->d(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v5

    .line 332
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-static {v6, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lo/BatteryManager;->e(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v6

    .line 333
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-static {v9, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lo/BatteryManager;->f(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v8

    .line 335
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v10, :cond_16

    goto :goto_b

    :cond_16
    move-object v7, v9

    :goto_b
    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_20

    .line 336
    iput v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 337
    iput v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 338
    iput v5, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 339
    iput v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 340
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 341
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 342
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_e

    .line 220
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->l()Lo/HorizontalScrollView;

    move-result-object v4

    invoke-virtual {v4, v13}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 221
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->m()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    .line 223
    invoke-virtual {v1}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v4, :cond_18

    .line 224
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 225
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->k()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 226
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->d()Landroid/view/View;

    move-result-object v1

    .line 345
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 346
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 347
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .line 350
    invoke-virtual {v1, v3, v4, v6, v14}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_c

    .line 228
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->d()Landroid/view/View;

    move-result-object v1

    .line 352
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 353
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    .line 354
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    .line 357
    invoke-virtual {v1, v4, v6, v9, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 231
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->f()Lo/GridView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 359
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lo/BatteryManager;->a(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v3

    .line 360
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {v4, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lo/BatteryManager;->b(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v4

    .line 361
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-static {v6, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lo/BatteryManager;->d(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v6

    .line 363
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-static {v9, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lo/BatteryManager;->e(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v9

    .line 364
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    invoke-static {v10, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lo/BatteryManager;->f(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v10

    .line 366
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    instance-of v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v12, :cond_19

    move-object v11, v7

    :cond_19
    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v11, :cond_1a

    .line 367
    iput v3, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 368
    iput v4, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 369
    iput v6, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 370
    iput v5, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 371
    invoke-virtual {v11, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 372
    invoke-virtual {v11, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 373
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 232
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->e()Lo/ImageSwitcher;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 376
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lo/BatteryManager;->a(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v3

    .line 377
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {v4, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lo/BatteryManager;->b(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v4

    .line 378
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-static {v5, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lo/BatteryManager;->d(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v5

    .line 380
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-static {v6, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lo/BatteryManager;->e(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v6

    .line 381
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-static {v9, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lo/BatteryManager;->f(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v9

    .line 383
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    instance-of v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v11, :cond_1b

    move-object v10, v7

    :cond_1b
    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_1c

    .line 384
    iput v3, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 385
    iput v4, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 386
    iput v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 387
    iput v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 388
    invoke-virtual {v10, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 389
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 390
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 233
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->h()Landroid/widget/CheckBox;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 393
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lo/BatteryManager;->a(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v3

    .line 394
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {v4, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lo/BatteryManager;->b(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v4

    .line 395
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-static {v5, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lo/BatteryManager;->d(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v5

    .line 397
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-static {v6, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lo/BatteryManager;->e(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v6

    .line 398
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-static {v9, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lo/BatteryManager;->f(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v9

    .line 400
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    instance-of v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v11, :cond_1d

    move-object v10, v7

    :cond_1d
    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_1e

    .line 401
    iput v3, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 402
    iput v4, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 403
    iput v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 404
    iput v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 405
    invoke-virtual {v10, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 406
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 407
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 234
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lo/Qt$StateListAnimator;->i()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 410
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lo/BatteryManager;->a(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v2

    .line 411
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lo/BatteryManager;->b(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v3

    .line 412
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {v4, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lo/BatteryManager;->d(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v4

    .line 414
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-static {v5, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lo/BatteryManager;->e(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v5

    .line 415
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-static {v6, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lo/BatteryManager;->f(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v6

    .line 417
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    instance-of v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v9, :cond_1f

    goto :goto_d

    :cond_1f
    move-object v7, v8

    :goto_d
    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_20

    .line 418
    iput v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 419
    iput v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 420
    iput v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 421
    iput v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 422
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 423
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 424
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_20
    :goto_e
    return-void

    .line 123
    :cond_21
    :goto_f
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v2, "DownloadedEpisodeModel: missing required params"

    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final h()Ljava/lang/Integer;
    .locals 1

    .line 102
    iget-object v0, p0, Lo/Qt;->j:Ljava/lang/Integer;

    return-object v0
.end method

.method public final k()I
    .locals 1

    .line 106
    iget v0, p0, Lo/Qt;->o:I

    return v0
.end method

.method public final l()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 1

    .line 108
    iget-object v0, p0, Lo/Qt;->n:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-object v0
.end method

.method public final m()J
    .locals 2

    .line 103
    iget-wide v0, p0, Lo/Qt;->g:J

    return-wide v0
.end method

.method public final o()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;
    .locals 1

    .line 105
    iget-object v0, p0, Lo/Qt;->h:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    return-object v0
.end method

.method public final p()Landroid/view/View$OnLongClickListener;
    .locals 1

    .line 113
    iget-object v0, p0, Lo/Qt;->r:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method public final q()Landroid/view/View$OnClickListener;
    .locals 1

    .line 112
    iget-object v0, p0, Lo/Qt;->t:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final r()Lo/Tf;
    .locals 1

    .line 111
    iget-object v0, p0, Lo/Qt;->l:Lo/Tf;

    return-object v0
.end method

.method public final s()I
    .locals 1

    .line 110
    iget v0, p0, Lo/Qt;->k:I

    return v0
.end method

.method public final t()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lo/Qt;->m:Z

    return v0
.end method

.method public final w()Landroid/view/View$OnClickListener;
    .locals 1

    .line 114
    iget-object v0, p0, Lo/Qt;->s:Landroid/view/View$OnClickListener;

    return-object v0
.end method
