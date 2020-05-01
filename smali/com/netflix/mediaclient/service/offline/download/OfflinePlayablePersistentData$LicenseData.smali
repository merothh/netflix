.class public Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;
.super Ljava/lang/Object;
.source "OfflinePlayablePersistentData.java"


# instance fields
.field public mExpirationTimeInMs:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expirationTime"
    .end annotation
.end field

.field public mKeySetId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "keySetId"
    .end annotation
.end field

.field public mLicenseDate:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "licenseDate"
    .end annotation
.end field

.field public mLinkDeactivate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "linkDeactivate"
    .end annotation
.end field

.field public mLinkDownloadAndActivate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "linkDownloadAndActivate"
    .end annotation
.end field

.field public mLinkRefresh:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "linkRefresh"
    .end annotation
.end field

.field public mPlayWindowResetLimit:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playWindowResetLimit"
    .end annotation
.end field

.field public mPlayableWindowInHour:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playableWindow"
    .end annotation
.end field

.field public mPwResettable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resettable"
    .end annotation
.end field

.field public mRefreshLicenseTimestamp:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refreshLicenseTimestamp"
    .end annotation
.end field

.field public mShouldRefresh:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shouldRefresh"
    .end annotation
.end field

.field public mShouldRefreshByTimestamp:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mShouldRefreshByTimestamp"
    .end annotation
.end field

.field public mShouldUsePlayWindowLimits:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shouldUsePlayWindowLimits"
    .end annotation
.end field

.field public mViewingWindow:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "viewingWindow"
    .end annotation
.end field

.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
