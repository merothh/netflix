.class public Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;
.super Ljava/lang/Object;
.source "DownloadButtonDialogHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
    .locals 1

    .prologue
    .line 34
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->getOfflineAgent(Landroid/content/Context;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    return-object v0
.end method

.method public static createDownloadDeleteAllDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 289
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08027d

    .line 290
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 291
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08027c

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080249

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$15;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$15;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    .line 292
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080120

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$14;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$14;-><init>()V

    .line 299
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 306
    return-object v0
.end method

.method static createDownloadFailedDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 267
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080262

    .line 268
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080261

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080120

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$13;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$13;-><init>()V

    .line 270
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0801a8

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$12;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$12;-><init>()V

    .line 276
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 284
    return-object v0
.end method

.method static createDownloadingMenu(Landroid/content/Context;Lcom/netflix/mediaclient/ui/offline/DownloadButton;Ljava/lang/String;Z)Landroid/widget/PopupMenu;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 78
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-direct {v1, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 79
    const/high16 v2, 0x7f100000

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 80
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0f03ae

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 81
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0f03b1

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 82
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0f03b2

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->isInMyDownloadsActivity(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p3, :cond_0

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 83
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/DownloadButton;)V

    invoke-virtual {v1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 103
    return-object v1

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createNoInternetDialog(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 187
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08026d

    .line 188
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08026c

    .line 189
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0801c0

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$7;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$7;-><init>()V

    .line 190
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 197
    if-eqz p2, :cond_0

    .line 198
    const v1, 0x7f080248

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$8;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$8;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 211
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static createNoStorageDialog(Landroid/content/Context;Z)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 154
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080270

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 155
    if-eqz p1, :cond_0

    .line 156
    const v1, 0x7f08026e

    .line 157
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08024f

    new-instance v3, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$5;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$5;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080120

    new-instance v3, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$4;

    invoke-direct {v3}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$4;-><init>()V

    .line 166
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 182
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 173
    :cond_0
    const v1, 0x7f08026f

    .line 174
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0801c0

    new-instance v3, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$6;

    invoke-direct {v3}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$6;-><init>()V

    .line 175
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method static createNoWifiDialog(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 216
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080272

    .line 217
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080271

    .line 218
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0801c0

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$10;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$10;-><init>()V

    .line 219
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08024c

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$9;

    invoke-direct {v2, p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$9;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 225
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 237
    if-eqz p3, :cond_0

    .line 238
    const v1, 0x7f080248

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$11;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$11;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 251
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static createNotAvailableDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 311
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080274

    .line 312
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080273

    .line 313
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0801c0

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$17;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$17;-><init>()V

    .line 314
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080257

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$16;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$16;-><init>(Landroid/content/Context;)V

    .line 320
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 328
    return-object v0
.end method

.method static createPausedMenu(Landroid/content/Context;Lcom/netflix/mediaclient/ui/offline/DownloadButton;Ljava/lang/String;ZZ)Landroid/widget/PopupMenu;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 112
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-direct {v1, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 113
    const/high16 v2, 0x7f100000

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 114
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0f03b0

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, p4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 115
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0f03b1

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 116
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0f03b2

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz p3, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->isInMyDownloadsActivity(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 117
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$3;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 149
    return-object v1

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static createWatchDeleteDialog(Landroid/content/Context;Lcom/netflix/mediaclient/ui/offline/DownloadButton;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/widget/PopupMenu;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 43
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-direct {v1, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 44
    const/high16 v2, 0x7f100000

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 45
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0f03ad

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 46
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0f03af

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 47
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0f03b2

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz p4, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->isInMyDownloadsActivity(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 48
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$1;

    invoke-direct {v0, p0, p2, p3, p5}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    invoke-virtual {v1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 73
    return-object v1

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getOfflineAgent(Landroid/content/Context;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
    .locals 1

    .prologue
    .line 255
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    .line 256
    check-cast p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 257
    invoke-static {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getServiceManager(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInMyDownloadsActivity(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
