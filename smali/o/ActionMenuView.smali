.class public final Lo/ActionMenuView;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/WebViewProvider;


# instance fields
.field private final d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ActionMenuView;->d:Landroid/app/Activity;

    return-void
.end method

.method private final e()V
    .locals 3

    .line 76
    new-instance v0, Ljava/io/File;

    sget-object v1, Lo/AbsSpinner;->c:Lo/AbsSpinner$StateListAnimator;

    iget-object v2, p0, Lo/ActionMenuView;->d:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v1, v2}, Lo/AbsSpinner$StateListAnimator;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lo/alU;->b([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    .line 86
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 79
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final e(Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable<",
            "TT;>;)V"
        }
    .end annotation

    .line 60
    :try_start_0
    invoke-direct {p0}, Lo/ActionMenuView;->e()V

    .line 62
    new-instance v0, Lo/AbsListView;

    invoke-direct {v0}, Lo/AbsListView;-><init>()V

    .line 63
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "Shareable"

    .line 64
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "DismissOnSelection"

    const/4 v2, 0x0

    .line 65
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    invoke-virtual {v0, v1}, Lo/AbsListView;->setArguments(Landroid/os/Bundle;)V

    .line 69
    iget-object p1, p0, Lo/ActionMenuView;->d:Landroid/app/Activity;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v0, Lo/WebChromeClient;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showFullScreenDialog(Lo/WebChromeClient;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.android.activity.NetflixActivity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 71
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Error Sharing"

    invoke-interface {v0, v1, p1}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lo/Bc;)V
    .locals 5

    const-string v0, "videoDetails"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable;

    .line 39
    new-instance v1, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;

    .line 40
    invoke-interface {p1}, Lo/Bc;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "videoDetails.id"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-interface {p1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    const-string v4, "videoDetails.type"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-interface {p1}, Lo/Bc;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v4, "videoDetails.title"

    invoke-static {p1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {v1, v2, v3, p1}, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V

    .line 38
    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable;-><init>(Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;)V

    check-cast v0, Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    invoke-direct {p0, v0}, Lo/ActionMenuView;->e(Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)V

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)V
    .locals 10

    const-string v0, "extrasFeedItem"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable;

    .line 26
    new-instance v9, Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$ExtrasFeedItemParcelable;

    .line 27
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->b()Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->c()Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->g()Lo/AK;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v4, v1

    .line 30
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->h()Lo/agg;

    move-result-object v1

    invoke-interface {v1}, Lo/agg;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v1, "extrasFeedItem.topNodeVideo.id"

    invoke-static {v5, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->h()Lo/agg;

    move-result-object v1

    invoke-interface {v1}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v6

    const-string v1, "extrasFeedItem.topNodeVideo.type"

    invoke-static {v6, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->g()Lo/AK;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 33
    :goto_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->m()I

    move-result p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AG;

    invoke-virtual {p1}, Lo/AG;->a()Ljava/lang/String;

    move-result-object v8

    move-object v1, v9

    .line 26
    invoke-direct/range {v1 .. v8}, Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$ExtrasFeedItemParcelable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLjava/lang/String;)V

    .line 25
    invoke-direct {v0, v9}, Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable;-><init>(Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$ExtrasFeedItemParcelable;)V

    check-cast v0, Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    invoke-direct {p0, v0}, Lo/ActionMenuView;->e(Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)V

    return-void
.end method
