.class Lorg/chromium/net/impl/CronetUrlRequestContext$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/CronetUrlRequestContext;->onRttObservation(IJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/net/impl/CronetUrlRequestContext;

.field final synthetic val$listener:Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;

.field final synthetic val$rttMs:I

.field final synthetic val$source:I

.field final synthetic val$whenMs:J


# direct methods
.method constructor <init>(Lorg/chromium/net/impl/CronetUrlRequestContext;Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;IJI)V
    .locals 0

    .line 618
    iput-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$2;->this$0:Lorg/chromium/net/impl/CronetUrlRequestContext;

    iput-object p2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$2;->val$listener:Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;

    iput p3, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$2;->val$rttMs:I

    iput-wide p4, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$2;->val$whenMs:J

    iput p6, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$2;->val$source:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 621
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$2;->val$listener:Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;

    iget v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$2;->val$rttMs:I

    iget-wide v2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$2;->val$whenMs:J

    iget v4, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$2;->val$source:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/net/impl/VersionSafeCallbacks$NetworkQualityRttListenerWrapper;->onRttObservation(IJI)V

    return-void
.end method
