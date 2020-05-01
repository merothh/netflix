.class public abstract Lo/QB;
.super Lo/QA;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/QB$Activity;,
        Lo/QB$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/QA<",
        "Lo/QB$Activity;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lo/QB$TaskDescription;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field public c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

.field public f:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

.field public g:Ljava/lang/String;

.field public j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

.field private k:Ljava/lang/Integer;

.field private l:I

.field private m:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field private n:Ljava/lang/CharSequence;

.field private o:J

.field private p:I

.field private q:Z

.field private r:I

.field private s:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field private t:I

.field private u:Landroid/view/View$OnClickListener;

.field private v:Z

.field private x:Landroid/view/View$OnLongClickListener;

.field private y:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/QB$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/QB$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/QB;->h:Lo/QB$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lo/QA;-><init>()V

    .line 207
    new-instance v0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    sget-object v1, Lcom/netflix/cl/model/AppView;->cachedVideos:Lcom/netflix/cl/model/AppView;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;-><init>(Lcom/netflix/cl/model/AppView;)V

    iput-object v0, p0, Lo/QB;->s:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    .line 201
    iput-wide p1, p0, Lo/QB;->o:J

    return-void
.end method

.method public final a(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iput-object p1, p0, Lo/QB;->s:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-void
.end method

.method public a(Lo/QB$Activity;)V
    .locals 14

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1}, Lo/QB$Activity;->a()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lo/ImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lo/QB;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const-string v9, "videoType"

    if-nez v1, :cond_0

    invoke-static {v9}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v3, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ne v1, v2, :cond_2

    .line 225
    invoke-virtual {p1}, Lo/QB$Activity;->c()Lo/ImageSwitcher;

    move-result-object v1

    iget-boolean v2, p0, Lo/QB;->q:Z

    if-eqz v2, :cond_1

    .line 226
    invoke-virtual {p0}, Lo/QB;->A()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 228
    :cond_1
    sget-object v2, Lo/amj;->c:Lo/amj;

    new-array v2, v3, [Ljava/lang/Object;

    iget v4, p0, Lo/QB;->p:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v11

    invoke-virtual {p0}, Lo/QB;->A()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v10

    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v4, "%d. %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v2, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    .line 225
    :goto_0
    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget v1, p0, Lo/QB;->r:I

    invoke-static {v1, v0}, Lo/aeD;->e(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-virtual {p1}, Lo/QB$Activity;->a()Lo/ImageSwitcher;

    move-result-object v2

    .line 233
    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->iu:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v11

    .line 235
    invoke-virtual {p0}, Lo/QB;->C()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lo/aeE;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v10

    .line 232
    invoke-static {v4, v3}, Lo/aev;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 238
    :cond_2
    invoke-virtual {p1}, Lo/QB$Activity;->c()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {p0}, Lo/QB;->A()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {p1}, Lo/QB$Activity;->a()Lo/ImageSwitcher;

    move-result-object v1

    iget-object v2, p0, Lo/QB;->n:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 241
    invoke-virtual {p0}, Lo/QB;->C()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lo/aeE;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_1

    .line 244
    :cond_3
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->iu:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 245
    iget-object v4, p0, Lo/QB;->n:Ljava/lang/CharSequence;

    aput-object v4, v3, v11

    .line 247
    invoke-virtual {p0}, Lo/QB;->C()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lo/aeE;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 246
    invoke-static {v4}, Lo/afw;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v10

    .line 243
    invoke-static {v2, v3}, Lo/aev;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 240
    :goto_1
    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 253
    :goto_2
    iget-boolean v1, p0, Lo/QB;->v:Z

    const-string v12, "watchState"

    const-string v13, "downloadState"

    if-nez v1, :cond_6

    .line 254
    sget-object v1, Lo/QB;->h:Lo/QB$TaskDescription;

    const-string v2, "context"

    .line 255
    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iget-object v3, p0, Lo/QB;->j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-nez v3, :cond_4

    invoke-static {v13}, Lo/amh;->d(Ljava/lang/String;)V

    .line 257
    :cond_4
    iget-object v4, p0, Lo/QB;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    if-nez v4, :cond_5

    invoke-static {v12}, Lo/amh;->d(Ljava/lang/String;)V

    .line 258
    :cond_5
    iget-wide v5, p0, Lo/QB;->o:J

    .line 259
    iget-object v7, p0, Lo/QB;->m:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 260
    iget v8, p0, Lo/QB;->l:I

    move-object v2, v0

    .line 254
    invoke-virtual/range {v1 .. v8}, Lo/QB$TaskDescription;->b(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;JLcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lo/QB;->y:Ljava/lang/CharSequence;

    .line 262
    iput-boolean v10, p0, Lo/QB;->v:Z

    .line 264
    :cond_6
    invoke-virtual {p1}, Lo/QB$Activity;->e()Lo/ImageSwitcher;

    move-result-object v1

    iget-object v2, p0, Lo/QB;->y:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual {p1}, Lo/QB$Activity;->e()Lo/ImageSwitcher;

    move-result-object v1

    iget-object v2, p0, Lo/QB;->y:Ljava/lang/CharSequence;

    invoke-static {v2}, Lo/aev;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 266
    invoke-virtual {p0}, Lo/QB;->D()Ljava/lang/String;

    move-result-object v1

    .line 267
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_9

    invoke-static {v2}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    const/4 v10, 0x0

    :cond_9
    :goto_4
    if-nez v10, :cond_1a

    .line 270
    invoke-virtual {p1}, Lo/QB$Activity;->b()Lo/BaseAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/BaseAdapter;->b(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lo/QB;->F()Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, 0x3f4ccccd    # 0.8f

    goto :goto_5

    :cond_a
    const/high16 v1, 0x3f800000    # 1.0f

    .line 274
    :goto_5
    invoke-virtual {p1}, Lo/QB$Activity;->b()Lo/BaseAdapter;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v1}, Lo/Binder;->c(Landroid/view/View;F)V

    .line 275
    invoke-virtual {p1}, Lo/QB$Activity;->j()Landroid/widget/ProgressBar;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v1}, Lo/Binder;->c(Landroid/view/View;F)V

    .line 277
    iget-object v1, p0, Lo/QB;->k:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 278
    invoke-virtual {p1}, Lo/QB$Activity;->j()Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 281
    :cond_b
    invoke-virtual {p1}, Lo/QB$Activity;->j()Landroid/widget/ProgressBar;

    move-result-object v1

    iget-object v2, p0, Lo/QB;->k:Ljava/lang/Integer;

    if-eqz v2, :cond_e

    if-nez v2, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_d

    goto :goto_7

    :cond_d
    :goto_6
    const/4 v2, 0x0

    goto :goto_8

    :cond_e
    :goto_7
    const/16 v2, 0x8

    :goto_8
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 283
    iget-object v1, p0, Lo/QB;->j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-nez v1, :cond_f

    invoke-static {v13}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_f
    iget-object v2, p0, Lo/QB;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    if-nez v2, :cond_10

    invoke-static {v12}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_10
    invoke-static {v1, v2}, Lo/RL;->d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)Z

    move-result v1

    .line 288
    invoke-virtual {p1}, Lo/QB$Activity;->i()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v1, :cond_11

    const/4 v4, 0x0

    goto :goto_9

    :cond_11
    const/16 v4, 0x8

    :goto_9
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    invoke-virtual {p1}, Lo/QB$Activity;->h()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object v2

    iget-object v4, p0, Lo/QB;->a:Ljava/lang/String;

    const-string v5, "playableId"

    if-nez v4, :cond_12

    invoke-static {v5}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_12
    iget-object v6, p0, Lo/QB;->f:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    if-nez v6, :cond_13

    const-string v7, "downloadButtonState"

    invoke-static {v7}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_13
    iget v7, p0, Lo/QB;->l:I

    invoke-virtual {v2, v4, v6, v7}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setStateAndProgress(Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;I)V

    .line 291
    invoke-virtual {p1}, Lo/QB$Activity;->h()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object v2

    iget-object v4, p0, Lo/QB;->a:Ljava/lang/String;

    if-nez v4, :cond_14

    invoke-static {v5}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_14
    iget-object v5, p0, Lo/QB;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-nez v5, :cond_15

    invoke-static {v9}, Lo/amh;->d(Ljava/lang/String;)V

    .line 332
    :cond_15
    const-class v6, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v6}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 291
    invoke-virtual {v2, v4, v5, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setupClickHandling(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 292
    invoke-virtual {p1}, Lo/QB$Activity;->h()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object v0

    invoke-virtual {p0}, Lo/QB;->I()Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x8

    goto :goto_a

    :cond_16
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setVisibility(I)V

    .line 293
    invoke-virtual {p1}, Lo/QB$Activity;->h()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object v0

    iget-object v2, p0, Lo/QB;->s:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->i:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-virtual {v2, v4}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setPlayContext(Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 295
    invoke-virtual {p1}, Lo/QB$Activity;->f()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {p0}, Lo/QB;->I()Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v3, 0x0

    :cond_17
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 296
    invoke-virtual {p1}, Lo/QB$Activity;->f()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {p0}, Lo/QB;->F()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 298
    invoke-virtual {p1}, Lo/QB$Activity;->f()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {p0}, Lo/QB;->A()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 301
    invoke-virtual {p1}, Lo/QB$Activity;->f()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 303
    invoke-virtual {p1}, Lo/QB$Activity;->d()Landroid/view/View;

    move-result-object v0

    if-nez v1, :cond_19

    invoke-virtual {p0}, Lo/QB;->I()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_b

    :cond_18
    const/4 v1, 0x0

    goto :goto_c

    :cond_19
    :goto_b
    iget-object v1, p0, Lo/QB;->u:Landroid/view/View$OnClickListener;

    :goto_c
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    invoke-virtual {p1}, Lo/QB$Activity;->d()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lo/QB;->x:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    .line 268
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method protected b()I
    .locals 1

    .line 219
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->aM:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    .line 204
    iput p1, p0, Lo/QB;->l:I

    return-void
.end method

.method public final b(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lo/QB;->x:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public final b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lo/QB;->m:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    return-void
.end method

.method public final b(Ljava/lang/Integer;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lo/QB;->k:Ljava/lang/Integer;

    return-void
.end method

.method public final c(I)V
    .locals 0

    .line 210
    iput p1, p0, Lo/QB;->p:I

    return-void
.end method

.method public final c(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lo/QB;->u:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 46
    check-cast p1, Lo/QB$Activity;

    invoke-virtual {p0, p1}, Lo/QB;->a(Lo/QB$Activity;)V

    return-void
.end method

.method public final d(I)V
    .locals 0

    .line 208
    iput p1, p0, Lo/QB;->r:I

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Lo/QB$Activity;

    invoke-virtual {p0, p1}, Lo/QB;->a(Lo/QB$Activity;)V

    return-void
.end method

.method public final e(I)V
    .locals 0

    .line 209
    iput p1, p0, Lo/QB;->t:I

    return-void
.end method

.method public final e(Ljava/lang/CharSequence;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lo/QB;->n:Ljava/lang/CharSequence;

    return-void
.end method

.method public final e(Z)V
    .locals 0

    .line 211
    iput-boolean p1, p0, Lo/QB;->q:Z

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    .line 196
    iget-object v0, p0, Lo/QB;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "playableId"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final k()Ljava/lang/CharSequence;
    .locals 1

    .line 198
    iget-object v0, p0, Lo/QB;->n:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final l()J
    .locals 2

    .line 201
    iget-wide v0, p0, Lo/QB;->o:J

    return-wide v0
.end method

.method public final m()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;
    .locals 1

    .line 203
    iget-object v0, p0, Lo/QB;->m:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    return-object v0
.end method

.method public final o()Ljava/lang/Integer;
    .locals 1

    .line 200
    iget-object v0, p0, Lo/QB;->k:Ljava/lang/Integer;

    return-object v0
.end method

.method public final p()I
    .locals 1

    .line 204
    iget v0, p0, Lo/QB;->l:I

    return v0
.end method

.method public final q()I
    .locals 1

    .line 210
    iget v0, p0, Lo/QB;->p:I

    return v0
.end method

.method public final r()I
    .locals 1

    .line 208
    iget v0, p0, Lo/QB;->r:I

    return v0
.end method

.method public final s()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 1

    .line 207
    iget-object v0, p0, Lo/QB;->s:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-object v0
.end method

.method public final t()I
    .locals 1

    .line 209
    iget v0, p0, Lo/QB;->t:I

    return v0
.end method

.method public final u()Landroid/view/View$OnLongClickListener;
    .locals 1

    .line 214
    iget-object v0, p0, Lo/QB;->x:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method public final v()Landroid/view/View$OnClickListener;
    .locals 1

    .line 213
    iget-object v0, p0, Lo/QB;->u:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final y()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lo/QB;->q:Z

    return v0
.end method
