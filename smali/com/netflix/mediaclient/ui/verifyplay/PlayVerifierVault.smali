.class public Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;
.super Ljava/lang/Object;
.source "PlayVerifierVault.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;",
            ">;"
        }
    .end annotation
.end field

.field public static final NAME:Ljava/lang/String;


# instance fields
.field private mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

.field private mBookmark:I

.field private mInvokeLocation:Ljava/lang/String;

.field private mRemotePlayback:Z

.field private mUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->NAME:Ljava/lang/String;

    new-instance v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->mInvokeLocation:Ljava/lang/String;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->mUuid:Ljava/lang/String;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->mRemotePlayback:Z

    const-class v0, Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/Asset;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->mBookmark:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/Asset;ZLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/Asset;Z)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/Asset;ZLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/Asset;ZI)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/Asset;ZLjava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/Asset;ZLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->mInvokeLocation:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    iput-boolean p3, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->mRemotePlayback:Z

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->mUuid:Ljava/lang/String;

    iput p5, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->mBookmark:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/Asset;ZLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAsset()Lcom/netflix/mediaclient/servicemgr/Asset;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    return-object v0
.end method

.method public getInvokeLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->mInvokeLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getmBookmark()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->mBookmark:I

    return v0
.end method

.method public isRemotePlayback()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->mRemotePlayback:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PinDialogVault [mInvokeLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->mInvokeLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAsset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRemotePlayback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->mRemotePlayback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mBookmark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->mBookmark:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->mInvokeLocation:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->mUuid:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->mRemotePlayback:Z

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeBoolean(Landroid/os/Parcel;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->mBookmark:I

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->writeInt(Landroid/os/Parcel;I)V

    return-void
.end method
