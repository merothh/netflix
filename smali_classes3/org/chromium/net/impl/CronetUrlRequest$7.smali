.class Lorg/chromium/net/impl/CronetUrlRequest$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/CronetUrlRequest;->onStatus(Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/net/impl/CronetUrlRequest;

.field final synthetic val$listener:Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;

.field final synthetic val$loadState:I


# direct methods
.method constructor <init>(Lorg/chromium/net/impl/CronetUrlRequest;Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;I)V
    .locals 0

    .line 695
    iput-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequest$7;->this$0:Lorg/chromium/net/impl/CronetUrlRequest;

    iput-object p2, p0, Lorg/chromium/net/impl/CronetUrlRequest$7;->val$listener:Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;

    iput p3, p0, Lorg/chromium/net/impl/CronetUrlRequest$7;->val$loadState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 698
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest$7;->val$listener:Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;

    iget v1, p0, Lorg/chromium/net/impl/CronetUrlRequest$7;->val$loadState:I

    invoke-static {v1}, Lorg/chromium/net/impl/UrlRequestBase;->convertLoadState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;->onStatus(I)V

    return-void
.end method
