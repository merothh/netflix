.class Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$DiscoveryControllerImpl;
.super Ljava/lang/Object;
.source "NativeMdx.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/DiscoveryController;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$DiscoveryControllerImpl;->this$0:Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRemoteDeviceReady(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$DiscoveryControllerImpl;->this$0:Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/mdx/discovery/IsRemoteDeviceReady;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/javabridge/invoke/mdx/discovery/IsRemoteDeviceReady;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->access$000(Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public launchNetflix(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$DiscoveryControllerImpl;->this$0:Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/mdx/discovery/LaunchNetflix;

    invoke-direct {v1, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/mdx/discovery/LaunchNetflix;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->access$000(Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method
