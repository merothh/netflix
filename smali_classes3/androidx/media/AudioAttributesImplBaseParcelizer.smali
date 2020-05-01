.class public final Landroidx/media/AudioAttributesImplBaseParcelizer;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Lo/InheritableThreadLocal;
    .locals 3

    .line 11
    new-instance v0, Lo/InheritableThreadLocal;

    invoke-direct {v0}, Lo/InheritableThreadLocal;-><init>()V

    .line 12
    iget v1, v0, Lo/InheritableThreadLocal;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->d(II)I

    move-result v1

    iput v1, v0, Lo/InheritableThreadLocal;->a:I

    .line 13
    iget v1, v0, Lo/InheritableThreadLocal;->c:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->d(II)I

    move-result v1

    iput v1, v0, Lo/InheritableThreadLocal;->c:I

    .line 14
    iget v1, v0, Lo/InheritableThreadLocal;->b:I

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->d(II)I

    move-result v1

    iput v1, v0, Lo/InheritableThreadLocal;->b:I

    .line 15
    iget v1, v0, Lo/InheritableThreadLocal;->d:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->d(II)I

    move-result p0

    iput p0, v0, Lo/InheritableThreadLocal;->d:I

    return-object v0
.end method

.method public static write(Lo/InheritableThreadLocal;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->b(ZZ)V

    .line 21
    iget v0, p0, Lo/InheritableThreadLocal;->a:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->b(II)V

    .line 22
    iget v0, p0, Lo/InheritableThreadLocal;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->b(II)V

    .line 23
    iget v0, p0, Lo/InheritableThreadLocal;->b:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->b(II)V

    .line 24
    iget p0, p0, Lo/InheritableThreadLocal;->d:I

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->b(II)V

    return-void
.end method
