.class public Lo/kJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/cast/framework/SessionManagerListener;
.implements Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/cast/framework/SessionManagerListener<",
        "Lcom/google/android/gms/cast/framework/CastSession;",
        ">;",
        "Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lo/kO;

.field private final c:Lo/kL;

.field private final d:Lcom/google/android/gms/cast/framework/CastContext;

.field private final e:Ljava/lang/String;

.field private j:Lcom/google/android/gms/cast/CastDevice;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/CastContext;Landroid/os/Handler;Ljava/lang/String;Lo/kO;Lo/kL;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lo/kJ;->d:Lcom/google/android/gms/cast/framework/CastContext;

    .line 47
    iput-object p2, p0, Lo/kJ;->a:Landroid/os/Handler;

    .line 48
    iput-object p3, p0, Lo/kJ;->e:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lo/kJ;->c:Lo/kL;

    .line 50
    iput-object p4, p0, Lo/kJ;->b:Lo/kO;

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    .line 171
    invoke-direct {p0, v0}, Lo/kJ;->d(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic a(Lo/kJ;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lo/kJ;->a()V

    return-void
.end method

.method static synthetic a(Lo/kJ;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lo/kJ;->b(I)V

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 99
    invoke-direct {p0, p1}, Lo/kJ;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, ""

    return-object p1

    .line 106
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "path"

    .line 108
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "body"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    const-string p1, "CafSessionManager"

    const-string v0, "createMessage failed"

    .line 110
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private b(I)V
    .locals 0

    .line 172
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/kJ;->d(Ljava/lang/Integer;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "CafSessionManager"

    const-string v2, "sendCastMessage - message: %s"

    .line 132
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 134
    iget-object v0, p0, Lo/kJ;->a:Landroid/os/Handler;

    new-instance v1, Lo/kJ$2;

    invoke-direct {v1, p0, p1}, Lo/kJ$2;-><init>(Lo/kJ;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic d(Lo/kJ;)Lcom/google/android/gms/cast/framework/CastContext;
    .locals 0

    .line 29
    iget-object p0, p0, Lo/kJ;->d:Lcom/google/android/gms/cast/framework/CastContext;

    return-object p0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 179
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    const-string v2, "castHandShake"

    .line 184
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "uuid"

    .line 185
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "controlleruuid"

    iget-object v2, p0, Lo/kJ;->e:Ljava/lang/String;

    .line 186
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "friendlyName"

    .line 187
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "payload"

    const-string v1, "intent=sync"

    .line 188
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    const-string p1, "CafSessionManager"

    const-string p2, "createCastHandShakeMessage failed, e"

    .line 190
    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private d(Ljava/lang/Integer;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lo/kJ;->c:Lo/kL;

    invoke-interface {v0, p1}, Lo/kL;->e(Ljava/lang/Integer;)V

    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "action="

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v1, v0, 0x7

    const-string v2, "\r\n"

    .line 123
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v1, :cond_0

    .line 125
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "CafSessionManager"

    const-string v2, "sendMessage - message: %s"

    .line 89
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 90
    invoke-direct {p0, p1}, Lo/kJ;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-direct {p0, p1}, Lo/kJ;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 230
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "CafSessionManager"

    const-string v2, "onSessionEnding - session: %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 234
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastSession;->getCastDevice()Lcom/google/android/gms/cast/CastDevice;

    move-result-object p1

    iput-object p1, p0, Lo/kJ;->j:Lcom/google/android/gms/cast/CastDevice;

    .line 235
    iget-object p1, p0, Lo/kJ;->j:Lcom/google/android/gms/cast/CastDevice;

    if-eqz p1, :cond_0

    .line 236
    invoke-static {p1}, Lo/adV;->a(Lcom/google/android/gms/cast/CastDevice;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "onSessionEnding - current device is null, so we can\'t start disconnect logging"

    .line 238
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public b(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 244
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Lcom/google/android/gms/cast/CastStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "CafSessionManager"

    const-string v3, "onSessionEnded - session: %s, error: %s"

    invoke-static {p2, v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :try_start_0
    const-string v0, "urn:x-cast:mdx-netflix-com:service:target:2"

    .line 247
    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/framework/CastSession;->removeMessageReceivedCallbacks(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array v0, v1, [Ljava/lang/Object;

    .line 249
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "onSessionEnded - failed to remove message received callbacks - error: %s"

    invoke-static {p2, p1, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 252
    :goto_0
    iget-object p1, p0, Lo/kJ;->c:Lo/kL;

    invoke-interface {p1}, Lo/kL;->c()V

    .line 255
    iget-object p1, p0, Lo/kJ;->j:Lcom/google/android/gms/cast/CastDevice;

    if-eqz p1, :cond_0

    .line 256
    iget-object p1, p0, Lo/kJ;->b:Lo/kO;

    invoke-virtual {p1}, Lo/kO;->d()Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->a:Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    iget-object p1, p0, Lo/kJ;->j:Lcom/google/android/gms/cast/CastDevice;

    invoke-static {p1}, Lo/adV;->a(Lcom/google/android/gms/cast/CastDevice;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lo/kJ;->j:Lcom/google/android/gms/cast/CastDevice;

    .line 257
    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lo/kJ;->j:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lo/kJ;->j:Lcom/google/android/gms/cast/CastDevice;

    .line 258
    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->getModelName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v5, "Google"

    .line 256
    invoke-virtual/range {v0 .. v7}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->b(Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 261
    iput-object p1, p0, Lo/kJ;->j:Lcom/google/android/gms/cast/CastDevice;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lo/kJ;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/kJ;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 55
    iget-object v0, p0, Lo/kJ;->d:Lcom/google/android/gms/cast/framework/CastContext;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/cast/framework/SessionManager;->addSessionManagerListener(Lcom/google/android/gms/cast/framework/SessionManagerListener;Ljava/lang/Class;)V

    .line 57
    iget-object v0, p0, Lo/kJ;->d:Lcom/google/android/gms/cast/framework/CastContext;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CafSessionManager"

    const-string v2, "enable - connected session already exists - registering message received callback"

    .line 59
    invoke-static {v1, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->getCastDevice()Lcom/google/android/gms/cast/CastDevice;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 63
    invoke-static {v2}, Lo/adV;->a(Lcom/google/android/gms/cast/CastDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "enable - unable to log reconnect, since no CastDevice found"

    .line 65
    invoke-static {v1, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x1

    .line 68
    invoke-virtual {p0, v0, v1}, Lo/kJ;->e(Lcom/google/android/gms/cast/framework/CastSession;Z)V

    :cond_1
    return-void
.end method

.method public c(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 291
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "CafSessionManager"

    const-string p2, "onSessionSuspended - session: %s, reason: %s"

    invoke-static {p1, p2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public d(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 205
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "CafSessionManager"

    const-string v1, "onSessionStarting - session: %s"

    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public d(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 3

    .line 223
    invoke-static {p2}, Lcom/google/android/gms/cast/CastStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 224
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    const-string p1, "CafSessionManager"

    const-string v2, "onSessionStartFailed - session: %s, error: %s"

    invoke-static {p1, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 225
    iget-object p1, p0, Lo/kJ;->c:Lo/kL;

    invoke-interface {p1, v0, p2}, Lo/kL;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public d(Lcom/google/android/gms/cast/framework/CastSession;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "CafSessionManager"

    const-string v3, "onSessionStarted - session: %s, sessionId: %s"

    invoke-static {p2, v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :try_start_0
    const-string v0, "urn:x-cast:mdx-netflix-com:service:target:2"

    .line 213
    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/cast/framework/CastSession;->setMessageReceivedCallbacks(Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V

    .line 214
    iget-object p1, p0, Lo/kJ;->c:Lo/kL;

    invoke-interface {p1}, Lo/kL;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array v0, v1, [Ljava/lang/Object;

    .line 216
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "onSessionStarted - error registering for message callbacks - error: %s"

    invoke-static {p2, v1, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 217
    iget-object p2, p0, Lo/kJ;->c:Lo/kL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to register for message callbacks. Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v2}, Lo/kL;->b(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 4

    .line 74
    iget-object v0, p0, Lo/kJ;->d:Lcom/google/android/gms/cast/framework/CastContext;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/cast/framework/SessionManager;->removeSessionManagerListener(Lcom/google/android/gms/cast/framework/SessionManagerListener;Ljava/lang/Class;)V

    .line 76
    iget-object v0, p0, Lo/kJ;->d:Lcom/google/android/gms/cast/framework/CastContext;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CafSessionManager"

    const-string v2, "disable - session is currently connected - removing message received callback"

    .line 78
    invoke-static {v1, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v2, "urn:x-cast:mdx-netflix-com:service:target:2"

    .line 81
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/framework/CastSession;->removeMessageReceivedCallbacks(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "disable - error removing message received callbacks - error: %s"

    invoke-static {v1, v0, v2}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public e(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 3

    .line 284
    invoke-static {p2}, Lcom/google/android/gms/cast/CastStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 285
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    const-string p1, "CafSessionManager"

    const-string v2, "onSessionResumeFailed - session: %s, error: %s"

    invoke-static {p1, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 286
    iget-object p1, p0, Lo/kJ;->c:Lo/kL;

    invoke-interface {p1, v0, p2}, Lo/kL;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public e(Lcom/google/android/gms/cast/framework/CastSession;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 267
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "CafSessionManager"

    const-string p2, "onSessionResuming - session: %s, sessionId: %s"

    invoke-static {p1, p2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public e(Lcom/google/android/gms/cast/framework/CastSession;Z)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 272
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "CafSessionManager"

    const-string v3, "onSessionResumed - session: %s, wasSuspended: %b"

    invoke-static {p2, v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :try_start_0
    const-string v0, "urn:x-cast:mdx-netflix-com:service:target:2"

    .line 274
    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/cast/framework/CastSession;->setMessageReceivedCallbacks(Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V

    .line 275
    iget-object p1, p0, Lo/kJ;->c:Lo/kL;

    invoke-interface {p1}, Lo/kL;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array v0, v1, [Ljava/lang/Object;

    .line 277
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "onSessionResumed - error registering for message callbacks - error: %s"

    invoke-static {p2, v1, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 278
    iget-object p2, p0, Lo/kJ;->c:Lo/kL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to register for message callbacks.  Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v2}, Lo/kL;->d(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string p1, "/"

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const-string v2, "CafSessionManager"

    const-string v3, "onMessageReceived - message: %s"

    .line 300
    invoke-static {v2, v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 306
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "body"

    .line 307
    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v3, "url"

    .line 308
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 309
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 310
    invoke-virtual {v3, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    const-string p1, "type"

    .line 314
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    iget-object p2, p0, Lo/kJ;->c:Lo/kL;

    invoke-interface {p2, p1, v3, p3}, Lo/kL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    new-array p2, p2, [Ljava/lang/Object;

    .line 317
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "onMessageReceived - error parsing message: %s"

    invoke-static {v2, p1, p2}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public synthetic onSessionEnded(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 29
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lo/kJ;->b(Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method

.method public synthetic onSessionEnding(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 0

    .line 29
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1}, Lo/kJ;->b(Lcom/google/android/gms/cast/framework/CastSession;)V

    return-void
.end method

.method public synthetic onSessionResumeFailed(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 29
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lo/kJ;->e(Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method

.method public synthetic onSessionResumed(Lcom/google/android/gms/cast/framework/Session;Z)V
    .locals 0

    .line 29
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lo/kJ;->e(Lcom/google/android/gms/cast/framework/CastSession;Z)V

    return-void
.end method

.method public synthetic onSessionResuming(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 0

    .line 29
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lo/kJ;->e(Lcom/google/android/gms/cast/framework/CastSession;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onSessionStartFailed(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 29
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lo/kJ;->d(Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method

.method public synthetic onSessionStarted(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 0

    .line 29
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lo/kJ;->d(Lcom/google/android/gms/cast/framework/CastSession;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onSessionStarting(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 0

    .line 29
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1}, Lo/kJ;->d(Lcom/google/android/gms/cast/framework/CastSession;)V

    return-void
.end method

.method public synthetic onSessionSuspended(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 29
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lo/kJ;->c(Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method
