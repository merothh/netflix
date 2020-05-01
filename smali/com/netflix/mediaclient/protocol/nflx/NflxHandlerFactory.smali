.class public final Lcom/netflix/mediaclient/protocol/nflx/NflxHandlerFactory;
.super Ljava/lang/Object;
.source "NflxHandlerFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NflxHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static endCommandSessions(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 328
    invoke-static {p1}, Lcom/netflix/mediaclient/protocol/nflx/NflxHandlerFactory;->isIntentFromPreappWidget(Landroid/content/Intent;)Z

    move-result v0

    .line 329
    if-eqz v0, :cond_0

    .line 330
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPreAppWidgetActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 332
    :cond_0
    return-void
.end method

.method private static findHandleForUriParams(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;J)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string/jumbo v0, "NflxHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "nflx params string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    const-string/jumbo v0, "[?&]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 145
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 146
    array-length v4, v2

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_3

    aget-object v5, v2, v0

    .line 147
    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 148
    if-gtz v6, :cond_1

    .line 149
    const-string/jumbo v6, "NflxHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No params found for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 153
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 154
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 155
    const-string/jumbo v6, "NflxHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Param name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_2
    invoke-interface {v3, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 160
    :cond_3
    invoke-static {p0, v3, p2, p3}, Lcom/netflix/mediaclient/protocol/nflx/NflxHandlerFactory;->handleNflxParams(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;J)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;

    move-result-object v0

    return-object v0
.end method

.method public static getHandler(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/net/Uri;J)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;
    .locals 2

    .prologue
    .line 95
    const-string/jumbo v0, "NflxHandler"

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/DataUtil;->logVerboseUriInfo(Ljava/lang/String;Landroid/net/Uri;)V

    .line 97
    const-string/jumbo v0, "http"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "movi.es"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/netflix/mediaclient/protocol/nflx/NflxHandlerFactory;->handleTinyUrlParams(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;J)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    .line 101
    :cond_0
    const-string/jumbo v0, "nflx"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "unknown scheme"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;-><init>()V

    goto :goto_0

    .line 106
    :cond_1
    const-string/jumbo v0, "www.netflix.com"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "invalid host"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;-><init>()V

    goto :goto_0

    .line 111
    :cond_2
    const-string/jumbo v0, "/browse"

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 112
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "invalid path"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;-><init>()V

    goto :goto_0

    .line 116
    :cond_3
    const-string/jumbo v0, "q"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 118
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "no nflx params"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;-><init>()V

    goto :goto_0

    .line 122
    :cond_4
    invoke-static {p0, v0, p2, p3}, Lcom/netflix/mediaclient/protocol/nflx/NflxHandlerFactory;->findHandleForUriParams(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;J)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;

    move-result-object v0

    goto :goto_0
.end method

.method public static getHandlerForIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;J)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportUserOpenedNotification(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Landroid/content/Intent;)V

    .line 62
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserLoggedIn()Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/protocol/nflx/NflxHandlerFactory;->reportPreappEventsOnNflxAction(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 64
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Handle NFLX intent starts..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    if-nez p1, :cond_0

    .line 66
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "null intent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;-><init>()V

    .line 81
    :goto_0
    return-object v0

    .line 70
    :cond_0
    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "unknown action"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;-><init>()V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2

    .line 76
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "no uri"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;-><init>()V

    goto :goto_0

    .line 80
    :cond_2
    const-string/jumbo v0, "NflxHandler"

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Landroid/content/Intent;)V

    .line 81
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/netflix/mediaclient/protocol/nflx/NflxHandlerFactory;->getHandler(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/net/Uri;J)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;

    move-result-object v0

    goto :goto_0
.end method

.method private static handleNflxParams(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;J)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)",
            "Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 182
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const-string/jumbo v0, "NflxHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Params map: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 187
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "no params exist"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v7, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;

    invoke-direct {v7}, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;-><init>()V

    .line 264
    :goto_0
    return-object v7

    .line 191
    :cond_1
    const-string/jumbo v0, "profileGate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 192
    new-instance v7, Lcom/netflix/mediaclient/protocol/nflx/ProfileGateActionHandler;

    invoke-direct {v7, p0, p1, p2, p3}, Lcom/netflix/mediaclient/protocol/nflx/ProfileGateActionHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;J)V

    goto :goto_0

    .line 195
    :cond_2
    invoke-static {p1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 196
    if-nez v0, :cond_3

    .line 197
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Action is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v7, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;

    invoke-direct {v7}, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;-><init>()V

    goto :goto_0

    .line 200
    :cond_3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 203
    const/4 v4, 0x0

    .line 204
    const/4 v3, 0x0

    .line 206
    sget-object v1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    .line 208
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v5

    .line 209
    invoke-static {p1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->createDeepLink(Ljava/util/Map;)Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;

    move-result-object v6

    .line 211
    invoke-static {p0, v0, v6}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportApplicationLaunchedFromDeepLinking(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;)V

    .line 213
    const-string/jumbo v7, "home"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 214
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v3, "handleHomeAction starts..."

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->homeScreen:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 217
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/HomeActionHandler;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/protocol/nflx/HomeActionHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    move-object v7, v0

    :goto_1
    move-object v0, p0

    move-wide v4, p2

    .line 263
    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportUiSessions(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;JLcom/netflix/mediaclient/service/logging/apm/model/DeepLink;)V

    goto :goto_0

    .line 219
    :cond_4
    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->isPlayAction(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 220
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v2, "handle play starts..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->playback:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 222
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    move-object v7, v0

    move v8, v3

    move-object v3, v2

    move v2, v8

    goto :goto_1

    .line 224
    :cond_5
    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->isViewDetailsAction(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 225
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v2, "view details starts..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    if-eqz v5, :cond_6

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getCustomerEventLogging()Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 227
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getCustomerEventLogging()Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;->reportMdpFromDeepLinking(Ljava/lang/String;)V

    .line 229
    :cond_6
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->movieDetails:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 230
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/ViewDetailsActionHandler;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/protocol/nflx/ViewDetailsActionHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    move-object v7, v0

    move v8, v3

    move-object v3, v2

    move v2, v8

    goto :goto_1

    .line 232
    :cond_7
    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->isGenreAction(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 233
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v3, "genre starts..."

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->browseTitles:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 236
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/GenreActionHandler;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/protocol/nflx/GenreActionHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    move-object v7, v0

    goto :goto_1

    .line 238
    :cond_8
    const-string/jumbo v7, "search"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 239
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v2, "search starts..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->search:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 241
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/SearchActionHandler;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/protocol/nflx/SearchActionHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    move-object v7, v0

    move v8, v3

    move-object v3, v2

    move v2, v8

    goto/16 :goto_1

    .line 243
    :cond_9
    const-string/jumbo v7, "sync"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 244
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v3, "sync starts..."

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->homeScreen:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 248
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/SyncActionHandler;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/protocol/nflx/SyncActionHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    move-object v7, v0

    goto/16 :goto_1

    .line 250
    :cond_a
    const-string/jumbo v2, "iq"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 251
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v2, "Add to instant queue starts..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    if-eqz v5, :cond_b

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getCustomerEventLogging()Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 253
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getCustomerEventLogging()Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;->reportMdpFromDeepLinking(Ljava/lang/String;)V

    .line 255
    :cond_b
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->movieDetails:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 256
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/AddToMyListActionHandler;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/protocol/nflx/AddToMyListActionHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    move-object v7, v0

    move v8, v3

    move-object v3, v2

    move v2, v8

    goto/16 :goto_1

    .line 258
    :cond_c
    const-string/jumbo v1, "NflxHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown Nflx action: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;-><init>()V

    .line 260
    sget-object v1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->NOT_HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-object v7, v0

    move v2, v3

    move-object v3, v4

    goto/16 :goto_1
.end method

.method private static handleTinyUrlParams(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;J)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 269
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    const-string/jumbo v0, "NflxHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleTinyUrlParams() got path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    .line 274
    const-string/jumbo v1, "NflxHandler"

    const-string/jumbo v2, "view details from tiny url starts..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getCustomerEventLogging()Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 276
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getCustomerEventLogging()Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;->reportMdpFromDeepLinking(Ljava/lang/String;)V

    .line 280
    :cond_1
    const-string/jumbo v0, "source=android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 282
    if-eqz v7, :cond_2

    .line 283
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->shareOpenSheet:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->movieDetails:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {p0, v0, v1, v6, v6}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommandStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;)V

    .line 284
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->movieDetails:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {p1, p0, v6, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportShareSheetOpenActionStarted(Ljava/lang/String;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 285
    invoke-static {p0}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommandEnded(Landroid/content/Context;)V

    .line 287
    :cond_2
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 288
    const-string/jumbo v0, "u"

    invoke-interface {v8, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    .line 291
    const/4 v2, 0x0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->movieDetails:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-object v0, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportUiSessions(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;JLcom/netflix/mediaclient/service/logging/apm/model/DeepLink;)V

    .line 293
    if-eqz v7, :cond_3

    .line 294
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v0, v6}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportShareSheetOpenActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 296
    :cond_3
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/ViewDetailsActionHandler;

    invoke-direct {v0, p0, v8}, Lcom/netflix/mediaclient/protocol/nflx/ViewDetailsActionHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    .line 297
    return-object v0
.end method

.method private static isIntentFromPreappWidget(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 319
    if-nez p0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v0

    .line 323
    :cond_1
    const-string/jumbo v1, "FROM_PREAPP_WIDGET"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    const-string/jumbo v2, "NetflixWidget"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static reportPreappEventsOnNflxAction(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 302
    invoke-static {p1}, Lcom/netflix/mediaclient/protocol/nflx/NflxHandlerFactory;->isIntentFromPreappWidget(Landroid/content/Intent;)Z

    move-result v0

    .line 303
    if-nez v0, :cond_0

    .line 316
    :goto_0
    return-void

    .line 307
    :cond_0
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Nflx action from PreappWidget, log events. Intent=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-static {p0, p2}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->reportStoredLogEvents(Landroid/content/Context;Z)V

    .line 310
    const-string/jumbo v0, "widgetId"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 311
    const-string/jumbo v1, "actionName"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-static {p0, v0, p2}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;->createInstance(Landroid/content/Context;IZ)Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;

    move-result-object v0

    .line 313
    invoke-static {v1}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;

    move-result-object v1

    .line 315
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->androidWidgetCommand:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    invoke-static {p0, v2, v0, v1}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPreAppWidgetActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;)V

    goto :goto_0
.end method
