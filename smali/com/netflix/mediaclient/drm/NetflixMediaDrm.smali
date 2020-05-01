.class public interface abstract Lcom/netflix/mediaclient/drm/NetflixMediaDrm;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;,
        Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;,
        Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;,
        Lcom/netflix/mediaclient/drm/NetflixMediaDrm$KeyRequest;,
        Lcom/netflix/mediaclient/drm/NetflixMediaDrm$OnEventListener;,
        Lcom/netflix/mediaclient/drm/NetflixMediaDrm$CryptoSession;,
        Lcom/netflix/mediaclient/drm/NetflixMediaDrm$MediaDrmType;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_DRM_SESSION_COUNT:I = 0x8

.field public static final EMBEDDED_MEDIA_DRM:I = 0x1

.field public static final PLATFORM_MEDIA_DRM:I = 0x0

.field public static final PROPERTY_APP_ID:Ljava/lang/String; = "appId"

.field public static final PROPERTY_DEVICE_UNIQUE_ID:Ljava/lang/String; = "deviceUniqueId"

.field public static final PROPERTY_HDCP_LEVEL:Ljava/lang/String; = "hdcpLevel"

.field public static final PROPERTY_MAX_HDCP_LEVEL:Ljava/lang/String; = "maxHdcpLevel"

.field public static final PROPERTY_MAX_NUMBER_OF_SESSIONS:Ljava/lang/String; = "maxNumberOfSessions"

.field public static final PROPERTY_OEM_CRYPTO_API_VERSION:Ljava/lang/String; = "oemCryptoApiVersion"

.field public static final PROPERTY_PRIVACY_MODE:Ljava/lang/String; = "privacyMode"

.field public static final PROPERTY_SECURITY_LEVEL:Ljava/lang/String; = "securityLevel"

.field public static final PROPERTY_SESSION_SHARING:Ljava/lang/String; = "sessionSharing"

.field public static final PROPERTY_SYSTEM_ID:Ljava/lang/String; = "systemId"

.field public static final PROPERTY_USAGE_REPORTING_SUPPORT:Ljava/lang/String; = "usageReportingSupport"

.field public static final SYSTEM_ID_FAILURE_TO_RETRIEVE:Ljava/lang/String; = "SYSTEMID_GET_FAILURE"

.field public static final WIDEVINE_SCHEME:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    new-instance v0, Ljava/util/UUID;

    const-wide v1, -0x121074568629b532L    # -3.563403477674908E221

    const-wide v3, -0x5c37d8232ae2de13L

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->WIDEVINE_SCHEME:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract closeSession([B)V
.end method

.method public abstract getCryptoSession([BLjava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm$CryptoSession;
.end method

.method public abstract getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm$KeyRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/mediaclient/drm/NetflixMediaDrm$KeyRequest;"
        }
    .end annotation
.end method

.method public abstract getMaxHdcpLevel()I
.end method

.method public abstract getMaxSessionCount()I
.end method

.method public abstract getMediaDrmType()I
.end method

.method public abstract getOemCryptoApiVersion()Ljava/lang/String;
.end method

.method public abstract getPropertyByteArray(Ljava/lang/String;)[B
.end method

.method public abstract getPropertyString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getProvisionRequest()Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;
.end method

.method public abstract getSecureStops()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract openSession(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;)[B
.end method

.method public abstract provideKeyResponse([B[B)[B
.end method

.method public abstract provideProvisionResponse([B)V
.end method

.method public abstract queryKeyStatus([B)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract releaseSecureStops([B)V
.end method

.method public abstract removeKeys([B)V
.end method

.method public abstract restoreKeys([B[B)V
.end method

.method public abstract setOnEventListener(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$OnEventListener;)V
.end method

.method public abstract setPropertyByteArray(Ljava/lang/String;[B)V
.end method

.method public abstract setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
.end method
