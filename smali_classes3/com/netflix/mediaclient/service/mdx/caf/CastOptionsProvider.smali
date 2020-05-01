.class public Lcom/netflix/mediaclient/service/mdx/caf/CastOptionsProvider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/cast/framework/OptionsProvider;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CA5E8412"

    .line 32
    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/caf/CastOptionsProvider;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdditionalSessionProviders(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/framework/SessionProvider;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCastOptions(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastOptions;
    .locals 2

    .line 36
    invoke-static {p1}, Lo/cT;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {p1}, Lo/cT;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/caf/CastOptionsProvider;->c:Ljava/lang/String;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/caf/CastOptionsProvider;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lo/cT;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    new-instance p1, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;-><init>()V

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->setNotificationOptions(Lcom/google/android/gms/cast/framework/media/NotificationOptions;)Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->build()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object p1

    .line 45
    new-instance v0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/cast/framework/CastOptions$Builder;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/caf/CastOptionsProvider;->c:Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->setReceiverApplicationId(Ljava/lang/String;)Lcom/google/android/gms/cast/framework/CastOptions$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->setCastMediaOptions(Lcom/google/android/gms/cast/framework/media/CastMediaOptions;)Lcom/google/android/gms/cast/framework/CastOptions$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->setEnableReconnectionService(Z)Lcom/google/android/gms/cast/framework/CastOptions$Builder;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->build()Lcom/google/android/gms/cast/framework/CastOptions;

    move-result-object p1

    return-object p1
.end method
