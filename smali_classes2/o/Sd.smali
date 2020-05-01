.class public final Lo/Sd;
.super Lo/WebChromeClient;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final b:Lo/BC;

.field private c:F

.field private final d:F

.field private final e:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/HashMap;

.field private final j:Lo/nS;


# direct methods
.method public constructor <init>(Lo/BC;Lo/nS;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BC;",
            "Lo/nS;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "currentProfile"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineAgent"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lo/WebChromeClient;-><init>()V

    iput-object p1, p0, Lo/Sd;->b:Lo/BC;

    iput-object p2, p0, Lo/Sd;->j:Lo/nS;

    iput-object p3, p0, Lo/Sd;->f:Ljava/util/List;

    .line 35
    sget-object p1, Lo/aeN;->e:Lo/aeN;

    iget-object p2, p0, Lo/Sd;->j:Lo/nS;

    invoke-virtual {p1, p2}, Lo/aeN;->e(Lo/nS;)F

    move-result p1

    iput p1, p0, Lo/Sd;->d:F

    .line 36
    iget p1, p0, Lo/Sd;->d:F

    iput p1, p0, Lo/Sd;->c:F

    .line 37
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "PublishSubject.create<Unit>()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/Sd;->e:Lio/reactivex/subjects/PublishSubject;

    return-void
.end method

.method private final a()V
    .locals 11

    .line 98
    invoke-virtual {p0}, Lo/Sd;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/Am;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Am;->q()Lo/nS;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/nS;->p()Lo/Bg;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 101
    invoke-interface {v0}, Lo/Bg;->d()I

    move-result v1

    invoke-interface {v0, v1}, Lo/Bg;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Bh;

    if-eqz v0, :cond_1

    .line 103
    invoke-interface {v0}, Lo/Bh;->e()J

    move-result-wide v1

    const v3, 0x3b9aca00

    int-to-long v3, v3

    div-long/2addr v1, v3

    long-to-float v1, v1

    .line 104
    iget v2, p0, Lo/Sd;->c:F

    .line 105
    invoke-interface {v0}, Lo/Bh;->e()J

    move-result-wide v5

    invoke-interface {v0}, Lo/Bh;->a()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 106
    div-long/2addr v5, v3

    long-to-float v0, v5

    .line 108
    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->sx:I

    invoke-virtual {p0, v3}, Lo/Sd;->e(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    const-string v4, "storage_progress_bar"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    float-to-double v5, v0

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double v5, v5, v7

    float-to-double v9, v1

    div-double/2addr v5, v9

    double-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 109
    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->sx:I

    invoke-virtual {p0, v3}, Lo/Sd;->e(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    float-to-double v5, v2

    mul-double v5, v5, v7

    div-double/2addr v5, v9

    double-to-int v5, v5

    sget v6, Lcom/netflix/mediaclient/ui/R$Fragment;->sx:I

    invoke-virtual {p0, v6}, Lo/Sd;->e(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    invoke-static {v6, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v4

    add-int/2addr v5, v4

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    sub-float/2addr v1, v0

    sub-float/2addr v1, v2

    const/4 v0, 0x0

    .line 111
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 112
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->ss:I

    invoke-virtual {p0, v1}, Lo/Sd;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/ImageSwitcher;

    const-string v3, "storage_free"

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->bM:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 114
    sget-object v6, Lo/amj;->c:Lo/amj;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v7, 0x0

    aput-object v0, v6, v7

    array-length v0, v6

    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v6, "%.1f"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "java.lang.String.format(format, *args)"

    invoke-static {v0, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, v5, v7

    .line 112
    invoke-static {v3, v5}, Lo/aev;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 116
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sm:I

    invoke-virtual {p0, v0}, Lo/Sd;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    const-string v1, "storage_downloaded"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->bL:I

    new-array v3, v4, [Ljava/lang/Object;

    .line 118
    sget-object v5, Lo/amj;->c:Lo/amj;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v7

    array-length v2, v4

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v3, v7

    .line 116
    invoke-static {v1, v3}, Lo/aev;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public static final synthetic a(Lo/Sd;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lo/Sd;->c()V

    return-void
.end method

.method private final b()V
    .locals 4

    .line 140
    iget v0, p0, Lo/Sd;->d:F

    iget v1, p0, Lo/Sd;->c:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 143
    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lo/Sd;->b:Lo/BC;

    invoke-interface {v1}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "currentProfile.profileGuid"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "profile"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Lo/Sd;->b:Lo/BC;

    invoke-interface {v1}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "current_profile"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 146
    new-instance v2, Lcom/netflix/cl/model/event/session/Focus;

    .line 147
    sget-object v3, Lcom/netflix/cl/model/AppView;->downloadedForYouStorageSelector:Lcom/netflix/cl/model/AppView;

    .line 148
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Ljava/util/Map;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v0

    .line 146
    invoke-direct {v2, v3, v0}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 150
    new-instance v0, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;

    iget v3, p0, Lo/Sd;->c:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 v3, 0x0

    .line 145
    invoke-virtual {v1, v2, v0, v3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    return-void
.end method

.method private final c()V
    .locals 5

    .line 123
    sget-object v0, Lo/aeN;->e:Lo/aeN;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->lH:I

    invoke-virtual {p0, v1}, Lo/Sd;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/HorizontalScrollView;

    const-string v2, "opt_in"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lo/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "opt_in.context"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lo/Sd;->b:Lo/BC;

    invoke-interface {v2}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "currentProfile.profileGuid"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, p0, Lo/Sd;->c:F

    iget-object v4, p0, Lo/Sd;->j:Lo/nS;

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/aeN;->e(Landroid/content/Context;Ljava/lang/String;FLo/nS;)V

    .line 124
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 125
    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->downloadedForYouOptInButton:Lcom/netflix/cl/model/AppView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 126
    new-instance v2, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 v3, 0x0

    .line 124
    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    .line 128
    invoke-direct {p0}, Lo/Sd;->b()V

    .line 129
    invoke-virtual {p0}, Lo/Sd;->dismiss()V

    return-void
.end method

.method public static final synthetic c(Lo/Sd;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lo/Sd;->g()V

    return-void
.end method

.method private final d()V
    .locals 7

    .line 155
    sget-object v0, Lo/amj;->c:Lo/amj;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget v2, p0, Lo/Sd;->c:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.1f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->y:I

    invoke-virtual {p0, v2}, Lo/Sd;->e(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/ImageSwitcher;

    const-string v4, "amount_storage"

    invoke-static {v2, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 157
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->sq:I

    invoke-virtual {p0, v2}, Lo/Sd;->e(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/ImageSwitcher;

    const-string v4, "storage_description"

    invoke-static {v2, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->bH:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v3

    .line 159
    sget-object v1, Lo/aeN;->e:Lo/aeN;

    iget v6, p0, Lo/Sd;->c:F

    invoke-virtual {v1, v6}, Lo/aeN;->a(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 157
    invoke-static {v4, v5}, Lo/aev;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget v1, p0, Lo/Sd;->c:F

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v5, "plus"

    const/high16 v6, 0x41180000    # 9.5f

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_0

    .line 163
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->nh:I

    invoke-virtual {p0, v1}, Lo/Sd;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/GridView;

    invoke-static {v1, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lo/GridView;->setEnabled(Z)V

    .line 164
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->nh:I

    invoke-virtual {p0, v1}, Lo/Sd;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/GridView;

    invoke-static {v1, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lo/GridView;->setAlpha(F)V

    goto :goto_0

    .line 166
    :cond_0
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->nh:I

    invoke-virtual {p0, v1}, Lo/Sd;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/GridView;

    invoke-static {v1, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lo/GridView;->setEnabled(Z)V

    .line 167
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->nh:I

    invoke-virtual {p0, v1}, Lo/Sd;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/GridView;

    invoke-static {v1, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lo/GridView;->setAlpha(F)V

    .line 170
    :goto_0
    iget v1, p0, Lo/Sd;->c:F

    const/high16 v5, 0x3f000000    # 0.5f

    const-string v6, "minus"

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_1

    .line 171
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kE:I

    invoke-virtual {p0, v0}, Lo/Sd;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/GridView;

    invoke-static {v0, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lo/GridView;->setEnabled(Z)V

    .line 172
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kE:I

    invoke-virtual {p0, v0}, Lo/Sd;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/GridView;

    invoke-static {v0, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lo/GridView;->setAlpha(F)V

    goto :goto_1

    .line 174
    :cond_1
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->kE:I

    invoke-virtual {p0, v1}, Lo/Sd;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/GridView;

    invoke-static {v1, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lo/GridView;->setEnabled(Z)V

    .line 175
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kE:I

    invoke-virtual {p0, v0}, Lo/Sd;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/GridView;

    invoke-static {v0, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lo/GridView;->setAlpha(F)V

    :goto_1
    return-void
.end method

.method private final d(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 133
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hQ:I

    invoke-virtual {p0, v0}, Lo/Sd;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/GridView;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/GridView;->d(Ljava/lang/String;)V

    .line 134
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hR:I

    invoke-virtual {p0, v0}, Lo/Sd;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/GridView;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/GridView;->d(Ljava/lang/String;)V

    .line 135
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hV:I

    invoke-virtual {p0, v0}, Lo/Sd;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/GridView;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lo/GridView;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic d(Lo/Sd;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lo/Sd;->f()V

    return-void
.end method

.method public static final synthetic e(Lo/Sd;Ljava/util/List;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lo/Sd;->d(Ljava/util/List;)V

    return-void
.end method

.method private final f()V
    .locals 2

    .line 180
    iget v0, p0, Lo/Sd;->c:F

    const/high16 v1, 0x41180000    # 9.5f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    .line 183
    iput v0, p0, Lo/Sd;->c:F

    .line 184
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->y:I

    invoke-virtual {p0, v0}, Lo/Sd;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    const-string v1, "amount_storage"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lo/Sd;->c:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 185
    invoke-direct {p0}, Lo/Sd;->d()V

    .line 186
    invoke-direct {p0}, Lo/Sd;->a()V

    return-void
.end method

.method private final g()V
    .locals 3

    .line 190
    iget v0, p0, Lo/Sd;->c:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    return-void

    :cond_0
    sub-float/2addr v0, v1

    .line 193
    iput v0, p0, Lo/Sd;->c:F

    .line 194
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->y:I

    invoke-virtual {p0, v0}, Lo/Sd;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    const-string v1, "amount_storage"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lo/Sd;->c:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-direct {p0}, Lo/Sd;->d()V

    .line 196
    invoke-direct {p0}, Lo/Sd;->a()V

    return-void
.end method


# virtual methods
.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/Sd;->h:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/Sd;->h:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/Sd;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/Sd;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lo/Sd;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cB:I

    if-ne p1, v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lo/Sd;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Lo/WebChromeClient;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget p1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->j:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lo/Sd;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->at:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/WebChromeClient;->onDestroyView()V

    invoke-virtual {p0}, Lo/Sd;->e()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-super {p0, p1}, Lo/WebChromeClient;->onDismiss(Landroid/content/DialogInterface;)V

    .line 201
    iget-object p1, p0, Lo/Sd;->e:Lio/reactivex/subjects/PublishSubject;

    sget-object v0, Lo/akj;->a:Lo/akj;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 202
    iget-object p1, p0, Lo/Sd;->e:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-super {p0, p1, p2}, Lo/WebChromeClient;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 54
    iget-object p1, p0, Lo/Sd;->j:Lo/nS;

    invoke-interface {p1}, Lo/nS;->q()V

    .line 55
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->cB:I

    invoke-virtual {p0, p1}, Lo/Sd;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/GridView;

    new-instance p2, Lo/Sd$StateListAnimator;

    invoke-direct {p2, p0}, Lo/Sd$StateListAnimator;-><init>(Lo/Sd;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lo/GridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->nh:I

    invoke-virtual {p0, p1}, Lo/Sd;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/GridView;

    new-instance p2, Lo/Sd$ActionBar;

    invoke-direct {p2, p0}, Lo/Sd$ActionBar;-><init>(Lo/Sd;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lo/GridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->kE:I

    invoke-virtual {p0, p1}, Lo/Sd;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/GridView;

    new-instance p2, Lo/Sd$Application;

    invoke-direct {p2, p0}, Lo/Sd$Application;-><init>(Lo/Sd;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lo/GridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->lH:I

    invoke-virtual {p0, p1}, Lo/Sd;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/HorizontalScrollView;

    new-instance p2, Lo/Sd$Activity;

    invoke-direct {p2, p0}, Lo/Sd$Activity;-><init>(Lo/Sd;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object p1, p0, Lo/Sd;->f:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const/4 p2, 0x3

    if-nez p1, :cond_2

    iget-object p1, p0, Lo/Sd;->f:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-lt p1, p2, :cond_2

    .line 60
    iget-object p1, p0, Lo/Sd;->f:Ljava/util/List;

    invoke-direct {p0, p1}, Lo/Sd;->d(Ljava/util/List;)V

    goto :goto_2

    .line 62
    :cond_2
    new-instance p1, Lo/Sm;

    invoke-direct {p1}, Lo/Sm;-><init>()V

    iget-object v0, p0, Lo/Sd;->b:Lo/BC;

    invoke-virtual {p1, v0, p2}, Lo/Sm;->a(Lo/BC;I)Lio/reactivex/Observable;

    move-result-object p1

    .line 63
    iget-object p2, p0, Lo/Sd;->e:Lio/reactivex/subjects/PublishSubject;

    check-cast p2, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "DownloadedForYouReposito\u2026takeUntil(destroySubject)"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance p1, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouOptInDialog$onViewCreated$5;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouOptInDialog$onViewCreated$5;-><init>(Lo/Sd;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v2, 0x0

    .line 68
    sget-object p1, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouOptInDialog$onViewCreated$6;->a:Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouOptInDialog$onViewCreated$6;

    move-object v1, p1

    check-cast v1, Lo/alA;

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 64
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 74
    :goto_2
    invoke-direct {p0}, Lo/Sd;->d()V

    .line 75
    invoke-direct {p0}, Lo/Sd;->a()V

    return-void
.end method

.method public show(Lo/SerializablePermission;Ljava/lang/String;)V
    .locals 3

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-super {p0, p1, p2}, Lo/WebChromeClient;->show(Lo/SerializablePermission;Ljava/lang/String;)V

    .line 80
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 81
    check-cast p1, Ljava/util/Map;

    iget p2, p0, Lo/Sd;->c:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string v0, "default_gb"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 83
    new-instance v0, Lcom/netflix/cl/model/event/discrete/Presented;

    .line 84
    sget-object v1, Lcom/netflix/cl/model/AppView;->downloadedForYouLanding:Lcom/netflix/cl/model/AppView;

    const/4 v2, 0x0

    .line 85
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 86
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Ljava/util/Map;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    .line 83
    invoke-direct {v0, v1, v2, p1}, Lcom/netflix/cl/model/event/discrete/Presented;-><init>(Lcom/netflix/cl/model/AppView;Ljava/lang/Boolean;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v0, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;

    .line 82
    invoke-virtual {p2, v0}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    return-void
.end method
