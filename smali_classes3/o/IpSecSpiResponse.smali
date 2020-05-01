.class final Lo/IpSecSpiResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/IpSecUdpEncapResponse;


# instance fields
.field private final a:Lcom/google/android/gms/gcm/INetworkTaskCallback;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/google/android/gms/gcm/INetworkTaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/gcm/INetworkTaskCallback;

    move-result-object p1

    iput-object p1, p0, Lo/IpSecSpiResponse;->a:Lcom/google/android/gms/gcm/INetworkTaskCallback;

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 1

    .line 36
    :try_start_0
    iget-object v0, p0, Lo/IpSecSpiResponse;->a:Lcom/google/android/gms/gcm/INetworkTaskCallback;

    invoke-interface {v0, p1}, Lcom/google/android/gms/gcm/INetworkTaskCallback;->taskFinished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 38
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
