.class public final Lorg/chromium/net/impl/CronetUrlRequest;
.super Ljava/lang/Object;
.source "CronetUrlRequest.java"


# static fields
.field private static final EMPTY_METRICS:Lorg/chromium/net/RequestFinishedInfo$Metrics;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    new-instance v0, Lorg/chromium/net/impl/CronetMetrics;

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/chromium/net/impl/CronetMetrics;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    sput-object v0, Lorg/chromium/net/impl/CronetUrlRequest;->EMPTY_METRICS:Lorg/chromium/net/RequestFinishedInfo$Metrics;

    return-void
.end method
