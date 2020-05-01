.class public abstract Lo/OM;
.super Lo/CookieSyncManager;
.source ""

# interfaces
.implements Lo/CY;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/OM$Application;
    }
.end annotation


# static fields
.field public static final b:Lo/OM$Application;


# instance fields
.field private final a:Lo/aka;

.field public c:Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/OM$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/OM$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/OM;->b:Lo/OM$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lo/CookieSyncManager;-><init>()V

    .line 35
    new-instance v0, Lcom/netflix/mediaclient/ui/notifications/multititle/MultiTitleNotificationsActivity$viewModel$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/notifications/multititle/MultiTitleNotificationsActivity$viewModel$2;-><init>(Lo/OM;)V

    check-cast v0, Lo/alB;

    invoke-static {v0}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object v0

    iput-object v0, p0, Lo/OM;->a:Lo/aka;

    return-void
.end method

.method private final m()Z
    .locals 4

    .line 169
    invoke-virtual {p0}, Lo/OM;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "landingPage"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 173
    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;->template()Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->modulesList()Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;->modules()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Iterable;

    .line 193
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 194
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/model/leafs/social/multititle/NotificationModule;

    .line 174
    instance-of v3, v3, Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 177
    :goto_2
    invoke-static {}, Lo/ady;->o()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    return v1
.end method


# virtual methods
.method protected a()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 141
    new-instance v0, Lo/OK;

    invoke-direct {v0}, Lo/OK;-><init>()V

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public a(Lcom/netflix/cl/model/TrackingInfo;)V
    .locals 3

    const-string v0, "trackingInfo"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->notificationLandingItem:Lcom/netflix/cl/model/AppView;

    invoke-direct {v1, v2, p1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance p1, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;-><init>()V

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    return-void
.end method

.method public a(Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lo/OM;->c:Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    return-void
.end method

.method public canShowDownloadProgressBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public createManagerStatusListener()Lo/zT;
    .locals 2

    .line 87
    move-object v0, p0

    check-cast v0, Lo/OM;

    .line 89
    new-instance v1, Lo/OM$StateListAnimator;

    invoke-direct {v1, p0, v0}, Lo/OM$StateListAnimator;-><init>(Lo/OM;Lo/OM;)V

    check-cast v1, Lo/zT;

    return-object v1
.end method

.method protected f()I
    .locals 1

    .line 117
    invoke-direct {p0}, Lo/OM;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->bE:I

    goto :goto_0

    .line 120
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->bB:I

    :goto_0
    return v0
.end method

.method public g()Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;
    .locals 2

    .line 39
    iget-object v0, p0, Lo/OM;->c:Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    if-nez v0, :cond_0

    const-string v1, "landingPage"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 143
    sget-object v0, Lcom/netflix/cl/model/AppView;->notificationLanding:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public final j()Lo/OJ;
    .locals 1

    iget-object v0, p0, Lo/OM;->a:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/OJ;

    return-object v0
.end method

.method protected final k()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lo/OM;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "notificationParams"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Ljava/util/HashMap;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public final n()V
    .locals 2

    .line 185
    invoke-direct {p0}, Lo/OM;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p0}, Lo/OM;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lo/OK;

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {p0}, Lo/OM;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lo/OK;

    invoke-virtual {v0}, Lo/OK;->g()V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.netflix.mediaclient.ui.notifications.multititle.MultiTitleNotificationsFrag"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public o()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 2

    .line 151
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->m:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const-string v1, "PlayContextImp.OFFLINE_MY_DOWNLOADS_CONTEXT"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 71
    invoke-super {p0, p1}, Lo/CookieSyncManager;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lo/OM;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lo/OM;->getActionBarStateBuilder()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v1

    .line 74
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v1

    const-string v2, ""

    .line 75
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    move-result-object v1

    .line 73
    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    .line 78
    :cond_0
    invoke-direct {p0}, Lo/OM;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p0}, Lo/OM;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a(I)V

    .line 82
    :cond_1
    invoke-super {p0}, Lo/CookieSyncManager;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "landingPage"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    const-string v0, "super.getIntent().getPar\u2026Extra(EXTRA_LANDING_PAGE)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    invoke-virtual {p0, p1}, Lo/OM;->a(Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 154
    sget-object v0, Lo/OM$TaskDescription;->e:Lo/OM$TaskDescription;

    check-cast v0, Lcom/netflix/cl/model/TrackingInfo;

    invoke-virtual {p0, v0}, Lo/OM;->a(Lcom/netflix/cl/model/TrackingInfo;)V

    .line 156
    invoke-super {p0, p1}, Lo/CookieSyncManager;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public setTheme()V
    .locals 1

    .line 125
    invoke-direct {p0}, Lo/OM;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->P:I

    invoke-virtual {p0, v0}, Lo/OM;->setTheme(I)V

    goto :goto_0

    .line 129
    :cond_0
    sget-object v0, Lo/eq;->a:Lo/eq$Activity;

    invoke-virtual {v0}, Lo/eq$Activity;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->F:I

    invoke-virtual {p0, v0}, Lo/OM;->setTheme(I)V

    goto :goto_0

    .line 132
    :cond_1
    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->E:I

    invoke-virtual {p0, v0}, Lo/OM;->setTheme(I)V

    goto :goto_0

    .line 136
    :cond_2
    invoke-super {p0}, Lo/CookieSyncManager;->setTheme()V

    :goto_0
    return-void
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
