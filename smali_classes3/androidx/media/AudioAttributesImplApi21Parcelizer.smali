.class public final Landroidx/media/AudioAttributesImplApi21Parcelizer;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Lo/FunctionalInterface;
    .locals 3

    .line 11
    new-instance v0, Lo/FunctionalInterface;

    invoke-direct {v0}, Lo/FunctionalInterface;-><init>()V

    .line 12
    iget-object v1, v0, Lo/FunctionalInterface;->d:Landroid/media/AudioAttributes;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    iput-object v1, v0, Lo/FunctionalInterface;->d:Landroid/media/AudioAttributes;

    .line 13
    iget v1, v0, Lo/FunctionalInterface;->c:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->d(II)I

    move-result p0

    iput p0, v0, Lo/FunctionalInterface;->c:I

    return-object v0
.end method

.method public static write(Lo/FunctionalInterface;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->b(ZZ)V

    .line 19
    iget-object v0, p0, Lo/FunctionalInterface;->d:Landroid/media/AudioAttributes;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->e(Landroid/os/Parcelable;I)V

    .line 20
    iget p0, p0, Lo/FunctionalInterface;->c:I

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->b(II)V

    return-void
.end method
