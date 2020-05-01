.class public Lo/abL;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source ""


# instance fields
.field private a:Lo/abS;

.field private b:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

.field private c:Lo/Am;

.field private d:Lo/abK;

.field private e:Landroid/widget/ViewFlipper;

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    return-void
.end method

.method public static b(Z)Z
    .locals 0

    return p0
.end method

.method public static c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)Landroid/content/Intent;
    .locals 2

    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lo/abL;->i()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 53
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string p1, "eog"

    const-string v0, "adding clear_task flag"

    .line 55
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x8000

    .line 56
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method

.method private d(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lo/abL;->c:Lo/Am;

    .line 193
    iget-object p1, p0, Lo/abL;->c:Lo/Am;

    invoke-virtual {p1}, Lo/Am;->J()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object p1

    iput-object p1, p0, Lo/abL;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    .line 194
    invoke-direct {p0}, Lo/abL;->h()V

    return-void
.end method

.method static synthetic e(Lo/abL;Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lo/abL;->d(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private h()V
    .locals 2

    .line 198
    invoke-virtual {p0}, Lo/abL;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "eog"

    const-string v1, "cannot proceed with eog alert. "

    .line 199
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 203
    :cond_0
    iget v0, p0, Lo/abL;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lo/abL;->k()I

    move-result v0

    :goto_0
    iput v0, p0, Lo/abL;->j:I

    .line 204
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->aW:I

    invoke-virtual {p0, v0}, Lo/abL;->setContentView(I)V

    .line 206
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fI:I

    invoke-virtual {p0, v0}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lo/abL;->e:Landroid/widget/ViewFlipper;

    .line 207
    invoke-direct {p0}, Lo/abL;->o()V

    .line 209
    new-instance v0, Lo/abK;

    invoke-direct {v0, p0}, Lo/abK;-><init>(Lo/abL;)V

    iput-object v0, p0, Lo/abL;->d:Lo/abK;

    .line 210
    new-instance v0, Lo/abS;

    invoke-direct {v0, p0}, Lo/abS;-><init>(Lo/abL;)V

    iput-object v0, p0, Lo/abL;->a:Lo/abS;

    .line 212
    iget-object v0, p0, Lo/abL;->d:Lo/abK;

    invoke-virtual {v0}, Lo/abK;->a()V

    .line 213
    iget-object v0, p0, Lo/abL;->a:Lo/abS;

    invoke-virtual {v0}, Lo/abS;->c()V

    .line 215
    iget v0, p0, Lo/abL;->i:I

    iget-object v1, p0, Lo/abL;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    invoke-static {v0, v1}, Lo/abR;->d(ILcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    invoke-virtual {p0}, Lo/abL;->d()V

    .line 219
    :cond_2
    iget-object v0, p0, Lo/abL;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->isBlocking()Z

    move-result v0

    invoke-static {v0}, Lo/abL;->b(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 220
    invoke-direct {p0}, Lo/abL;->m()V

    :cond_3
    return-void
.end method

.method private static i()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 62
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lo/abQ;

    goto :goto_0

    :cond_0
    const-class v0, Lo/abL;

    :goto_0
    return-object v0
.end method

.method private k()I
    .locals 4

    .line 302
    iget-object v0, p0, Lo/abL;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 303
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->currentPlanId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->currentPlanId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->sdPlanPlanId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 310
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->currentPlanId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->hdPlanPlanId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    return v0

    .line 313
    :cond_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->currentPlanId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->uhdPlanPlanId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method private l()I
    .locals 2

    .line 225
    iget-object v0, p0, Lo/abL;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    invoke-static {v0}, Lo/abR;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {p0}, Lo/abL;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/adq;->l(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "eog"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/abL;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/abR;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "returning phone layout for cell5 tablet bcoz size too small"

    .line 228
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->bf:I

    return v0

    :cond_0
    const-string v0, "use tablet landing page"

    .line 231
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->bd:I

    return v0

    .line 234
    :cond_1
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->bf:I

    return v0

    .line 237
    :cond_2
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->be:I

    goto :goto_0

    :cond_3
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->bb:I

    :goto_0
    return v0
.end method

.method private m()V
    .locals 2

    .line 321
    invoke-virtual {p0}, Lo/abL;->c()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    const/4 v1, 0x1

    .line 322
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->isDirty:Z

    const-string v0, "eog"

    const-string v1, "eogAlert marked dirty; can\'t use same data again"

    .line 323
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private n()I
    .locals 2

    .line 242
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p0}, Lo/abL;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/adq;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/abL;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/abR;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->bi:I

    return v0

    :cond_0
    const-string v0, "eog"

    const-string v1, "use tablet plan page"

    .line 246
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->bh:I

    return v0

    .line 250
    :cond_1
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->bc:I

    return v0
.end method

.method private o()V
    .locals 4

    .line 256
    invoke-virtual {p0}, Lo/abL;->getApplicationContext()Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lo/abL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 258
    invoke-direct {p0}, Lo/abL;->l()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 259
    iget-object v3, p0, Lo/abL;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 260
    invoke-direct {p0}, Lo/abL;->n()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lo/abL;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 132
    invoke-virtual {p0}, Lo/abL;->handleBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "eog"

    const-string v1, "finish"

    .line 133
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Lo/abL;->finish()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 279
    iget-object v0, p0, Lo/abL;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    return-void
.end method

.method public c()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;
    .locals 1

    .line 265
    iget-object v0, p0, Lo/abL;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    if-eqz v0, :cond_0

    return-object v0

    .line 268
    :cond_0
    iget-object v0, p0, Lo/abL;->c:Lo/Am;

    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {v0}, Lo/Am;->J()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    iput-object v0, p0, Lo/abL;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    .line 271
    :cond_1
    iget-object v0, p0, Lo/abL;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    return-object v0
.end method

.method public createManagerStatusListener()Lo/zT;
    .locals 1

    .line 144
    new-instance v0, Lo/abL$4;

    invoke-direct {v0, p0}, Lo/abL$4;-><init>(Lo/abL;)V

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 275
    iget-object v0, p0, Lo/abL;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    return-void
.end method

.method public e()I
    .locals 1

    .line 40
    iget v0, p0, Lo/abL;->j:I

    return v0
.end method

.method public e(I)V
    .locals 0

    .line 43
    iput p1, p0, Lo/abL;->j:I

    return-void
.end method

.method public f()Z
    .locals 3

    .line 294
    iget-object v0, p0, Lo/abL;->c:Lo/Am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/abL;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v1, "eog"

    const-string v2, "fields are null - can\'t proceed"

    .line 296
    invoke-static {v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public g()V
    .locals 4

    .line 328
    iget-object v0, p0, Lo/abL;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    .line 331
    invoke-virtual {p0}, Lo/abL;->getServiceManager()Lo/Am;

    move-result-object v1

    if-eqz v1, :cond_5

    if-nez v0, :cond_0

    goto :goto_1

    .line 336
    :cond_0
    iget v1, p0, Lo/abL;->j:I

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->uhdPlanPlanId()Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->uhdPlanPlanTier()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 342
    :cond_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->hdPlanPlanId()Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->hdPlanPlanTier()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 338
    :cond_3
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->sdPlanPlanId()Ljava/lang/String;

    move-result-object v2

    .line 339
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->sdPlanPlanTier()Ljava/lang/String;

    move-result-object v0

    .line 356
    :goto_0
    invoke-static {v2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 360
    invoke-direct {p0}, Lo/abL;->m()V

    .line 361
    invoke-virtual {p0}, Lo/abL;->getServiceManager()Lo/Am;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lo/Am;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    const-string v0, "eog"

    const-string v1, "serviceMgr or eogAlert are null"

    .line 332
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 284
    sget-object v0, Lcom/netflix/cl/model/AppView;->eogPrompt:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 4

    const-string v0, "eog"

    const-string v1, "handleBackPressed"

    .line 110
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lo/abL;->f()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 115
    :cond_0
    iget-object v1, p0, Lo/abL;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    iget-object v3, p0, Lo/abL;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    invoke-static {v1, v3}, Lo/abR;->b(ILcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {p0}, Lo/abL;->b()V

    return v2

    .line 120
    :cond_1
    iget-object v1, p0, Lo/abL;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->isBlocking()Z

    move-result v1

    invoke-static {v1}, Lo/abL;->b(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "finishing"

    .line 121
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Lo/abL;->j()V

    .line 123
    invoke-virtual {p0}, Lo/abL;->finish()V

    return v2

    .line 127
    :cond_2
    invoke-virtual {p0}, Lo/abL;->j()V

    .line 128
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleBackPressed()Z

    move-result v0

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()V
    .locals 3

    .line 366
    invoke-virtual {p0}, Lo/abL;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "eog"

    const-string v1, "serviceMgr or eogAlert are null"

    .line 367
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 374
    :cond_0
    invoke-virtual {p0}, Lo/abL;->getServiceManager()Lo/Am;

    move-result-object v0

    iget-object v1, p0, Lo/abL;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->messageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/abL;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->skipBtnImpressionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/Am;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "com.netflix.mediaclient.ui.ums.eog.pageIndex"

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/abL;->i:I

    const-string v0, "com.netflix.mediaclient.ui.ums.eog.planIndex"

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lo/abL;->j:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 73
    iput p1, p0, Lo/abL;->i:I

    const/4 p1, -0x1

    .line 74
    iput p1, p0, Lo/abL;->j:I

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 80
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "eog"

    const-string v1, "Saving eog state..."

    .line 81
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lo/abL;->e:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "com.netflix.mediaclient.ui.ums.eog.pageIndex"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    invoke-virtual {p0}, Lo/abL;->e()I

    move-result v0

    const-string v1, "com.netflix.mediaclient.ui.ums.eog.planIndex"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public performAction(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 165
    iget-object v1, p0, Lo/abL;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "performAction currentChildIndex: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eog"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lo/abL;->d:Lo/abK;

    invoke-virtual {v0, p1}, Lo/abK;->e(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Handled by landing page"

    .line 168
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lo/abL;->a:Lo/abS;

    invoke-virtual {v0, p1}, Lo/abS;->e(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Handled by plan page"

    .line 170
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "Handled by nobody!"

    .line 172
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public performPlanSelection(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 182
    iget-object v1, p0, Lo/abL;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "performPlanSelection currentChildIndex: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eog"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lo/abL;->a:Lo/abS;

    invoke-virtual {v0, p1}, Lo/abS;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Handled by plan page"

    .line 185
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Handled by nobody!"

    .line 187
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public performUpAction()V
    .locals 2

    .line 89
    invoke-virtual {p0}, Lo/abL;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lo/abL;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->isBlocking()Z

    move-result v0

    invoke-static {v0}, Lo/abL;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lo/abL;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    iget-object v1, p0, Lo/abL;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    invoke-static {v0, v1}, Lo/abR;->b(ILcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p0}, Lo/abL;->b()V

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p0}, Lo/abL;->j()V

    const-string v0, "eog"

    const-string v1, "finishing activity"

    .line 98
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Lo/abL;->finish()V

    :goto_0
    return-void

    .line 104
    :cond_2
    invoke-virtual {p0}, Lo/abL;->j()V

    .line 105
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->performUpAction()V

    return-void
.end method
