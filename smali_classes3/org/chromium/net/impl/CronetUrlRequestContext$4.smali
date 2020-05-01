.class Lorg/chromium/net/impl/CronetUrlRequestContext$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/CronetUrlRequestContext;->reportRequestFinished(Lorg/chromium/net/RequestFinishedInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/net/impl/CronetUrlRequestContext;

.field final synthetic val$listener:Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;

.field final synthetic val$requestInfo:Lorg/chromium/net/RequestFinishedInfo;


# direct methods
.method constructor <init>(Lorg/chromium/net/impl/CronetUrlRequestContext;Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;Lorg/chromium/net/RequestFinishedInfo;)V
    .locals 0

    .line 655
    iput-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$4;->this$0:Lorg/chromium/net/impl/CronetUrlRequestContext;

    iput-object p2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$4;->val$listener:Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;

    iput-object p3, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$4;->val$requestInfo:Lorg/chromium/net/RequestFinishedInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 658
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$4;->val$listener:Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;

    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$4;->val$requestInfo:Lorg/chromium/net/RequestFinishedInfo;

    invoke-virtual {v0, v1}, Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;->onRequestFinished(Lorg/chromium/net/RequestFinishedInfo;)V

    return-void
.end method
