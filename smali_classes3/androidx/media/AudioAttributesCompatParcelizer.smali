.class public final Landroidx/media/AudioAttributesCompatParcelizer;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media/AudioAttributesCompat;
    .locals 3

    .line 11
    new-instance v0, Landroidx/media/AudioAttributesCompat;

    invoke-direct {v0}, Landroidx/media/AudioAttributesCompat;-><init>()V

    .line 12
    iget-object v1, v0, Landroidx/media/AudioAttributesCompat;->a:Lo/IllegalAccessError;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->d(Lo/RSAMultiPrimePrivateCrtKeySpec;I)Lo/RSAMultiPrimePrivateCrtKeySpec;

    move-result-object p0

    check-cast p0, Lo/IllegalAccessError;

    iput-object p0, v0, Landroidx/media/AudioAttributesCompat;->a:Lo/IllegalAccessError;

    return-object v0
.end method

.method public static write(Landroidx/media/AudioAttributesCompat;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->b(ZZ)V

    .line 18
    iget-object p0, p0, Landroidx/media/AudioAttributesCompat;->a:Lo/IllegalAccessError;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->c(Lo/RSAMultiPrimePrivateCrtKeySpec;I)V

    return-void
.end method
