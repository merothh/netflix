.class public abstract Lcom/google/android/play/core/internal/v;
.super Lcom/google/android/play/core/internal/j;

# interfaces
.implements Lcom/google/android/play/core/internal/w;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionService"

    invoke-direct {p0, v0}, Lcom/google/android/play/core/internal/j;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;)Z
    .locals 3

    const/4 v0, 0x2

    const-string v1, "com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/play/core/internal/k;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of v0, p2, Lcom/google/android/play/core/internal/y;

    if-eqz v0, :cond_1

    move-object v2, p2

    check-cast v2, Lcom/google/android/play/core/internal/y;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/play/core/internal/x;

    invoke-direct {v2, p1}, Lcom/google/android/play/core/internal/x;-><init>(Landroid/os/IBinder;)V

    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/play/core/internal/v;->a(Lcom/google/android/play/core/internal/y;)V

    goto :goto_2

    :cond_3
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/play/core/internal/k;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/play/core/internal/y;

    if-eqz v1, :cond_4

    move-object v2, v0

    check-cast v2, Lcom/google/android/play/core/internal/y;

    goto :goto_1

    :cond_4
    new-instance v2, Lcom/google/android/play/core/internal/x;

    invoke-direct {v2, p2}, Lcom/google/android/play/core/internal/x;-><init>(Landroid/os/IBinder;)V

    :cond_5
    :goto_1
    invoke-virtual {p0, p1, v2}, Lcom/google/android/play/core/internal/v;->a(Landroid/os/Bundle;Lcom/google/android/play/core/internal/y;)V

    :goto_2
    const/4 p1, 0x1

    return p1
.end method
