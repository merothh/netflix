.class public abstract Lo/Tn;
.super Lo/WebChromeClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Tn$Application;
    }
.end annotation


# static fields
.field public static final d:Lo/Tn$Application;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/ui/player/PlanChoice;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/netflix/mediaclient/ui/player/PlanChoice;

.field private e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

.field private f:Ljava/lang/Long;

.field private h:Ljava/lang/Long;

.field private j:Ljava/lang/Long;

.field private m:Ljava/util/HashMap;

.field private n:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Tn$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Tn$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/Tn;->d:Lo/Tn$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lo/WebChromeClient;-><init>()V

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-string v1, "emptyList()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/Tn;->b:Ljava/util/List;

    .line 59
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlanChoice;->c:Lcom/netflix/mediaclient/ui/player/PlanChoice$ActionBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlanChoice$ActionBar;->e()Lcom/netflix/mediaclient/ui/player/PlanChoice;

    move-result-object v0

    iput-object v0, p0, Lo/Tn;->c:Lcom/netflix/mediaclient/ui/player/PlanChoice;

    return-void
.end method

.method private final a(Lcom/netflix/mediaclient/ui/player/PlanChoice;)V
    .locals 4

    .line 173
    invoke-virtual {p0}, Lo/Tn;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lo/Tn;->h:Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 178
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    const/4 v0, 0x0

    .line 179
    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lo/Tn;->h:Ljava/lang/Long;

    .line 181
    :cond_1
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/Presentation;

    invoke-virtual {p0}, Lo/Tn;->f()Lcom/netflix/cl/model/AppView;

    move-result-object v2

    invoke-virtual {p0}, Lo/Tn;->b()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/Tn;->j:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 183
    invoke-virtual {p0, v0}, Lo/Tn;->setCancelable(Z)V

    .line 184
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pJ:I

    invoke-virtual {p0, v1}, Lo/Tn;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const-string v2, "progress"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 185
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->tx:I

    invoke-virtual {p0, v0}, Lo/Tn;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    const-string v1, "title_confirm"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 186
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kz:I

    invoke-virtual {p0, v0}, Lo/Tn;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    const-string v2, "message_confirm"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 187
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mD:I

    invoke-virtual {p0, v0}, Lo/Tn;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v2, "plan_details"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 188
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->bi:I

    invoke-virtual {p0, v0}, Lo/Tn;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    const-string v2, "cancel_button"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 189
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qv:I

    invoke-virtual {p0, v0}, Lo/Tn;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    const-string v2, "retry_button"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 190
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uf:I

    invoke-virtual {p0, v0}, Lo/Tn;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    const-string v2, "upgrade_button"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 193
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/action/SelectPlan;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlanChoice;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/event/session/action/SelectPlan;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/Tn;->n:Ljava/lang/Long;

    .line 195
    invoke-virtual {p0}, Lo/Tn;->n()Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlanChoice;->d()I

    move-result v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlanChoice;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lo/Tn;->i()Ljava/lang/String;

    move-result-object v2

    .line 196
    new-instance v3, Lo/Tn$TaskDescription;

    invoke-direct {v3, p0}, Lo/Tn$TaskDescription;-><init>(Lo/Tn;)V

    check-cast v3, Lo/zU;

    .line 195
    invoke-virtual {v0, v1, p1, v2, v3}, Lo/Am;->e(ILjava/lang/String;Ljava/lang/String;Lo/zU;)V

    :cond_2
    return-void
.end method

.method public static final synthetic c(Lo/Tn;Lcom/netflix/mediaclient/ui/player/PlanChoice;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lo/Tn;->a(Lcom/netflix/mediaclient/ui/player/PlanChoice;)V

    return-void
.end method

.method private final r()V
    .locals 2

    .line 128
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->bi:I

    invoke-virtual {p0, v0}, Lo/Tn;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    new-instance v1, Lo/Tn$StateListAnimator;

    invoke-direct {v1, p0}, Lo/Tn$StateListAnimator;-><init>(Lo/Tn;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uf:I

    invoke-virtual {p0, v0}, Lo/Tn;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    const-string v1, "upgrade_button"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 1

    .line 57
    iget-object v0, p0, Lo/Tn;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-object v0
.end method

.method public final b()Lcom/netflix/cl/model/TrackingInfo;
    .locals 5

    .line 204
    sget-object v0, Lo/Tn;->d:Lo/Tn$Application;

    iget-object v1, p0, Lo/Tn;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-virtual {p0}, Lo/Tn;->i()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lo/Tn;->d:Lo/Tn$Application;

    iget-object v4, p0, Lo/Tn;->b:Ljava/util/List;

    invoke-virtual {v3, v4}, Lo/Tn$Application;->d(Ljava/util/List;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lo/Tn$Application;->a(Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;I)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v0

    return-object v0
.end method

.method public abstract c()V
.end method

.method public final d()Lcom/netflix/mediaclient/ui/player/PlanChoice;
    .locals 1

    .line 59
    iget-object v0, p0, Lo/Tn;->c:Lcom/netflix/mediaclient/ui/player/PlanChoice;

    return-object v0
.end method

.method public final d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .line 219
    invoke-virtual {p0}, Lo/Tn;->getActivity()Lo/Serializable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlanUpgradeDialogFragment"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 224
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 226
    iget-object p1, p0, Lo/Tn;->j:Ljava/lang/Long;

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 227
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 228
    move-object p1, v1

    check-cast p1, Ljava/lang/Long;

    iput-object p1, p0, Lo/Tn;->j:Ljava/lang/Long;

    .line 230
    :cond_1
    iget-object p1, p0, Lo/Tn;->n:Ljava/lang/Long;

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 231
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 232
    check-cast v1, Ljava/lang/Long;

    iput-object v1, p0, Lo/Tn;->n:Ljava/lang/Long;

    .line 235
    :cond_2
    invoke-virtual {p0}, Lo/Tn;->q()I

    move-result p1

    invoke-static {p1, v0}, Lo/adk;->c(II)V

    .line 236
    invoke-virtual {p0}, Lo/Tn;->e()V

    goto :goto_0

    .line 239
    :cond_3
    iget-object v2, p0, Lo/Tn;->j:Ljava/lang/Long;

    if-eqz v2, :cond_4

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 240
    sget-object v4, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    .line 241
    move-object v2, v1

    check-cast v2, Ljava/lang/Long;

    iput-object v2, p0, Lo/Tn;->j:Ljava/lang/Long;

    .line 243
    :cond_4
    iget-object v2, p0, Lo/Tn;->n:Ljava/lang/Long;

    if-eqz v2, :cond_5

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 244
    sget-object v4, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/cl/model/Error;

    move-result-object p1

    invoke-virtual {v4, v2, p1}, Lcom/netflix/cl/ExtLogger;->failedAction(Ljava/lang/Long;Lcom/netflix/cl/model/Error;)Z

    .line 245
    check-cast v1, Ljava/lang/Long;

    iput-object v1, p0, Lo/Tn;->n:Ljava/lang/Long;

    .line 248
    :cond_5
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->oI:I

    invoke-static {p1, v0}, Lo/adk;->c(II)V

    .line 249
    invoke-virtual {p0}, Lo/Tn;->c()V

    :goto_0
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "messageConfirmText"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "planScreensText"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upgradeButtonText"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lo/Tn;->f:Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 139
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    const/4 v0, 0x0

    .line 140
    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lo/Tn;->f:Ljava/lang/Long;

    .line 142
    :cond_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/Presentation;

    invoke-virtual {p0}, Lo/Tn;->g()Lcom/netflix/cl/model/AppView;

    move-result-object v2

    invoke-virtual {p0}, Lo/Tn;->b()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/Tn;->h:Ljava/lang/Long;

    .line 144
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ew:I

    invoke-virtual {p0, v0}, Lo/Tn;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    const-string v1, "devices_streaming"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 145
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qv:I

    invoke-virtual {p0, v0}, Lo/Tn;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    const-string v2, "retry_button"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 147
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->tq:I

    invoke-virtual {p0, v0}, Lo/Tn;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    const-string v2, "title"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 148
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kA:I

    invoke-virtual {p0, v0}, Lo/Tn;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    const-string v2, "message"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 150
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->tx:I

    invoke-virtual {p0, v0}, Lo/Tn;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    const-string v1, "title_confirm"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 151
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kz:I

    invoke-virtual {p0, v0}, Lo/Tn;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    const-string v2, "message_confirm"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 152
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mD:I

    invoke-virtual {p0, v0}, Lo/Tn;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v3, "plan_details"

    invoke-static {v0, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 154
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kz:I

    invoke-virtual {p0, v0}, Lo/Tn;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 156
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->mK:I

    invoke-virtual {p0, p1}, Lo/Tn;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/ImageSwitcher;

    const-string v0, "plan_screens"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object p1, p0, Lo/Tn;->c:Lcom/netflix/mediaclient/ui/player/PlanChoice;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlanChoice;->h()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WEEKS"

    invoke-static {p2, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 160
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ox:I

    goto :goto_0

    .line 162
    :cond_1
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->oy:I

    .line 166
    :goto_0
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->mE:I

    invoke-virtual {p0, p2}, Lo/Tn;->e(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/ImageSwitcher;

    const-string v0, "plan_price"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-static {p1}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object p1

    .line 165
    iget-object v0, p0, Lo/Tn;->c:Lcom/netflix/mediaclient/ui/player/PlanChoice;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlanChoice;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "formatted_localized_price"

    invoke-virtual {p1, v1, v0}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 166
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 168
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->uf:I

    invoke-virtual {p0, p1}, Lo/Tn;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/HorizontalScrollView;

    const-string p2, "upgrade_button"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->uf:I

    invoke-virtual {p0, p1}, Lo/Tn;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/HorizontalScrollView;

    new-instance p2, Lo/Tn$ActionBar;

    invoke-direct {p2, p0}, Lo/Tn$ActionBar;-><init>(Lo/Tn;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/Tn;->m:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/Tn;->m:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/Tn;->m:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/Tn;->m:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public abstract e()V
.end method

.method public final f()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 271
    sget-object v0, Lcom/netflix/cl/model/AppView;->upgradingPlan:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public final g()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 264
    sget-object v0, Lcom/netflix/cl/model/AppView;->planUpgradeConfirmationPrompt:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public abstract h()Z
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public final j()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 257
    sget-object v0, Lcom/netflix/cl/model/AppView;->planUpgradeGate:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-super {p0, p1}, Lo/WebChromeClient;->onCancel(Landroid/content/DialogInterface;)V

    .line 102
    invoke-virtual {p0}, Lo/Tn;->c()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->dI:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/WebChromeClient;->onDestroyView()V

    invoke-virtual {p0}, Lo/Tn;->p()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 96
    invoke-super {p0}, Lo/WebChromeClient;->onStart()V

    .line 97
    invoke-virtual {p0}, Lo/Tn;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 4

    .line 106
    invoke-super {p0}, Lo/WebChromeClient;->onStop()V

    .line 109
    iget-object v0, p0, Lo/Tn;->f:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 110
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    .line 111
    move-object v0, v1

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lo/Tn;->f:Ljava/lang/Long;

    .line 113
    :cond_0
    iget-object v0, p0, Lo/Tn;->h:Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 114
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    .line 115
    move-object v0, v1

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lo/Tn;->h:Ljava/lang/Long;

    .line 117
    :cond_1
    iget-object v0, p0, Lo/Tn;->j:Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 118
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    .line 119
    move-object v0, v1

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lo/Tn;->j:Ljava/lang/Long;

    .line 121
    :cond_2
    iget-object v0, p0, Lo/Tn;->n:Ljava/lang/Long;

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 122
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    .line 123
    check-cast v1, Ljava/lang/Long;

    iput-object v1, p0, Lo/Tn;->n:Ljava/lang/Long;

    :cond_3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-super {p0, p1, p2}, Lo/WebChromeClient;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lo/Tn;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "choices"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    const-string p2, "emptyList()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Lo/Tn;->b:Ljava/util/List;

    .line 79
    sget-object p1, Lo/Tn;->d:Lo/Tn$Application;

    iget-object p2, p0, Lo/Tn;->b:Ljava/util/List;

    invoke-virtual {p1, p2}, Lo/Tn$Application;->e(Ljava/util/List;)Lcom/netflix/mediaclient/ui/player/PlanChoice;

    move-result-object p1

    iput-object p1, p0, Lo/Tn;->c:Lcom/netflix/mediaclient/ui/player/PlanChoice;

    .line 80
    invoke-virtual {p0}, Lo/Tn;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "play_context"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lo/Tn;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 82
    invoke-virtual {p0}, Lo/Tn;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 84
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance p2, Lcom/netflix/cl/model/event/session/Presentation;

    invoke-virtual {p0}, Lo/Tn;->j()Lcom/netflix/cl/model/AppView;

    move-result-object v0

    invoke-virtual {p0}, Lo/Tn;->b()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast p2, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/Tn;->f:Ljava/lang/Long;

    .line 92
    :cond_2
    invoke-direct {p0}, Lo/Tn;->r()V

    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lo/Tn;->m:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public abstract q()I
.end method
