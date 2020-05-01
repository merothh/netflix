.class public final Lorg/chromium/net/impl/CronetMetrics;
.super Lorg/chromium/net/RequestFinishedInfo$Metrics;
.source "CronetMetrics.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mConnectEndMs:J

.field private final mConnectStartMs:J

.field private final mDnsEndMs:J

.field private final mDnsStartMs:J

.field private final mPushEndMs:J

.field private final mPushStartMs:J

.field private final mReceivedBytesCount:Ljava/lang/Long;

.field private final mRequestStartMs:J

.field private final mResponseEndMs:J

.field private final mResponseStartMs:J

.field private final mSendingEndMs:J

.field private final mSendingStartMs:J

.field private final mSentBytesCount:Ljava/lang/Long;

.field private final mSocketReused:Z

.field private final mSslEndMs:J

.field private final mSslStartMs:J

.field private final mTotalTimeMs:Ljava/lang/Long;

.field private final mTtfbMs:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lorg/chromium/net/impl/CronetMetrics;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/net/impl/CronetMetrics;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 64
    invoke-direct {p0}, Lorg/chromium/net/RequestFinishedInfo$Metrics;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/chromium/net/impl/CronetMetrics;->mTtfbMs:Ljava/lang/Long;

    .line 66
    iput-object p2, p0, Lorg/chromium/net/impl/CronetMetrics;->mTotalTimeMs:Ljava/lang/Long;

    .line 67
    iput-object p3, p0, Lorg/chromium/net/impl/CronetMetrics;->mSentBytesCount:Ljava/lang/Long;

    .line 68
    iput-object p4, p0, Lorg/chromium/net/impl/CronetMetrics;->mReceivedBytesCount:Ljava/lang/Long;

    .line 71
    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mRequestStartMs:J

    .line 72
    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mDnsStartMs:J

    .line 73
    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mDnsEndMs:J

    .line 74
    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mConnectStartMs:J

    .line 75
    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mConnectEndMs:J

    .line 76
    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mSslStartMs:J

    .line 77
    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mSslEndMs:J

    .line 78
    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mSendingStartMs:J

    .line 79
    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mSendingEndMs:J

    .line 80
    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mPushStartMs:J

    .line 81
    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mPushEndMs:J

    .line 82
    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mResponseStartMs:J

    .line 83
    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mResponseEndMs:J

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mSocketReused:Z

    .line 85
    return-void
.end method
