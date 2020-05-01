.class public Lo/PY;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 2

    .line 463
    new-instance v0, Lo/PendingIntent$Activity;

    sget v1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v0, p0, v1}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    sget p0, Lcom/netflix/mediaclient/ui/R$AssistContent;->nl:I

    .line 464
    invoke-virtual {v0, p0}, Lo/PendingIntent$Activity;->c(I)Lo/PendingIntent$Activity;

    move-result-object p0

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    new-instance v1, Lo/PY$8;

    invoke-direct {v1}, Lo/PY$8;-><init>()V

    .line 465
    invoke-virtual {p0, v0, v1}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p0

    .line 471
    invoke-virtual {p0}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)Landroid/app/Dialog;
    .locals 3

    .line 290
    new-instance v0, Lo/PendingIntent$Activity;

    sget v1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v0, p0, v1}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mR:I

    .line 291
    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->a(I)Lo/PendingIntent$Activity;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mP:I

    .line 292
    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->c(I)Lo/PendingIntent$Activity;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    new-instance v2, Lo/PY$4;

    invoke-direct {v2}, Lo/PY$4;-><init>()V

    .line 293
    invoke-virtual {v0, v1, v2}, Lo/PendingIntent$Activity;->c(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mg:I

    new-instance v2, Lo/PY$16;

    invoke-direct {v2, p0, p1, p2}, Lo/PY$16;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 299
    invoke-virtual {v0, v1, v2}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 315
    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->lZ:I

    new-instance v0, Lo/PY$1;

    invoke-direct {v0, p0, p1}, Lo/PY$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 329
    :cond_0
    invoke-virtual {p2}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/netflix/mediaclient/ui/offline/DownloadButton;Ljava/lang/String;ZZ)Landroid/widget/PopupMenu;
    .locals 3

    .line 154
    new-instance v0, Landroid/widget/PopupMenu;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p0}, Lo/PY;->e(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 155
    sget p1, Lcom/netflix/mediaclient/ui/R$PendingIntent;->c:I

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 156
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->qu:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, p4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 157
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    sget p4, Lcom/netflix/mediaclient/ui/R$Fragment;->bh:I

    invoke-interface {p1, p4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p4, 0x1

    invoke-interface {p1, p4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 158
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->vA:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p3, :cond_0

    invoke-static {p0}, Lo/PY;->d(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-interface {p1, p4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 159
    new-instance p1, Lo/PY$9;

    invoke-direct {p1, p0, p2}, Lo/PY$9;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    return-object v0
.end method

.method private static synthetic a(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 363
    invoke-static {p0}, Lo/PY;->b(Landroid/content/Context;)V

    return-void
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 4

    .line 397
    new-instance v0, Lo/PendingIntent$Activity;

    sget v1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v0, p0, v1}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mB:I

    .line 398
    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->a(I)Lo/PendingIntent$Activity;

    move-result-object v0

    .line 399
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mw:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    move-result-object p0

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ez:I

    new-instance v0, Lo/PY$3;

    invoke-direct {v0}, Lo/PY$3;-><init>()V

    .line 400
    invoke-virtual {p0, p1, v0}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p0

    .line 406
    invoke-virtual {p0}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lcom/netflix/mediaclient/ui/offline/DownloadButton;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLcom/netflix/mediaclient/servicemgr/PlayContext;)Landroid/widget/PopupMenu;
    .locals 3

    .line 65
    new-instance v0, Landroid/widget/PopupMenu;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p0}, Lo/PY;->e(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 66
    sget p1, Lcom/netflix/mediaclient/ui/R$PendingIntent;->c:I

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 67
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->mL:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 68
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->ec:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 69
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->vA:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p4, :cond_0

    invoke-static {p0}, Lo/PY;->d(Landroid/content/Context;)Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 70
    new-instance p1, Lo/PY$5;

    invoke-direct {p1, p0, p2, p3, p5}, Lo/PY$5;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/netflix/mediaclient/ui/offline/DownloadButton;Ljava/lang/String;Z)Landroid/widget/PopupMenu;
    .locals 4

    .line 107
    new-instance v0, Landroid/widget/PopupMenu;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p0}, Lo/PY;->e(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 108
    sget v1, Lcom/netflix/mediaclient/ui/R$PendingIntent;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 109
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->lR:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 110
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->bh:I

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 111
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->vA:I

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {p0}, Lo/PY;->d(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 112
    new-instance p3, Lo/PY$10;

    invoke-direct {p3, p0, p2, p1}, Lo/PY$10;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/DownloadButton;)V

    invoke-virtual {v0, p3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    return-object v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 1

    .line 378
    const-class v0, Landroid/app/Activity;

    invoke-static {p0, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    if-eqz p0, :cond_0

    .line 380
    invoke-static {p0}, Lo/aaV;->d(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/netflix/mediaclient/ui/offline/DownloadButton;Ljava/lang/String;Z)Landroid/widget/PopupMenu;
    .locals 3

    .line 477
    new-instance v0, Landroid/widget/PopupMenu;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p0}, Lo/PY;->e(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 478
    sget p1, Lcom/netflix/mediaclient/ui/R$PendingIntent;->c:I

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 479
    sget-object p1, Lo/he;->a:Lo/he$Application;

    invoke-virtual {p1}, Lo/he$Application;->e()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 480
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->fh:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 482
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->bh:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 483
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->vA:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p3, :cond_1

    invoke-static {p0}, Lo/PY;->d(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 484
    new-instance p1, Lo/PY$7;

    invoke-direct {p1, p0, p2}, Lo/PY$7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    return-object v0
.end method

.method static synthetic c(Landroid/content/Context;)Lo/nS;
    .locals 0

    .line 56
    invoke-static {p0}, Lo/PY;->i(Landroid/content/Context;)Lo/nS;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic c(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;ILandroid/content/DialogInterface;I)V
    .locals 8

    .line 344
    invoke-static {p0}, Lo/PY;->i(Landroid/content/Context;)Lo/nS;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 346
    invoke-interface {v1, p1}, Lo/nS;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 350
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->cT:I

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 351
    sget p5, Lcom/netflix/mediaclient/ui/R$Fragment;->aI:I

    invoke-virtual {p2, p5}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 353
    sget p5, Lcom/netflix/mediaclient/ui/R$AssistContent;->nd:I

    sget v6, Lcom/netflix/mediaclient/ui/R$AssistContent;->ng:I

    new-instance v7, Lo/Qd;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lo/Qd;-><init>(Lo/nS;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;ILandroid/content/Context;)V

    move v4, p5

    move v5, v6

    move v6, p3

    invoke-static/range {v2 .. v7}, Lo/aet;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIILandroid/view/View$OnClickListener;)V

    .line 370
    :cond_0
    invoke-interface {p4}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic c(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lo/PY;->d(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic c(Lo/nS;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;ILandroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lo/PY;->d(Lo/nS;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;ILandroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static d(Landroid/content/Context;Z)Landroid/app/Dialog;
    .locals 3

    .line 224
    new-instance v0, Lo/PendingIntent$Activity;

    sget v1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v0, p0, v1}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mQ:I

    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->a(I)Lo/PendingIntent$Activity;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 226
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mN:I

    .line 227
    invoke-virtual {v0, p1}, Lo/PendingIntent$Activity;->c(I)Lo/PendingIntent$Activity;

    move-result-object p1

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mf:I

    new-instance v2, Lo/PY$11;

    invoke-direct {v2, p0}, Lo/PY$11;-><init>(Landroid/content/Context;)V

    .line 228
    invoke-virtual {p1, v1, v2}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p0

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ez:I

    new-instance v1, Lo/PY$13;

    invoke-direct {v1}, Lo/PY$13;-><init>()V

    .line 239
    invoke-virtual {p0, p1, v1}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    goto :goto_0

    .line 246
    :cond_0
    sget p0, Lcom/netflix/mediaclient/ui/R$AssistContent;->mO:I

    .line 247
    invoke-virtual {v0, p0}, Lo/PendingIntent$Activity;->c(I)Lo/PendingIntent$Activity;

    move-result-object p0

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    new-instance v1, Lo/PY$12;

    invoke-direct {v1}, Lo/PY$12;-><init>()V

    .line 248
    invoke-virtual {p0, p1, v1}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 255
    :goto_0
    invoke-virtual {v0}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lo/PY;->a(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static synthetic d(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lo/PY;->c(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic d(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 337
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic d(Lo/nS;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;ILandroid/content/Context;Landroid/view/View;)V
    .locals 8

    const/4 p5, 0x0

    .line 355
    invoke-interface {p0, p5}, Lo/nS;->c(Z)V

    .line 357
    sget-object p0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v0, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v1, Lcom/netflix/cl/model/AppView;->wifiOnlyDownloadsSetting:Lcom/netflix/cl/model/AppView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance v1, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;

    .line 359
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-direct {v1, p5}, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;-><init>(Ljava/lang/Object;)V

    .line 357
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 361
    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->nc:I

    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->ne:I

    new-instance v7, Lo/Qf;

    invoke-direct {v7, p4}, Lo/Qf;-><init>(Landroid/content/Context;)V

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-static/range {v2 .. v7}, Lo/aet;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 1

    .line 59
    invoke-static {}, Lo/QU;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static e(Landroid/content/Context;)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .line 217
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->H:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->C:I

    :goto_0
    return p0
.end method

.method public static e(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 4

    .line 412
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ni:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 413
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 414
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    sget v2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->w:I

    invoke-direct {v1, p0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v3, p2, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 415
    new-instance p2, Lo/PendingIntent$Activity;

    sget v1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {p2, p0, v1}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    sget p0, Lcom/netflix/mediaclient/ui/R$AssistContent;->nk:I

    .line 416
    invoke-virtual {p2, p0}, Lo/PendingIntent$Activity;->a(I)Lo/PendingIntent$Activity;

    move-result-object p0

    .line 417
    invoke-virtual {p0, v0}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    move-result-object p0

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    new-instance v0, Lo/PY$6;

    invoke-direct {v0, p1}, Lo/PY$6;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    .line 418
    invoke-virtual {p0, p2, v0}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p0

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ez:I

    new-instance p2, Lo/PY$2;

    invoke-direct {p2}, Lo/PY$2;-><init>()V

    .line 426
    invoke-virtual {p0, p1, p2}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p0

    .line 432
    invoke-virtual {p0}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;I)Landroid/app/Dialog;
    .locals 3

    .line 334
    new-instance p2, Lo/PendingIntent$Activity;

    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {p2, p0, v0}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->mR:I

    .line 335
    invoke-virtual {p2, v0}, Lo/PendingIntent$Activity;->a(I)Lo/PendingIntent$Activity;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->nb:I

    .line 336
    invoke-virtual {p2, v0}, Lo/PendingIntent$Activity;->c(I)Lo/PendingIntent$Activity;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    sget-object v1, Lo/Qa;->e:Lo/Qa;

    .line 337
    invoke-virtual {p2, v0, v1}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p2

    .line 339
    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p0, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 340
    invoke-static {v0}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 341
    invoke-interface {v1}, Lo/BC;->isKidsProfile()Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mY:I

    new-instance v2, Lo/Qg;

    invoke-direct {v2, p0, p1, v0, p3}, Lo/Qg;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)V

    invoke-virtual {p2, v1, v2}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 374
    :cond_0
    invoke-virtual {p2}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/Dialog;
    .locals 3

    .line 260
    new-instance v0, Lo/PendingIntent$Activity;

    sget v1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v0, p0, v1}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mM:I

    .line 261
    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->a(I)Lo/PendingIntent$Activity;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mL:I

    .line 262
    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->c(I)Lo/PendingIntent$Activity;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    new-instance v2, Lo/PY$14;

    invoke-direct {v2}, Lo/PY$14;-><init>()V

    .line 263
    invoke-virtual {v0, v1, v2}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 271
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->lZ:I

    new-instance v1, Lo/PY$15;

    invoke-direct {v1, p0, p1}, Lo/PY$15;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 285
    :cond_0
    invoke-virtual {v0}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static i(Landroid/content/Context;)Lo/nS;
    .locals 1

    .line 385
    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p0, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p0, :cond_0

    .line 387
    invoke-static {p0}, Lo/Am;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/Am;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 389
    invoke-virtual {p0}, Lo/Am;->q()Lo/nS;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
