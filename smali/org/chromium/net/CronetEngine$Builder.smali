.class public Lorg/chromium/net/CronetEngine$Builder;
.super Ljava/lang/Object;
.source "CronetEngine.java"


# static fields
.field private static final INVALID_PKP_HOST_NAME:Ljava/util/regex/Pattern;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisableCache:Z

.field private mHttp2Enabled:Z

.field private mHttpCacheMaxSize:J

.field private mHttpCacheMode:I

.field private mLegacyModeEnabled:Z

.field private mLibraryName:Ljava/lang/String;

.field private mMockCertVerifier:J

.field private mNetworkQualityEstimatorEnabled:Z

.field private final mPkps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPublicKeyPinningBypassForLocalTrustAnchorsEnabled:Z

.field private mQuicEnabled:Z

.field private final mQuicHints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSdchEnabled:Z

.field private mStoragePath:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "^[0-9\\.]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/chromium/net/CronetEngine$Builder;->INVALID_PKP_HOST_NAME:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/CronetEngine$Builder;->mQuicHints:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/CronetEngine$Builder;->mPkps:Ljava/util/List;

    iput-object p1, p0, Lorg/chromium/net/CronetEngine$Builder;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "cronet"

    invoke-virtual {p0, v0}, Lorg/chromium/net/CronetEngine$Builder;->setLibraryName(Ljava/lang/String;)Lorg/chromium/net/CronetEngine$Builder;

    invoke-virtual {p0, v2}, Lorg/chromium/net/CronetEngine$Builder;->enableLegacyMode(Z)Lorg/chromium/net/CronetEngine$Builder;

    invoke-virtual {p0, v2}, Lorg/chromium/net/CronetEngine$Builder;->enableQuic(Z)Lorg/chromium/net/CronetEngine$Builder;

    invoke-virtual {p0, v3}, Lorg/chromium/net/CronetEngine$Builder;->enableHttp2(Z)Lorg/chromium/net/CronetEngine$Builder;

    invoke-virtual {p0, v2}, Lorg/chromium/net/CronetEngine$Builder;->enableSdch(Z)Lorg/chromium/net/CronetEngine$Builder;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lorg/chromium/net/CronetEngine$Builder;->enableHttpCache(IJ)Lorg/chromium/net/CronetEngine$Builder;

    invoke-virtual {p0, v2}, Lorg/chromium/net/CronetEngine$Builder;->enableNetworkQualityEstimator(Z)Lorg/chromium/net/CronetEngine$Builder;

    invoke-virtual {p0, v3}, Lorg/chromium/net/CronetEngine$Builder;->enablePublicKeyPinningBypassForLocalTrustAnchors(Z)Lorg/chromium/net/CronetEngine$Builder;

    return-void
.end method


# virtual methods
.method public build()Lorg/chromium/net/CronetEngine;
    .locals 4

    invoke-virtual {p0}, Lorg/chromium/net/CronetEngine$Builder;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/net/CronetEngine$Builder;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/net/CronetEngine$Builder;->setUserAgent(Ljava/lang/String;)Lorg/chromium/net/CronetEngine$Builder;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/chromium/net/CronetEngine$Builder;->legacyMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lorg/chromium/net/CronetEngine;->access$000(Lorg/chromium/net/CronetEngine$Builder;)Lorg/chromium/net/CronetEngine;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Lorg/chromium/net/JavaCronetEngine;

    invoke-virtual {p0}, Lorg/chromium/net/CronetEngine$Builder;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/net/JavaCronetEngine;-><init>(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v1, "UrlRequestFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Using network stack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/chromium/net/CronetEngine;->getVersionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/chromium/net/CronetEngine$Builder;->mMockCertVerifier:J

    return-object v0
.end method

.method public enableHttp2(Z)Lorg/chromium/net/CronetEngine$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/net/CronetEngine$Builder;->mHttp2Enabled:Z

    return-object p0
.end method

.method public enableHttpCache(IJ)Lorg/chromium/net/CronetEngine$Builder;
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    if-ne p1, v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/net/CronetEngine$Builder;->storagePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Storage path must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/net/CronetEngine$Builder;->storagePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Storage path must not be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p1, :cond_3

    if-ne p1, v3, :cond_4

    :cond_3
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/net/CronetEngine$Builder;->mDisableCache:Z

    iput-wide p2, p0, Lorg/chromium/net/CronetEngine$Builder;->mHttpCacheMaxSize:J

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown cache mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v1

    goto :goto_0

    :pswitch_0
    iput v1, p0, Lorg/chromium/net/CronetEngine$Builder;->mHttpCacheMode:I

    :goto_1
    return-object p0

    :pswitch_1
    iput v2, p0, Lorg/chromium/net/CronetEngine$Builder;->mHttpCacheMode:I

    goto :goto_1

    :pswitch_2
    iput v3, p0, Lorg/chromium/net/CronetEngine$Builder;->mHttpCacheMode:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public enableLegacyMode(Z)Lorg/chromium/net/CronetEngine$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lorg/chromium/net/CronetEngine$Builder;->mLegacyModeEnabled:Z

    return-object p0
.end method

.method public enableNetworkQualityEstimator(Z)Lorg/chromium/net/CronetEngine$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/net/CronetEngine$Builder;->mNetworkQualityEstimatorEnabled:Z

    return-object p0
.end method

.method public enablePublicKeyPinningBypassForLocalTrustAnchors(Z)Lorg/chromium/net/CronetEngine$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/net/CronetEngine$Builder;->mPublicKeyPinningBypassForLocalTrustAnchorsEnabled:Z

    return-object p0
.end method

.method public enableQuic(Z)Lorg/chromium/net/CronetEngine$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/net/CronetEngine$Builder;->mQuicEnabled:Z

    return-object p0
.end method

.method public enableSdch(Z)Lorg/chromium/net/CronetEngine$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/net/CronetEngine$Builder;->mSdchEnabled:Z

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/chromium/net/CronetEngine$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultUserAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/net/CronetEngine$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/net/UserAgent;->from(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/net/CronetEngine$Builder;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public legacyMode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/net/CronetEngine$Builder;->mLegacyModeEnabled:Z

    return v0
.end method

.method public setLibraryName(Ljava/lang/String;)Lorg/chromium/net/CronetEngine$Builder;
    .locals 0

    iput-object p1, p0, Lorg/chromium/net/CronetEngine$Builder;->mLibraryName:Ljava/lang/String;

    return-object p0
.end method

.method public setStoragePath(Ljava/lang/String;)Lorg/chromium/net/CronetEngine$Builder;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Storage path must be set to existing directory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/chromium/net/CronetEngine$Builder;->mStoragePath:Ljava/lang/String;

    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lorg/chromium/net/CronetEngine$Builder;
    .locals 0

    iput-object p1, p0, Lorg/chromium/net/CronetEngine$Builder;->mUserAgent:Ljava/lang/String;

    return-object p0
.end method

.method public storagePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/net/CronetEngine$Builder;->mStoragePath:Ljava/lang/String;

    return-object v0
.end method
