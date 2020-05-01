.class public Lo/acV;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IVoip$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/acV$StateListAnimator;
    }
.end annotation


# static fields
.field private static d:[Ljava/lang/String;


# instance fields
.field private a:Lo/Am;

.field private b:Lcom/netflix/mediaclient/servicemgr/IVoip;

.field private c:Lo/acX;

.field private e:Landroid/widget/ViewFlipper;

.field private f:Lo/acW;

.field private g:Z

.field private h:Landroid/view/View;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;

.field private m:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

.field private n:Lo/acV$StateListAnimator;

.field private o:Z

.field private final s:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.permission.RECORD_AUDIO"

    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS"

    .line 72
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/acV;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lo/acV;->g:Z

    .line 115
    iput-boolean v0, p0, Lo/acV;->k:Z

    .line 117
    new-instance v0, Lo/acV$3;

    invoke-direct {v0, p0}, Lo/acV$3;-><init>(Lo/acV;)V

    iput-object v0, p0, Lo/acV;->s:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lo/acV;)Landroid/os/Handler;
    .locals 0

    .line 56
    iget-object p0, p0, Lo/acV;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "VoipActivity"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "AUTODIAL"

    .line 263
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "AutoDial requested"

    .line 264
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 265
    iput-boolean p1, p0, Lo/acV;->i:Z

    goto :goto_0

    .line 267
    :cond_0
    iput-boolean v1, p0, Lo/acV;->i:Z

    .line 270
    :goto_0
    iget-boolean p1, p0, Lo/acV;->i:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/acV;->a:Lo/Am;

    if-eqz p1, :cond_1

    const-string p1, "Start autodial, service manager exist"

    .line 271
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p0}, Lo/acV;->a()V

    :cond_1
    return-void
.end method

.method private a(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V
    .locals 3

    .line 619
    invoke-virtual {p0}, Lo/acV;->isFinishing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lo/acV;->k:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 624
    :cond_0
    invoke-virtual {p0}, Lo/acV;->isTablet()Z

    move-result v0

    const-string v2, "VoipActivity"

    if-nez v0, :cond_1

    const-string v0, "Phone, force portrait for dial screen"

    .line 625
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    .line 626
    invoke-virtual {p0, v0}, Lo/acV;->setRequestedOrientation(I)V

    .line 629
    :cond_1
    invoke-direct {p0, p1}, Lo/acV;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V

    .line 631
    iget-object p1, p0, Lo/acV;->b:Lcom/netflix/mediaclient/servicemgr/IVoip;

    if-eqz p1, :cond_3

    .line 632
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IVoip;->j()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 633
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lo/aej;->e(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 634
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lo/OnAttachStateChangeListener;->b(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 639
    :cond_2
    invoke-direct {p0}, Lo/acV;->l()V

    goto :goto_0

    :cond_3
    const-string p1, "Error while creating VoIP engine"

    .line 641
    invoke-static {v2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {p0}, Lo/acV;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->fl:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/acV;->c(Ljava/lang/String;)V

    .line 643
    invoke-direct {p0}, Lo/acV;->f()V

    :goto_0
    return-void

    .line 620
    :cond_4
    :goto_1
    iput-boolean v1, p0, Lo/acV;->k:Z

    return-void
.end method

.method static synthetic a(Lo/acV;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lo/acV;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lo/acV;Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lo/acV;->d(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 880
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lo/acV;->d()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 881
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p0, "AUTODIAL"

    const/4 v1, 0x1

    .line 882
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic b(Lo/acV;)Lo/acW;
    .locals 0

    .line 56
    iget-object p0, p0, Lo/acV;->f:Lo/acW;

    return-object p0
.end method

.method static synthetic b(Lo/acV;Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lo/acV;->a(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V

    return-void
.end method

.method static synthetic b()[Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lo/acV;->d:[Ljava/lang/String;

    return-object v0
.end method

.method private c(I)V
    .locals 1

    .line 419
    invoke-virtual {p0, p1}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 421
    iget-object v0, p0, Lo/acV;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "VoipActivity"

    .line 282
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Landroid/content/Intent;)V

    const-string v1, "from"

    .line 290
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 291
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;

    move-result-object v1

    iput-object v1, p0, Lo/acV;->l:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "From found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/acV;->l:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "entry"

    .line 294
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 295
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    move-result-object p1

    iput-object p1, p0, Lo/acV;->m:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    .line 296
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry point found: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/acV;->m:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private c(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V
    .locals 1

    .line 669
    iget-object v0, p0, Lo/acV;->a:Lo/Am;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Am;->m()Lo/hF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lo/acV;->a:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->m()Lo/hF;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/hF;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object p1

    iput-object p1, p0, Lo/acV;->b:Lcom/netflix/mediaclient/servicemgr/IVoip;

    .line 673
    :cond_0
    iget-object p1, p0, Lo/acV;->b:Lcom/netflix/mediaclient/servicemgr/IVoip;

    if-eqz p1, :cond_1

    .line 674
    invoke-interface {p1, p0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->a(Lcom/netflix/mediaclient/servicemgr/IVoip$TaskDescription;)V

    :cond_1
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .line 612
    new-instance v0, Lo/hK;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v2, p1, v1, v1}, Lo/hK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 613
    iget-object p1, p0, Lo/acV;->handler:Landroid/os/Handler;

    invoke-static {p0, p1, v0, v1}, Lo/CalendarViewLegacyDelegate;->b(Landroid/content/Context;Landroid/os/Handler;Lo/hK;Ljava/lang/Runnable;)Lo/ScrollBarDrawable$ActionBar;

    move-result-object p1

    .line 614
    invoke-virtual {p0, p1}, Lo/acV;->displayDialog(Lo/ScrollBarDrawable$ActionBar;)Landroid/app/Dialog;

    return-void
.end method

.method static synthetic c(Lo/acV;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lo/acV;->o()V

    return-void
.end method

.method public static d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 872
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lo/acZ;

    goto :goto_0

    :cond_0
    const-class v0, Lo/acV;

    :goto_0
    return-object v0
.end method

.method private d(Landroid/content/Intent;)V
    .locals 0

    .line 257
    invoke-direct {p0, p1}, Lo/acV;->c(Landroid/content/Intent;)V

    .line 258
    invoke-direct {p0, p1}, Lo/acV;->a(Landroid/content/Intent;)V

    return-void
.end method

.method private d(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lo/acV;->a:Lo/Am;

    .line 352
    iget-object p1, p0, Lo/acV;->a:Lo/Am;

    invoke-virtual {p1}, Lo/Am;->o()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object p1

    iput-object p1, p0, Lo/acV;->b:Lcom/netflix/mediaclient/servicemgr/IVoip;

    .line 354
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p1

    .line 355
    invoke-direct {p0, p1}, Lo/acV;->d(Z)V

    .line 356
    iget-object p1, p0, Lo/acV;->b:Lcom/netflix/mediaclient/servicemgr/IVoip;

    if-eqz p1, :cond_0

    .line 357
    invoke-interface {p1, p0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->a(Lcom/netflix/mediaclient/servicemgr/IVoip$TaskDescription;)V

    .line 359
    :cond_0
    invoke-direct {p0}, Lo/acV;->g()V

    .line 361
    iget-boolean p1, p0, Lo/acV;->o:Z

    if-eqz p1, :cond_1

    const-string p1, "VoipActivity"

    const-string p2, "Verification dialog was previosly displayed, show it again"

    .line 362
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-direct {p0}, Lo/acV;->m()V

    :cond_1
    return-void
.end method

.method static synthetic d(Lo/acV;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lo/acV;->f()V

    return-void
.end method

.method private d(Z)V
    .locals 4

    .line 374
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->x:I

    invoke-virtual {p0, v0}, Lo/acV;->setContentView(I)V

    .line 376
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->dx:I

    invoke-direct {p0, v0}, Lo/acV;->c(I)V

    .line 377
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->dw:I

    invoke-direct {p0, v0}, Lo/acV;->c(I)V

    .line 378
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->dF:I

    invoke-direct {p0, v0}, Lo/acV;->c(I)V

    .line 379
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->dh:I

    invoke-direct {p0, v0}, Lo/acV;->c(I)V

    .line 380
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->du:I

    invoke-direct {p0, v0}, Lo/acV;->c(I)V

    .line 381
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->dy:I

    invoke-direct {p0, v0}, Lo/acV;->c(I)V

    .line 382
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->dC:I

    invoke-direct {p0, v0}, Lo/acV;->c(I)V

    .line 383
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->dB:I

    invoke-direct {p0, v0}, Lo/acV;->c(I)V

    .line 384
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->di:I

    invoke-direct {p0, v0}, Lo/acV;->c(I)V

    .line 385
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->dt:I

    invoke-direct {p0, v0}, Lo/acV;->c(I)V

    .line 387
    invoke-virtual {p0}, Lo/acV;->getSupportActionBar()Lo/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Lo/Fragment;->b()V

    .line 388
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cP:I

    invoke-virtual {p0, v0}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lo/acV;->e:Landroid/widget/ViewFlipper;

    .line 389
    new-instance v0, Lo/acX;

    invoke-direct {v0, p0}, Lo/acX;-><init>(Lo/acV;)V

    iput-object v0, p0, Lo/acV;->c:Lo/acX;

    .line 390
    new-instance v0, Lo/acW;

    invoke-direct {v0, p0}, Lo/acW;-><init>(Lo/acV;)V

    iput-object v0, p0, Lo/acV;->f:Lo/acW;

    .line 392
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->dh:I

    invoke-virtual {p0, v0}, Lo/acV;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/acV;->h:Landroid/view/View;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "VoipActivity"

    if-nez p1, :cond_1

    .line 394
    iget-object v3, p0, Lo/acV;->a:Lo/Am;

    invoke-virtual {v3}, Lo/Am;->m()Lo/hF;

    move-result-object v3

    invoke-interface {v3}, Lo/hF;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "VOIP is disabled, do not show dial button on landing page!"

    .line 398
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object p1, p0, Lo/acV;->h:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    new-array v3, v0, [Ljava/lang/Object;

    .line 395
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "VOIP is enabled, show dial button on landing page! This is force enabled: %b"

    invoke-static {v2, p1, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 396
    iget-object p1, p0, Lo/acV;->h:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 402
    :goto_1
    iget-object p1, p0, Lo/acV;->c:Lo/acX;

    invoke-virtual {p1}, Lo/acX;->b()V

    .line 403
    iget-object p1, p0, Lo/acV;->f:Lo/acW;

    iget-object v3, p0, Lo/acV;->a:Lo/Am;

    invoke-virtual {v3}, Lo/Am;->o()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lo/acV;->a:Lo/Am;

    invoke-virtual {v3}, Lo/Am;->o()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/IVoip;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Lo/acW;->a(Z)V

    .line 404
    iget-object p1, p0, Lo/acV;->f:Lo/acW;

    invoke-virtual {p1}, Lo/acW;->d()V

    .line 406
    iget-object p1, p0, Lo/acV;->b:Lcom/netflix/mediaclient/servicemgr/IVoip;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IVoip;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Call is in progress, move to dialer"

    .line 407
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-direct {p0}, Lo/acV;->n()V

    goto :goto_3

    .line 409
    :cond_3
    iget-boolean p1, p0, Lo/acV;->g:Z

    if-eqz p1, :cond_4

    const-string p1, "Dial was requested in Landscape mode, dialing now"

    .line 410
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iput-boolean v1, p0, Lo/acV;->g:Z

    .line 412
    invoke-direct {p0}, Lo/acV;->o()V

    goto :goto_3

    :cond_4
    const-string p1, "Call is not in progress, leave on landing page"

    .line 414
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method static synthetic d(Lo/acV;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lo/acV;->o:Z

    return p1
.end method

.method public static e(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 876
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lo/acV;->d()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method static synthetic e(Lo/acV;)Lcom/netflix/mediaclient/servicemgr/IVoip;
    .locals 0

    .line 56
    iget-object p0, p0, Lo/acV;->b:Lcom/netflix/mediaclient/servicemgr/IVoip;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 464
    invoke-direct {p0}, Lo/acV;->j()V

    .line 466
    invoke-virtual {p0}, Lo/acV;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VoipActivity"

    const-string v1, "Phone, release lock on portrait for dial screen"

    .line 467
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 468
    invoke-virtual {p0, v0}, Lo/acV;->setRequestedOrientation(I)V

    .line 471
    :cond_0
    iget-object v0, p0, Lo/acV;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    const/4 v0, 0x0

    .line 472
    iput-boolean v0, p0, Lo/acV;->j:Z

    return-void
.end method

.method private g()V
    .locals 2

    const-string v0, "VoipActivity"

    const-string v1, "Back to ContactUsActivity"

    .line 198
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-boolean v1, p0, Lo/acV;->j:Z

    if-eqz v1, :cond_0

    const-string v1, "Dialer visible, report back to "

    .line 200
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "Help section visible, report new help request session started"

    .line 205
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private h()V
    .locals 2

    .line 155
    invoke-virtual {p0}, Lo/acV;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0}, Lo/acV;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private i()I
    .locals 1

    const/high16 v0, 0x480000

    return v0
.end method

.method private j()V
    .locals 2

    .line 159
    invoke-virtual {p0}, Lo/acV;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0}, Lo/acV;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private k()Z
    .locals 1

    .line 685
    invoke-virtual {p0}, Lo/acV;->getServiceManager()Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 686
    invoke-virtual {p0}, Lo/acV;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->i()Lo/cz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {p0}, Lo/acV;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->i()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->z()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 688
    invoke-virtual {p0}, Lo/acV;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->i()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->z()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isShowConfirmationDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private l()V
    .locals 3

    .line 651
    iget-object v0, p0, Lo/acV;->b:Lcom/netflix/mediaclient/servicemgr/IVoip;

    const-string v1, "VoipActivity"

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Call is already in progress, what to start?"

    .line 652
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "startDial:: Start call"

    .line 654
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :try_start_0
    iget-object v0, p0, Lo/acV;->f:Lo/acW;

    invoke-virtual {v0}, Lo/acW;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed to dial"

    .line 658
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 659
    invoke-virtual {p0, v1, v1, v0}, Lo/acV;->b(Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private m()V
    .locals 8

    const/4 v0, 0x1

    .line 693
    iput-boolean v0, p0, Lo/acV;->o:Z

    .line 694
    new-instance v5, Lo/acV$5;

    invoke-direct {v5, p0}, Lo/acV$5;-><init>(Lo/acV;)V

    .line 704
    new-instance v7, Lo/acV$1;

    invoke-direct {v7, p0}, Lo/acV$1;-><init>(Lo/acV;)V

    .line 713
    new-instance v0, Lo/CalendarViewLegacyDelegate$Activity;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->fg:I

    .line 715
    invoke-virtual {p0, v1}, Lo/acV;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ff:I

    .line 716
    invoke-virtual {p0, v1}, Lo/acV;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->fh:I

    .line 718
    invoke-virtual {p0, v1}, Lo/acV;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lo/CalendarViewLegacyDelegate$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 721
    iget-object v1, p0, Lo/acV;->handler:Landroid/os/Handler;

    invoke-static {p0, v1, v0, v2}, Lo/CalendarViewLegacyDelegate;->b(Landroid/content/Context;Landroid/os/Handler;Lo/hK;Ljava/lang/Runnable;)Lo/ScrollBarDrawable$ActionBar;

    move-result-object v0

    .line 723
    invoke-virtual {p0, v0}, Lo/acV;->displayDialog(Lo/ScrollBarDrawable$ActionBar;)Landroid/app/Dialog;

    return-void
.end method

.method private n()V
    .locals 3

    .line 477
    invoke-direct {p0}, Lo/acV;->h()V

    .line 479
    invoke-virtual {p0}, Lo/acV;->isTablet()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "VoipActivity"

    const-string v2, "Phone, lock on portrait for dial screen"

    .line 480
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {p0, v1}, Lo/acV;->setRequestedOrientation(I)V

    .line 484
    :cond_0
    iget-object v0, p0, Lo/acV;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 485
    iput-boolean v1, p0, Lo/acV;->j:Z

    return-void
.end method

.method private o()V
    .locals 3

    const-string v0, "VoipActivity"

    const-string v1, "fetching voip config before dialing"

    .line 568
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    sget-object v1, Lo/acV;->d:[Ljava/lang/String;

    invoke-static {p0, v1}, Lo/aej;->e(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Record audio permission are not granted. Requested them."

    .line 572
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-direct {p0}, Lo/acV;->r()V

    goto :goto_0

    :cond_0
    const-string v1, "Record audio permission has already been granted. Start dialing."

    .line 576
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-boolean v1, p0, Lo/acV;->j:Z

    if-nez v1, :cond_2

    .line 580
    invoke-virtual {p0}, Lo/acV;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lo/acV;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "We are in Landscape, switch to portrait first and then dial"

    .line 581
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 582
    iput-boolean v0, p0, Lo/acV;->g:Z

    .line 583
    invoke-direct {p0}, Lo/acV;->n()V

    return-void

    .line 587
    :cond_1
    invoke-direct {p0}, Lo/acV;->n()V

    const/4 v0, 0x0

    .line 588
    iput-boolean v0, p0, Lo/acV;->k:Z

    .line 590
    iget-object v0, p0, Lo/acV;->a:Lo/Am;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lo/Am;->m()Lo/hF;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 591
    iget-object v0, p0, Lo/acV;->a:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->m()Lo/hF;

    move-result-object v0

    new-instance v1, Lo/acV$4;

    invoke-direct {v1, p0}, Lo/acV$4;-><init>(Lo/acV;)V

    invoke-interface {v0, v1}, Lo/hF;->d(Lo/cV;)V

    goto :goto_0

    :cond_2
    const-string v1, "fetchConfigAndDial:: Already in dialer"

    .line 606
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private r()V
    .locals 3

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 848
    invoke-static {p0, v0}, Lo/OnAttachStateChangeListener;->b(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VoipActivity"

    const-string v1, "Displaying audio permission rationale to provide additional context."

    .line 853
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v0, p0, Lo/acV;->c:Lo/acX;

    invoke-virtual {v0}, Lo/acX;->a()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->K:I

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    new-instance v2, Lo/acV$7;

    invoke-direct {v2, p0}, Lo/acV$7;-><init>(Lo/acV;)V

    .line 858
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 864
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    .line 867
    :cond_0
    sget-object v0, Lo/acV;->d:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lo/OnAttachStateChangeListener;->b(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 552
    iget-object v0, p0, Lo/acV;->a:Lo/Am;

    const-string v1, "VoipActivity"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Am;->m()Lo/hF;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/acV;->a:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->m()Lo/hF;

    move-result-object v0

    invoke-interface {v0}, Lo/hF;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "startDial Failed:: a GSM call is currently ongoing"

    .line 553
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {p0}, Lo/acV;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->fe:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/acV;->c(Ljava/lang/String;)V

    return-void

    .line 558
    :cond_0
    invoke-direct {p0}, Lo/acV;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "User is in test cell to display confirmation dialog"

    .line 559
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-direct {p0}, Lo/acV;->m()V

    goto :goto_0

    :cond_1
    const-string v0, "Start call"

    .line 562
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-direct {p0}, Lo/acV;->o()V

    :goto_0
    return-void
.end method

.method public a(Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;)V
    .locals 1

    .line 448
    invoke-virtual {p0}, Lo/acV;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 453
    :cond_0
    iget-boolean p1, p0, Lo/acV;->j:Z

    const-string v0, "VoipActivity"

    if-eqz p1, :cond_1

    const-string p1, "callDisconnected:: Back to landing page contact us"

    .line 454
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-direct {p0}, Lo/acV;->f()V

    goto :goto_0

    :cond_1
    const-string p1, "callDisconnected:: Already back to landing page contact us"

    .line 457
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :goto_0
    iget-object p1, p0, Lo/acV;->f:Lo/acW;

    invoke-virtual {p1}, Lo/acW;->f()V

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;)V
    .locals 0

    .line 428
    invoke-virtual {p0}, Lo/acV;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 432
    :cond_0
    iget-object p1, p0, Lo/acV;->f:Lo/acW;

    invoke-virtual {p1}, Lo/acW;->g()V

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;Ljava/lang/String;I)V
    .locals 0

    .line 524
    invoke-virtual {p0}, Lo/acV;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 528
    :cond_0
    iget-boolean p1, p0, Lo/acV;->j:Z

    const-string p2, "VoipActivity"

    if-eqz p1, :cond_1

    const-string p1, "callFailed:: Back to landing page contact us"

    .line 529
    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-direct {p0}, Lo/acV;->f()V

    goto :goto_0

    :cond_1
    const-string p1, "callFailed:: Already back to landing page contact us"

    .line 532
    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :goto_0
    iget-object p1, p0, Lo/acV;->f:Lo/acW;

    if-eqz p1, :cond_2

    .line 536
    invoke-virtual {p1}, Lo/acW;->f()V

    :cond_2
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 543
    invoke-virtual {p0}, Lo/acV;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Lo/acV;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method c()Lcom/netflix/mediaclient/servicemgr/IVoip;
    .locals 1

    .line 778
    iget-object v0, p0, Lo/acV;->b:Lcom/netflix/mediaclient/servicemgr/IVoip;

    return-object v0
.end method

.method public c(Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;)V
    .locals 1

    .line 508
    invoke-virtual {p0}, Lo/acV;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 513
    :cond_0
    iget-boolean p1, p0, Lo/acV;->j:Z

    const-string v0, "VoipActivity"

    if-eqz p1, :cond_1

    const-string p1, "callEnded:: Back to landing page contact us"

    .line 514
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-direct {p0}, Lo/acV;->f()V

    goto :goto_0

    :cond_1
    const-string p1, "callEnded:: Already back to landing page contact us"

    .line 517
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public createManagerStatusListener()Lo/zT;
    .locals 1

    .line 334
    new-instance v0, Lo/acV$2;

    invoke-direct {v0, p0}, Lo/acV$2;-><init>(Lo/acV;)V

    return-object v0
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;)V
    .locals 0

    .line 438
    invoke-virtual {p0}, Lo/acV;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 442
    :cond_0
    iget-object p1, p0, Lo/acV;->f:Lo/acW;

    invoke-virtual {p1}, Lo/acW;->b()V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 782
    iput-boolean v0, p0, Lo/acV;->k:Z

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;)V
    .locals 1

    .line 491
    invoke-virtual {p0}, Lo/acV;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 496
    :cond_0
    iget-boolean p1, p0, Lo/acV;->j:Z

    const-string v0, "VoipActivity"

    if-eqz p1, :cond_1

    const-string p1, "networkFailed:: Back to landing page contact us"

    .line 497
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-direct {p0}, Lo/acV;->f()V

    goto :goto_0

    :cond_1
    const-string p1, "networkFailed:: Already back to landing page contact us"

    .line 500
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :goto_0
    iget-object p1, p0, Lo/acV;->f:Lo/acW;

    invoke-virtual {p1}, Lo/acW;->f()V

    return-void
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 774
    sget-object v0, Lcom/netflix/cl/model/AppView;->contactUs:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public hasUpAction()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 126
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "VoipActivity"

    const-string v1, "onCreate"

    .line 127
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Lo/acV;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/acV;->d(Landroid/content/Intent;)V

    .line 129
    new-instance v0, Lo/acV$StateListAnimator;

    invoke-direct {v0, p0, p0}, Lo/acV$StateListAnimator;-><init>(Lo/acV;Landroid/content/Context;)V

    iput-object v0, p0, Lo/acV;->n:Lo/acV$StateListAnimator;

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, v0}, Lo/acV;->setVolumeControlStream(I)V

    .line 131
    invoke-virtual {p0}, Lo/acV;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lo/acV;->n:Lo/acV$StateListAnimator;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    if-eqz p1, :cond_0

    const-string v1, "com.netflix.mediaclient.ui.voip.verification_dialog"

    .line 133
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lo/acV;->o:Z

    const-string v1, "com.netflix.mediaclient.ui.voip.dial.requested"

    .line 134
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lo/acV;->g:Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 308
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onDestroy()V

    .line 310
    iget-object v0, p0, Lo/acV;->f:Lo/acW;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Lo/acW;->c()V

    .line 314
    :cond_0
    iget-object v0, p0, Lo/acV;->c:Lo/acX;

    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {v0}, Lo/acX;->d()V

    .line 318
    :cond_1
    iget-object v0, p0, Lo/acV;->b:Lcom/netflix/mediaclient/servicemgr/IVoip;

    if-eqz v0, :cond_3

    .line 319
    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->b(Lcom/netflix/mediaclient/servicemgr/IVoip$TaskDescription;)Z

    .line 321
    iget-object v0, p0, Lo/acV;->b:Lcom/netflix/mediaclient/servicemgr/IVoip;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 322
    iget-object v0, p0, Lo/acV;->a:Lo/Am;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lo/Am;->m()Lo/hF;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lo/acV;->a:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->m()Lo/hF;

    move-result-object v0

    invoke-interface {v0}, Lo/hF;->b()V

    :cond_2
    const/4 v0, 0x0

    .line 326
    iput-object v0, p0, Lo/acV;->b:Lcom/netflix/mediaclient/servicemgr/IVoip;

    .line 329
    :cond_3
    invoke-virtual {p0}, Lo/acV;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lo/acV;->n:Lo/acV$StateListAnimator;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 248
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 249
    invoke-virtual {p0}, Lo/acV;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/acV;->d(Landroid/content/Intent;)V

    .line 251
    iget-object p1, p0, Lo/acV;->a:Lo/Am;

    if-eqz p1, :cond_0

    .line 252
    invoke-direct {p0}, Lo/acV;->g()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    if-nez p1, :cond_3

    const-string p1, "VoipActivity"

    const-string v0, "Received response for Audio permission request."

    .line 817
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    .line 820
    invoke-static {p1, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 822
    :cond_0
    array-length p2, p3

    :goto_1
    if-ge v1, p2, :cond_1

    aget v0, p3, v1

    .line 823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x2

    .line 826
    invoke-static {p3, p2}, Lo/aej;->a([II)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "Audio permission has now been granted. Go to dialer..."

    .line 827
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-direct {p0}, Lo/acV;->o()V

    goto :goto_2

    :cond_2
    const-string p2, "Audio permission was NOT granted."

    .line 831
    invoke-static {p1, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object p1, p0, Lo/acV;->c:Lo/acX;

    invoke-virtual {p1}, Lo/acX;->a()Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->N:I

    const/4 p3, -0x1

    invoke-static {p1, p2, p3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_2

    .line 836
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :goto_2
    return-void
.end method

.method public declared-synchronized onResume()V
    .locals 1

    monitor-enter p0

    .line 148
    :try_start_0
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onResume()V

    .line 150
    invoke-virtual {p0}, Lo/acV;->getServiceManager()Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/acV;->o:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0}, Lo/acV;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 140
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "VoipActivity"

    const-string v1, "Saving dialog state..."

    .line 141
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-boolean v0, p0, Lo/acV;->o:Z

    const-string v1, "com.netflix.mediaclient.ui.voip.verification_dialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 143
    iget-boolean v0, p0, Lo/acV;->g:Z

    const-string v1, "com.netflix.mediaclient.ui.voip.dial.requested"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 167
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onStart()V

    .line 169
    iget-object v0, p0, Lo/acV;->a:Lo/Am;

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lo/acV;->g()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 176
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onStop()V

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lo/acV;->m:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    .line 186
    iget-boolean v0, p0, Lo/acV;->j:Z

    return-void
.end method

.method public performAction(Landroid/view/View;)V
    .locals 2

    .line 733
    iget-object v0, p0, Lo/acV;->c:Lo/acX;

    invoke-virtual {v0, p1}, Lo/acX;->b(Landroid/view/View;)Z

    move-result v0

    const-string v1, "VoipActivity"

    if-eqz v0, :cond_0

    const-string p1, "Handled by landing page"

    .line 734
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 735
    :cond_0
    iget-object v0, p0, Lo/acV;->f:Lo/acW;

    invoke-virtual {v0, p1}, Lo/acW;->b(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Handled by dialer page"

    .line 736
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "Handled by nobody!"

    .line 738
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public performUpAction()V
    .locals 2

    .line 787
    invoke-virtual {p0}, Lo/acV;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/acV;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 788
    invoke-static {}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c()V

    .line 790
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 798
    :try_start_0
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->performUpAction()V

    .line 799
    invoke-virtual {p0}, Lo/acV;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    const-string v0, "VoipActivity"

    const-string v1, "Running app in broken state, go for relaunch..."

    .line 801
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-virtual {p0}, Lo/acV;->finish()V

    goto :goto_1

    .line 805
    :cond_1
    invoke-virtual {p0}, Lo/acV;->onBackPressed()V

    :goto_1
    return-void
.end method

.method public shouldFinishOnManagerError()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldStartLaunchActivityIfVisibleOnManagerUnavailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showMdxInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showSettingsInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showSignOutInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
