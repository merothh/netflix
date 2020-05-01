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

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Lorg/chromium/net/RequestFinishedInfo$Metrics;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/CronetMetrics;->mTtfbMs:Ljava/lang/Long;

    iput-object p2, p0, Lorg/chromium/net/impl/CronetMetrics;->mTotalTimeMs:Ljava/lang/Long;

    iput-object p3, p0, Lorg/chromium/net/impl/CronetMetrics;->mSentBytesCount:Ljava/lang/Long;

    iput-object p4, p0, Lorg/chromium/net/impl/CronetMetrics;->mReceivedBytesCount:Ljava/lang/Long;

    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mRequestStartMs:J

    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mDnsStartMs:J

    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mDnsEndMs:J

    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mConnectStartMs:J

    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mConnectEndMs:J

    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mSslStartMs:J

    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mSslEndMs:J

    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mSendingStartMs:J

    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mSendingEndMs:J

    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mPushStartMs:J

    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mPushEndMs:J

    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mResponseStartMs:J

    iput-wide v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mResponseEndMs:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/net/impl/CronetMetrics;->mSocketReused:Z

    return-void
.end method
