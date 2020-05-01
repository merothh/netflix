.class public Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComHandlerFactory;
.super Ljava/lang/Object;
.source "NetflixComHandlerFactory.java"


# static fields
.field protected static final ADD_TO_MY_LIST_SUFFIX:Ljava/lang/String; = "add"

.field protected static final BROWSE_SUFFIX:Ljava/lang/String; = "browse"

.field public static final DETAILS_PAGE_SUFFIX:Ljava/lang/String; = "title"

.field public static final EXTRA_SOURCE:Ljava/lang/String; = "source"

.field public static final FUTURE_HANDLER_SCHEME:Ljava/lang/String; = "https"

.field public static final HANDLER_PREFIX:Ljava/lang/String; = "www.netflix.com"

.field public static final HANDLER_SCHEME:Ljava/lang/String; = "http"

.field private static final HOME_SUFFIX:Ljava/lang/String; = ""

.field private static final LOGIN_SUFFIX:Ljava/lang/String; = "Login"

.field protected static final NM_WATCH_SUFFIX:Ljava/lang/String; = "nmwatch"

.field protected static final PROFILES_SUFFIX:Ljava/lang/String; = "profiles"

.field protected static final SEARCH_SUFFIX:Ljava/lang/String; = "search"

.field protected static final SYNC_SUFFIX:Ljava/lang/String; = "sync"

.field private static final TAG:Ljava/lang/String; = "NetflixComHandlerFactory"

.field protected static final WATCH_SUFFIX:Ljava/lang/String; = "watch"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canHandle(Landroid/content/Intent;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "http"

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "https"

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v0, "www.netflix.com"

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static finishMeAndLaunchBrowserIfNeeded(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComHandlerFactory;->getActionParts(Landroid/net/Uri;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComUtils;->getParameters(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComHandlerFactory;->getHandler(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;Ljava/util/Map;)Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComHandler;->canHandle(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComUtils;->launchBrowser(Landroid/app/Activity;Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getActionParts(Landroid/net/Uri;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static getHandler(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;Ljava/util/Map;)Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComHandler;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComHandler;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    :goto_0
    const/4 v2, 0x0

    const-string/jumbo v0, "title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "fromWatch"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "fromWatch"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "watch"

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    :goto_1
    invoke-static {p2}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->createDeepLink(Ljava/util/Map;)Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;

    move-result-object v4

    invoke-static {p0, v0, v4}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportApplicationLaunchedFromDeepLinking(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;)V

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_2
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SPY-7518 - got unsupported suffix: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NetflixComHandlerFactory"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    move-object v0, v2

    :goto_3
    return-object v0

    :cond_3
    const-string/jumbo v0, ""

    move-object v1, v0

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "home"

    goto :goto_1

    :sswitch_0
    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    goto :goto_2

    :sswitch_1
    const-string/jumbo v3, "Login"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :sswitch_2
    const-string/jumbo v3, "title"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x2

    goto :goto_2

    :sswitch_3
    const-string/jumbo v3, "watch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x3

    goto :goto_2

    :sswitch_4
    const-string/jumbo v3, "nmwatch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x4

    goto :goto_2

    :sswitch_5
    const-string/jumbo v3, "browse"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x5

    goto :goto_2

    :sswitch_6
    const-string/jumbo v3, "add"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x6

    goto :goto_2

    :sswitch_7
    const-string/jumbo v3, "search"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x7

    goto/16 :goto_2

    :sswitch_8
    const-string/jumbo v3, "sync"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v0, 0x8

    goto/16 :goto_2

    :sswitch_9
    const-string/jumbo v3, "profiles"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v0, 0x9

    goto/16 :goto_2

    :pswitch_0
    new-instance v0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComHomeHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComHomeHandler;-><init>()V

    goto/16 :goto_3

    :pswitch_1
    new-instance v0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComLaunchHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComLaunchHandler;-><init>()V

    goto/16 :goto_3

    :pswitch_2
    new-instance v0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComVideoDetailsHandler;-><init>()V

    goto/16 :goto_3

    :pswitch_3
    new-instance v0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;

    invoke-static {p2}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComUtils;->getStartTimeFromParams(Ljava/util/Map;)I

    move-result v1

    invoke-static {p2}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComUtils;->getSceneFromParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;-><init>(ILjava/lang/String;)V

    goto/16 :goto_3

    :pswitch_4
    new-instance v0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComBrowseHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComBrowseHandler;-><init>()V

    goto/16 :goto_3

    :pswitch_5
    new-instance v0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComAddToListHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComAddToListHandler;-><init>()V

    goto/16 :goto_3

    :pswitch_6
    new-instance v0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComSearchHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComSearchHandler;-><init>()V

    goto/16 :goto_3

    :pswitch_7
    new-instance v0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComSyncHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComSyncHandler;-><init>()V

    goto/16 :goto_3

    :pswitch_8
    new-instance v0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComProfilesHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComProfilesHandler;-><init>()V

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x524a5976 -> :sswitch_5
        -0x3bbd5416 -> :sswitch_9
        -0x36059a58 -> :sswitch_7
        0x0 -> :sswitch_0
        0x178a1 -> :sswitch_6
        0x361a9b -> :sswitch_8
        0x462ff49 -> :sswitch_1
        0x6942258 -> :sswitch_2
        0x6bac4cf -> :sswitch_3
        0x7ba87670 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static handle(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 5

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v0, "source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComHandlerFactory;->getActionParts(Landroid/net/Uri;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComUtils;->getParameters(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "source"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p0, v2, v3}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComHandlerFactory;->getHandler(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;Ljava/util/Map;)Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComHandler;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "NetflixComHandlerFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got null creator for data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". Redirecting user to browser."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComUtils;->launchBrowser(Landroid/app/Activity;Landroid/net/Uri;)V

    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    :goto_1
    return-object v0

    :cond_1
    invoke-static {v1}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComUtils;->getTrackId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p0, v2, v3}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComHandler;->tryHandle(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->NOT_HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    if-ne v0, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SPY-7518 - couldn\'t handle the following data: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->deepLink:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->homeScreen:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v2, v3, v4, v1}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;)V

    goto :goto_1
.end method
