.class public Lcom/netflix/msl/client/NetflixUrlProviderFactory$TestNetflixUrlProvider;
.super Ljava/lang/Object;
.source "NetflixUrlProviderFactory.java"

# interfaces
.implements Lcom/netflix/msl/client/NetflixUrlProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    const-string/jumbo v0, "http://api.test.netflix.com%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppbootUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    const-string/jumbo v0, "http://api.test.netflix.com/appboot/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNccpUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    const-string/jumbo v0, "http://api.test.netflix.com/nccp/controller%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
