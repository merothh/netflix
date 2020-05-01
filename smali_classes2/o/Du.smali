.class public abstract Lo/Du;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroid/widget/Checkable;
.implements Lo/DM;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Du$Activity;,
        Lo/Du$TaskDescription;,
        Lo/Du$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Landroid/widget/Checkable;",
        "Lo/DM<",
        "Lo/AS;",
        "Lo/Bb;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Landroid/widget/TextView;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/TextView;

.field protected e:Landroid/widget/ImageView;

.field protected f:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

.field protected g:Landroid/widget/TextView;

.field protected h:Landroid/widget/ProgressBar;

.field protected i:Z

.field protected j:Z

.field private final k:I

.field private l:Z

.field protected m:Z

.field private n:Ljava/lang/Integer;

.field private o:I

.field private t:Lo/Du$Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lo/Du;->n:Ljava/lang/Integer;

    .line 73
    iput p2, p0, Lo/Du;->k:I

    .line 74
    invoke-direct {p0}, Lo/Du;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lo/Du;-><init>(Landroid/content/Context;I)V

    .line 79
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/Du;->setTrackId(Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILo/Du$Activity;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Lo/Du;-><init>(Landroid/content/Context;I)V

    .line 84
    iput-object p3, p0, Lo/Du;->t:Lo/Du$Activity;

    return-void
.end method

.method public static a(Lo/AS;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 208
    invoke-interface {p0}, Lo/AS;->ah()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Lo/AS;->ai()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 212
    :cond_0
    invoke-interface {p0}, Lo/AS;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p0, Lcom/netflix/mediaclient/ui/R$AssistContent;->hT:I

    .line 213
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lo/AS;->y()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 209
    :cond_2
    :goto_1
    invoke-interface {p0}, Lo/AS;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lo/AS;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 200
    invoke-interface {p0}, Lo/AS;->V()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lo/AS;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 204
    invoke-interface {p0}, Lo/AS;->bb()Lo/AK;

    move-result-object p0

    invoke-interface {p0}, Lo/AK;->S()I

    move-result p0

    invoke-static {p0, p1}, Lo/aeD;->e(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private f(Lo/AS;)V
    .locals 7

    .line 134
    iget-object v0, p0, Lo/Du;->n:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->playButton:Lcom/netflix/cl/model/AppView;

    sget-object v3, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    iget-object v4, p0, Lo/Du;->n:Ljava/lang/Integer;

    .line 137
    invoke-interface {p1}, Lo/AS;->getId()Ljava/lang/String;

    move-result-object v5

    .line 138
    invoke-interface {p1}, Lo/AS;->X()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1}, Lo/AS;->V()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 137
    invoke-virtual {v3, v4, v5, v6, p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance p1, Lcom/netflix/cl/model/event/session/command/PlayCommand;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lcom/netflix/cl/model/event/session/command/PlayCommand;-><init>(Ljava/lang/Long;)V

    .line 135
    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lo/Du;->l:Z

    .line 90
    invoke-virtual {p0}, Lo/Du;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lo/Du;->k:I

    invoke-static {v0, v1, p0}, Lo/Du;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 92
    invoke-virtual {p0}, Lo/Du;->a()V

    return-void
.end method

.method private j(Lo/AS;)V
    .locals 1

    .line 305
    invoke-interface {p1}, Lo/AS;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lo/AS;->j()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lo/Du;->l:Z

    return-void
.end method


# virtual methods
.method protected a(Lo/AS;)Ljava/lang/CharSequence;
    .locals 1

    .line 196
    invoke-virtual {p0}, Lo/Du;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Du;->a(Lo/AS;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a()V
    .locals 1

    .line 96
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gm:I

    invoke-virtual {p0, v0}, Lo/Du;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Du;->c:Landroid/widget/TextView;

    .line 97
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gz:I

    invoke-virtual {p0, v0}, Lo/Du;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Du;->b:Landroid/widget/TextView;

    .line 98
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gr:I

    invoke-virtual {p0, v0}, Lo/Du;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Du;->a:Landroid/widget/TextView;

    .line 99
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gy:I

    invoke-virtual {p0, v0}, Lo/Du;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Du;->d:Landroid/widget/TextView;

    .line 100
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gx:I

    invoke-virtual {p0, v0}, Lo/Du;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/Du;->e:Landroid/widget/ImageView;

    .line 101
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gs:I

    invoke-virtual {p0, v0}, Lo/Du;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    iput-object v0, p0, Lo/Du;->f:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 102
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gv:I

    invoke-virtual {p0, v0}, Lo/Du;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lo/Du;->h:Landroid/widget/ProgressBar;

    .line 103
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gw:I

    invoke-virtual {p0, v0}, Lo/Du;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Du;->g:Landroid/widget/TextView;

    return-void
.end method

.method protected b()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public b(Lo/AS;)V
    .locals 2

    .line 310
    invoke-virtual {p0}, Lo/Du;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lo/adR;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/lang/String;

    move-result-object v0

    .line 312
    sget-object v1, Lo/acB;->a:Lo/acB;

    invoke-virtual {v1, p1, v0}, Lo/acB;->a(Lo/AS;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lo/Du;->o:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 332
    iget v0, p0, Lo/Du;->o:I

    return v0
.end method

.method protected abstract c(Lo/AS;)V
.end method

.method protected abstract c(Lo/As;)V
.end method

.method protected d(Lo/AS;)V
    .locals 3

    .line 112
    iget-object v0, p0, Lo/Du;->t:Lo/Du$Activity;

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0, p1}, Lo/Du$Activity;->d(Lo/AS;)V

    goto :goto_1

    .line 115
    :cond_0
    invoke-virtual {p0}, Lo/Du;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lo/Du$Application;

    invoke-static {v0, v1}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Du$Application;

    const-string v1, "EpisodeRowView"

    if-eqz v0, :cond_2

    .line 117
    invoke-interface {v0}, Lo/Du$Application;->getEpisodeRowListener()Lo/Du$TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 119
    invoke-interface {v0, p1}, Lo/Du$TaskDescription;->b(Lo/AS;)V

    goto :goto_0

    .line 122
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No EpisodeRowListener provided: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/Du;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Context is not an EpisodeRowListenerProvider, context: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/Du;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    invoke-direct {p0, p1}, Lo/Du;->f(Lo/AS;)V

    :goto_1
    return-void
.end method

.method public d()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lo/Du;->l:Z

    return v0
.end method

.method protected e()V
    .locals 3

    .line 174
    iget v0, p0, Lo/Du;->o:I

    if-gtz v0, :cond_0

    .line 175
    iget-object v0, p0, Lo/Du;->h:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lo/Du;->h:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 179
    iget-boolean v0, p0, Lo/Du;->j:Z

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lo/Du;->h:Landroid/widget/ProgressBar;

    iget v2, p0, Lo/Du;->o:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 181
    iget-object v0, p0, Lo/Du;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lo/Du;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 185
    iget-object v0, p0, Lo/Du;->h:Landroid/widget/ProgressBar;

    iget v1, p0, Lo/Du;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :goto_0
    return-void
.end method

.method protected e(Lo/AS;)V
    .locals 1

    .line 316
    iget-object v0, p0, Lo/Du;->d:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 321
    :cond_0
    invoke-interface {p1}, Lo/AS;->ah()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lo/AS;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    invoke-interface {p1}, Lo/AS;->j()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 326
    :goto_0
    iget-object v0, p0, Lo/Du;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object p1, p0, Lo/Du;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lo/Du;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public e(Lo/AS;Z)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 241
    :cond_0
    invoke-interface {p1}, Lo/AS;->ai()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lo/AS;->ah()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lo/Du;->m:Z

    .line 245
    iput-boolean p2, p0, Lo/Du;->j:Z

    .line 247
    invoke-virtual {p0}, Lo/Du;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->h:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 248
    invoke-interface {p1}, Lo/AS;->V()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 249
    invoke-interface {p1}, Lo/AS;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 250
    invoke-interface {p1}, Lo/AS;->j()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const/4 v3, 0x3

    .line 251
    invoke-interface {p1}, Lo/AS;->bb()Lo/AK;

    move-result-object v5

    invoke-interface {v5}, Lo/AK;->S()I

    move-result v5

    invoke-static {v5}, Lo/aeC;->a(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v3

    .line 246
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lo/Du;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 253
    invoke-interface {p1}, Lo/AS;->ah()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lo/Du;->m:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lo/Du;->a:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    .line 254
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object p2, p0, Lo/Du;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lo/Du;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Du;->c(Lo/AS;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_3
    iget-object p2, p0, Lo/Du;->a:Landroid/widget/TextView;

    const/16 v0, 0x8

    if-eqz p2, :cond_4

    iget-boolean v3, p0, Lo/Du;->m:Z

    if-eqz v3, :cond_4

    .line 258
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    :cond_4
    iget-object p2, p0, Lo/Du;->b:Landroid/widget/TextView;

    if-eqz p2, :cond_5

    .line 262
    invoke-virtual {p0}, Lo/Du;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p1, v3}, Lo/Du;->a(Lo/AS;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object p2, p0, Lo/Du;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 266
    :cond_5
    iget-object p2, p0, Lo/Du;->c:Landroid/widget/TextView;

    if-eqz p2, :cond_6

    .line 267
    invoke-interface {p1}, Lo/AS;->z()Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lo/Du;->c:Landroid/widget/TextView;

    invoke-static {p2, v3}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->c(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 273
    :cond_6
    iget-object p2, p0, Lo/Du;->g:Landroid/widget/TextView;

    if-eqz p2, :cond_b

    .line 275
    invoke-interface {p1}, Lo/AS;->bb()Lo/AK;

    move-result-object p2

    invoke-interface {p2}, Lo/AK;->S()I

    move-result p2

    if-lez p2, :cond_7

    .line 276
    invoke-virtual {p0}, Lo/Du;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lo/Du;->e(Lo/AS;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_7
    const-string p2, ""

    .line 278
    :goto_2
    invoke-interface {p1}, Lo/AS;->y()Ljava/lang/String;

    move-result-object v3

    .line 279
    invoke-static {v3}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 280
    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 281
    iget-object v0, p0, Lo/Du;->g:Landroid/widget/TextView;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    aput-object p2, v4, v1

    const-string p2, "%s %10s"

    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 283
    :cond_8
    iget-object p2, p0, Lo/Du;->g:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :goto_3
    iget-object p2, p0, Lo/Du;->g:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 286
    :cond_9
    invoke-interface {p1}, Lo/AS;->ah()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 287
    iget-object v0, p0, Lo/Du;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object p2, p0, Lo/Du;->g:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 291
    :cond_a
    iget-object p2, p0, Lo/Du;->g:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    :cond_b
    :goto_4
    invoke-virtual {p0, p1}, Lo/Du;->e(Lo/AS;)V

    .line 296
    invoke-virtual {p0, p1}, Lo/Du;->b(Lo/AS;)V

    .line 297
    invoke-virtual {p0, p1}, Lo/Du;->c(Lo/AS;)V

    .line 298
    invoke-interface {p1}, Lo/AS;->bb()Lo/AK;

    move-result-object p2

    invoke-virtual {p0, p2}, Lo/Du;->c(Lo/As;)V

    .line 300
    invoke-virtual {p0, v2}, Lo/Du;->setChecked(Z)V

    .line 301
    invoke-direct {p0, p1}, Lo/Du;->j(Lo/AS;)V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lo/Du;->i:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 4

    .line 158
    iput-boolean p1, p0, Lo/Du;->i:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 159
    iget-boolean p1, p0, Lo/Du;->l:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 160
    :goto_0
    iget-object v1, p0, Lo/Du;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    .line 161
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    :cond_2
    iget-object v1, p0, Lo/Du;->g:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v0, 0x8

    .line 164
    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    :cond_4
    invoke-virtual {p0}, Lo/Du;->e()V

    return-void
.end method

.method public setTrackId(Ljava/lang/Integer;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lo/Du;->n:Ljava/lang/Integer;

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 192
    iget-boolean v0, p0, Lo/Du;->i:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lo/Du;->setChecked(Z)V

    return-void
.end method
