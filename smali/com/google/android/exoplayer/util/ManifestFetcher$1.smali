.class Lcom/google/android/exoplayer/util/ManifestFetcher$1;
.super Ljava/lang/Object;
.source "ManifestFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/util/ManifestFetcher;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/util/ManifestFetcher;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$1;->this$0:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$1;->this$0:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-static {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->access$000(Lcom/google/android/exoplayer/util/ManifestFetcher;)Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;->onManifestRefreshStarted()V

    return-void
.end method
