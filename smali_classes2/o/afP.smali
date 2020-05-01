.class public final Lo/afP;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/afP$Activity;
    }
.end annotation


# static fields
.field private static b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "nfvdid"

    .line 283
    invoke-static {v0, p0}, Lo/afP;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "SecureNetflixIdTest"

    return-object p0

    :cond_0
    const-string p0, "SecureNetflixId"

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p0, "; secure "

    .line 187
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_0
    new-instance p0, Lo/afM;

    invoke-direct {p0, v0}, Lo/afM;-><init>(Ljava/lang/StringBuilder;)V

    invoke-static {p0}, Lo/afP;->d(Lo/afP$Activity;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/StringBuilder;Landroid/webkit/CookieManager;)V
    .locals 0

    invoke-static {p0, p1}, Lo/afP;->b(Ljava/lang/StringBuilder;Landroid/webkit/CookieManager;)V

    return-void
.end method

.method public static b()Landroid/webkit/CookieManager;
    .locals 1

    .line 89
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 91
    :catch_0
    sget-boolean v0, Lo/afP;->b:Z

    if-nez v0, :cond_0

    .line 92
    invoke-static {}, Lo/afP;->c()V

    const/4 v0, 0x1

    .line 93
    sput-boolean v0, Lo/afP;->b:Z

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "SecureNetflixIdTest"

    goto :goto_0

    :cond_0
    const-string p1, "SecureNetflixId"

    .line 302
    :goto_0
    invoke-static {p1, p0}, Lo/afP;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "NetflixIdTest"

    return-object p0

    :cond_0
    const-string p0, "NetflixId"

    return-object p0
.end method

.method private static synthetic b(Landroid/webkit/ValueCallback;)V
    .locals 1

    .line 359
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 360
    invoke-virtual {v0, p0}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .line 195
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "nfvdid"

    .line 196
    invoke-static {v1, p0, v0}, Lo/afP;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 198
    :cond_0
    sget-object p0, Lo/afN;->c:Lo/afN;

    invoke-static {p0}, Lo/afP;->d(Lo/afP$Activity;)V

    .line 199
    invoke-static {}, Lo/afP;->e()Ljava/lang/String;

    move-result-object p0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrote nfvdid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "nf_net_cookies"

    invoke-static {v0, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic b(Ljava/lang/StringBuilder;Landroid/webkit/CookieManager;)V
    .locals 1

    .line 190
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".netflix.com"

    invoke-virtual {p1, v0, p0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(ZLandroid/webkit/CookieManager;)V
    .locals 0

    invoke-static {p0, p1}, Lo/afP;->d(ZLandroid/webkit/CookieManager;)V

    return-void
.end method

.method public static c()V
    .locals 6

    const-string v0, "CookieManagerException"

    .line 101
    :try_start_0
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 102
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.google.android.gms"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-static {v1}, Lo/LayoutParams;->c(Landroid/content/pm/PackageInfo;)J

    move-result-wide v3

    .line 106
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "errorType"

    .line 107
    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "userAgent"

    .line 108
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "playServicesVersion"

    .line 109
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 111
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v3, Lcom/netflix/cl/model/event/discrete/DebugEvent;

    invoke-direct {v3, v1}, Lcom/netflix/cl/model/event/discrete/DebugEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 113
    sget-object v2, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {v2, v0, v1}, Lcom/netflix/cl/ExtLogger;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 338
    invoke-static {}, Lo/adk;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-static {p1}, Lo/afP;->d(Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 341
    :cond_0
    invoke-static {p0}, Lo/afP;->e(Landroid/content/Context;)V

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    .line 343
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c(Landroid/webkit/ValueCallback;)V
    .locals 0

    invoke-static {p0}, Lo/afP;->b(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .line 204
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "flwssn"

    .line 205
    invoke-static {v1, p0, v0}, Lo/afP;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 207
    :cond_0
    sget-object p0, Lo/afN;->c:Lo/afN;

    invoke-static {p0}, Lo/afP;->d(Lo/afP$Activity;)V

    .line 208
    invoke-static {}, Lo/afP;->e()Ljava/lang/String;

    move-result-object p0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrote flwssn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "nf_net_cookies"

    invoke-static {v0, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 161
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const-string p2, "NetflixIdTest"

    .line 167
    invoke-static {p2, p0, v1}, Lo/afP;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p0, "SecureNetflixIdTest"

    .line 168
    invoke-static {p0, p1, v0}, Lo/afP;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string p2, "NetflixId"

    .line 170
    invoke-static {p2, p0, v1}, Lo/afP;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p0, "SecureNetflixId"

    .line 171
    invoke-static {p0, p1, v0}, Lo/afP;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 174
    :goto_0
    sget-object p0, Lo/afN;->c:Lo/afN;

    invoke-static {p0}, Lo/afP;->d(Lo/afP$Activity;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static c(Z)V
    .locals 1

    .line 148
    new-instance v0, Lo/afL;

    invoke-direct {v0, p0}, Lo/afL;-><init>(Z)V

    invoke-static {v0}, Lo/afP;->d(Lo/afP$Activity;)V

    return-void
.end method

.method public static d(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;
    .locals 3

    .line 66
    invoke-static {}, Lo/afP;->e()Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    .line 68
    invoke-static {v0, p0}, Lo/afP;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-static {v0, p0}, Lo/afP;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "flwssn"

    .line 258
    invoke-static {v0, p0}, Lo/afP;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    const-string v0, ";"

    .line 264
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 265
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    const-string v4, "="

    .line 266
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 267
    array-length v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 268
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    .line 269
    aget-object p0, v3, p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "NetflixIdTest"

    goto :goto_0

    :cond_0
    const-string p1, "NetflixId"

    .line 293
    :goto_0
    invoke-static {p1, p0}, Lo/afP;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 357
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 358
    new-instance v1, Lo/afS;

    invoke-direct {v1, p0}, Lo/afS;-><init>(Landroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static d(Lo/afP$Activity;)V
    .locals 1

    .line 118
    invoke-static {}, Lo/afP;->b()Landroid/webkit/CookieManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {p0, v0}, Lo/afP$Activity;->a(Landroid/webkit/CookieManager;)V

    :cond_0
    return-void
.end method

.method private static synthetic d(ZLandroid/webkit/CookieManager;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz p0, :cond_0

    const-string p0, "NetflixIdTest"

    .line 150
    invoke-static {p0, v2, v1}, Lo/afP;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p0, "SecureNetflixIdTest"

    .line 151
    invoke-static {p0, v2, v0}, Lo/afP;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string p0, "NetflixId"

    .line 153
    invoke-static {p0, v2, v1}, Lo/afP;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p0, "SecureNetflixId"

    .line 154
    invoke-static {p0, v2, v0}, Lo/afP;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 156
    :goto_0
    invoke-virtual {p1}, Landroid/webkit/CookieManager;->flush()V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const-string v1, ";"

    .line 235
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 236
    array-length v1, p1

    const/4 v2, 0x0

    move-object v4, v0

    move-object v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v6, p1, v3

    const-string v7, "="

    .line 237
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 238
    array-length v7, v6

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-lt v7, v8, :cond_3

    .line 239
    invoke-static {v2}, Lo/afP;->b(Z)Ljava/lang/String;

    move-result-object v7

    aget-object v10, v6, v2

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v9}, Lo/afP;->b(Z)Ljava/lang/String;

    move-result-object v7

    aget-object v10, v6, v2

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    .line 242
    :cond_0
    invoke-static {v2}, Lo/afP;->a(Z)Ljava/lang/String;

    move-result-object v7

    aget-object v10, v6, v2

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v9}, Lo/afP;->a(Z)Ljava/lang/String;

    move-result-object v7

    aget-object v10, v6, v2

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 243
    :cond_1
    aget-object v5, v6, v9

    goto :goto_2

    .line 240
    :cond_2
    :goto_1
    aget-object v4, v6, v9

    .line 247
    :cond_3
    :goto_2
    invoke-static {p0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v4}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v5}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-array p1, v8, [Ljava/lang/Object;

    aput-object p0, p1, v2

    aput-object v4, p1, v9

    const-string v0, "nf_net_cookies"

    const-string v1, "update cookies for %s: newId %s"

    .line 248
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 249
    new-instance p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    invoke-direct {p1, p0, v4, v5}, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    .line 60
    invoke-static {}, Lo/afP;->b()Landroid/webkit/CookieManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "https://netflix.com"

    .line 62
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e(Landroid/content/Context;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 350
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 351
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p0

    .line 352
    invoke-virtual {p0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    :cond_0
    return-void
.end method
