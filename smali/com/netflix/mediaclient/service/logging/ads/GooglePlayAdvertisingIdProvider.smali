.class public Lcom/netflix/mediaclient/service/logging/ads/GooglePlayAdvertisingIdProvider;
.super Ljava/lang/Object;
.source "GooglePlayAdvertisingIdProvider.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;


# instance fields
.field private mAdvertisingId:Ljava/lang/String;

.field private mIsLAT:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/ads/GooglePlayAdvertisingIdProvider;->mAdvertisingId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/ads/GooglePlayAdvertisingIdProvider;->mIsLAT:Z

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/GooglePlayAdvertisingIdProvider;->mAdvertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public isLimitAdTrackingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/ads/GooglePlayAdvertisingIdProvider;->mIsLAT:Z

    return v0
.end method

.method public isResettable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
