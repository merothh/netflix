.class public final Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$StateListAnimator;,
        Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;,
        Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$Application;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final d:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$Application;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private c:Z

.field private final e:Ljava/lang/String;

.field private final f:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private final g:Lcom/netflix/mediaclient/ui/player/PlayerExtras;

.field private final h:Ljava/lang/String;

.field private final i:Z

.field private final j:Lcom/netflix/mediaclient/servicemgr/PlayContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$Application;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->d:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$Application;

    new-instance v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$StateListAnimator;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$StateListAnimator;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 28

    const-string v0, "invokeLocation"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uuid"

    move-object/from16 v9, p2

    invoke-static {v9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v8, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->j:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const-string v0, "PlayContextImp.NFLX_MDX_CONTEXT"

    invoke-static {v8, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    move-object v10, v0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1fff

    const/16 v27, 0x0

    invoke-direct/range {v10 .. v27}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;-><init>(IJIZZZLcom/netflix/mediaclient/ui/player/PostPlayExtras;ZLcom/netflix/cl/model/AppView;JFLcom/netflix/mediaclient/ui/player/PlayerLiteMode;Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;ILo/amc;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    .line 25
    invoke-direct/range {v1 .. v10}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V
    .locals 11

    const-string v0, "invokeLocation"

    move-object v2, p1

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playContext"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerExtras"

    move-object/from16 v10, p8

    invoke-static {v10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    .line 46
    invoke-direct/range {v1 .. v10}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V
    .locals 1

    const-string v0, "invokeLocation"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playContext"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerExtras"

    invoke-static {p9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->c:Z

    iput-boolean p4, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->b:Z

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->f:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-boolean p6, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->i:Z

    iput-object p7, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->j:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iput-object p8, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->g:Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->c:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->f:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->b:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->i:Z

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->j:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-object v0
.end method

.method public final j()Lcom/netflix/mediaclient/ui/player/PlayerExtras;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->g:Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PinDialogVault [pinVerificationRequestedBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRemotePlayback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPlayContext"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->j:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", playerExtras"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->g:Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->c:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->b:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->f:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->i:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->j:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->g:Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
