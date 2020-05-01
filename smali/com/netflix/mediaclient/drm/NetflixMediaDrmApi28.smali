.class public interface abstract Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi28;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi28$MetricsConstants;,
        Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi28$SecurityLevel;,
        Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi28$HdcpLevel;
    }
.end annotation


# static fields
.field public static final HDCP_LEVEL_UNKNOWN:I = 0x0

.field public static final HDCP_NONE:I = 0x1

.field public static final HDCP_NO_DIGITAL_OUTPUT:I = 0x7fffffff

.field public static final HDCP_V1:I = 0x2

.field public static final HDCP_V2:I = 0x3

.field public static final HDCP_V2_1:I = 0x4

.field public static final HDCP_V2_2:I = 0x5

.field public static final SECURITY_LEVEL_HW_SECURE_ALL:I = 0x5

.field public static final SECURITY_LEVEL_HW_SECURE_CRYPTO:I = 0x3

.field public static final SECURITY_LEVEL_HW_SECURE_DECODE:I = 0x4

.field public static final SECURITY_LEVEL_MAX:I = 0x6

.field public static final SECURITY_LEVEL_SW_SECURE_CRYPTO:I = 0x1

.field public static final SECURITY_LEVEL_SW_SECURE_DECODE:I = 0x2

.field public static final SECURITY_LEVEL_UNKNOWN:I


# virtual methods
.method public abstract getConnectedHdcpLevel()I
.end method

.method public abstract getMaxSecurityLevel()I
.end method

.method public abstract getMetrics()Landroid/os/PersistableBundle;
.end method

.method public abstract getOpenSessionCount()I
.end method

.method public abstract getSecureStopIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract getSecurityLevel([B)I
.end method

.method public abstract openSession(I)[B
.end method

.method public abstract removeSecureStop([B)V
.end method
