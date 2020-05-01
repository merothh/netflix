.class public final Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929$ActionBar;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929$ActionBar;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929$ActionBar;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILo/amc;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->d:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->e:Z

    iput-boolean p4, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->a:Z

    iput-boolean p5, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZILo/amc;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 8
    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 9
    move-object p2, v0

    check-cast p2, Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v1, p3

    :goto_0
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move v2, p4

    :goto_1
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    move v0, p5

    :goto_2
    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move p5, v1

    move p6, v2

    move p7, v0

    .line 13
    invoke-direct/range {p2 .. p7}, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->c:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->e:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->b:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->a:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->e:Z

    iget-boolean v1, p1, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->e:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->a:Z

    iget-boolean v1, p1, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->a:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->c:Z

    iget-boolean p1, p1, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->c:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->d:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->e:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->a:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->c:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaTracksUserPreference_Ab22929(preferredAudio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", preferredSubtitles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", preferredAssistiveAudio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", preferredCloseCaptionSubtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", switchToStreamingOfflineContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->e:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->a:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;->c:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
