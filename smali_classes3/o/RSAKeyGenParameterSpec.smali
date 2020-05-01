.class public Lo/RSAKeyGenParameterSpec;
.super Landroidx/versionedparcelable/VersionedParcel;
.source ""


# instance fields
.field private final a:Landroid/util/SparseIntArray;

.field private final e:Landroid/os/Parcel;

.field private final f:Ljava/lang/String;

.field private g:I

.field private final h:I

.field private final i:I

.field private j:I

.field private m:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    new-instance v5, Lo/Spanned;

    invoke-direct {v5}, Lo/Spanned;-><init>()V

    new-instance v6, Lo/Spanned;

    invoke-direct {v6}, Lo/Spanned;-><init>()V

    new-instance v7, Lo/Spanned;

    invoke-direct {v7}, Lo/Spanned;-><init>()V

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lo/RSAKeyGenParameterSpec;-><init>(Landroid/os/Parcel;IILjava/lang/String;Lo/Spanned;Lo/Spanned;Lo/Spanned;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;IILjava/lang/String;Lo/Spanned;Lo/Spanned;Lo/Spanned;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "II",
            "Ljava/lang/String;",
            "Lo/Spanned<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Lo/Spanned<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Lo/Spanned<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p5, p6, p7}, Landroidx/versionedparcelable/VersionedParcel;-><init>(Lo/Spanned;Lo/Spanned;Lo/Spanned;)V

    .line 41
    new-instance p5, Landroid/util/SparseIntArray;

    invoke-direct {p5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p5, p0, Lo/RSAKeyGenParameterSpec;->a:Landroid/util/SparseIntArray;

    const/4 p5, -0x1

    .line 46
    iput p5, p0, Lo/RSAKeyGenParameterSpec;->j:I

    const/4 p6, 0x0

    .line 47
    iput p6, p0, Lo/RSAKeyGenParameterSpec;->g:I

    .line 48
    iput p5, p0, Lo/RSAKeyGenParameterSpec;->m:I

    .line 61
    iput-object p1, p0, Lo/RSAKeyGenParameterSpec;->e:Landroid/os/Parcel;

    .line 62
    iput p2, p0, Lo/RSAKeyGenParameterSpec;->i:I

    .line 63
    iput p3, p0, Lo/RSAKeyGenParameterSpec;->h:I

    .line 64
    iget p1, p0, Lo/RSAKeyGenParameterSpec;->i:I

    iput p1, p0, Lo/RSAKeyGenParameterSpec;->g:I

    .line 65
    iput-object p4, p0, Lo/RSAKeyGenParameterSpec;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 206
    iget-object v0, p0, Lo/RSAKeyGenParameterSpec;->e:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    return v0
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 2

    .line 176
    iget-object v0, p0, Lo/RSAKeyGenParameterSpec;->e:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

.method public b()V
    .locals 4

    .line 99
    iget v0, p0, Lo/RSAKeyGenParameterSpec;->j:I

    if-ltz v0, :cond_0

    .line 100
    iget-object v1, p0, Lo/RSAKeyGenParameterSpec;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 101
    iget-object v1, p0, Lo/RSAKeyGenParameterSpec;->e:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    sub-int v2, v1, v0

    .line 107
    iget-object v3, p0, Lo/RSAKeyGenParameterSpec;->e:Landroid/os/Parcel;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 108
    iget-object v0, p0, Lo/RSAKeyGenParameterSpec;->e:Landroid/os/Parcel;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Lo/RSAKeyGenParameterSpec;->e:Landroid/os/Parcel;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 2

    .line 196
    iget-object v0, p0, Lo/RSAKeyGenParameterSpec;->e:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lo/RSAKeyGenParameterSpec;->e:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public b(I)Z
    .locals 4

    .line 70
    :goto_0
    iget v0, p0, Lo/RSAKeyGenParameterSpec;->g:I

    iget v1, p0, Lo/RSAKeyGenParameterSpec;->h:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_2

    .line 71
    iget v0, p0, Lo/RSAKeyGenParameterSpec;->m:I

    if-ne v0, p1, :cond_0

    return v2

    .line 74
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    return v3

    .line 77
    :cond_1
    iget-object v0, p0, Lo/RSAKeyGenParameterSpec;->e:Landroid/os/Parcel;

    iget v1, p0, Lo/RSAKeyGenParameterSpec;->g:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    iget-object v0, p0, Lo/RSAKeyGenParameterSpec;->e:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    iget-object v1, p0, Lo/RSAKeyGenParameterSpec;->e:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lo/RSAKeyGenParameterSpec;->m:I

    .line 82
    iget v1, p0, Lo/RSAKeyGenParameterSpec;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lo/RSAKeyGenParameterSpec;->g:I

    goto :goto_0

    .line 84
    :cond_2
    iget v0, p0, Lo/RSAKeyGenParameterSpec;->m:I

    if-ne v0, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public c(Z)V
    .locals 1

    .line 181
    iget-object v0, p0, Lo/RSAKeyGenParameterSpec;->e:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lo/RSAKeyGenParameterSpec;->e:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(I)V
    .locals 2

    .line 89
    invoke-virtual {p0}, Lo/RSAKeyGenParameterSpec;->b()V

    .line 90
    iput p1, p0, Lo/RSAKeyGenParameterSpec;->j:I

    .line 91
    iget-object v0, p0, Lo/RSAKeyGenParameterSpec;->a:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lo/RSAKeyGenParameterSpec;->e:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0}, Lo/RSAKeyGenParameterSpec;->e(I)V

    .line 94
    invoke-virtual {p0, p1}, Lo/RSAKeyGenParameterSpec;->e(I)V

    return-void
.end method

.method public d([B)V
    .locals 2

    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lo/RSAKeyGenParameterSpec;->e:Landroid/os/Parcel;

    array-length v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-object v0, p0, Lo/RSAKeyGenParameterSpec;->e:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object p1, p0, Lo/RSAKeyGenParameterSpec;->e:Landroid/os/Parcel;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method

.method public e()Landroidx/versionedparcelable/VersionedParcel;
    .locals 9

    .line 119
    new-instance v8, Lo/RSAKeyGenParameterSpec;

    iget-object v1, p0, Lo/RSAKeyGenParameterSpec;->e:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    iget v0, p0, Lo/RSAKeyGenParameterSpec;->g:I

    iget v3, p0, Lo/RSAKeyGenParameterSpec;->i:I

    if-ne v0, v3, :cond_0

    iget v0, p0, Lo/RSAKeyGenParameterSpec;->h:I

    :cond_0
    move v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lo/RSAKeyGenParameterSpec;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lo/RSAKeyGenParameterSpec;->b:Lo/Spanned;

    iget-object v6, p0, Lo/RSAKeyGenParameterSpec;->d:Lo/Spanned;

    iget-object v7, p0, Lo/RSAKeyGenParameterSpec;->c:Lo/Spanned;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lo/RSAKeyGenParameterSpec;-><init>(Landroid/os/Parcel;IILjava/lang/String;Lo/Spanned;Lo/Spanned;Lo/Spanned;)V

    return-object v8
.end method

.method public e(I)V
    .locals 1

    .line 146
    iget-object v0, p0, Lo/RSAKeyGenParameterSpec;->e:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public f()Z
    .locals 1

    .line 258
    iget-object v0, p0, Lo/RSAKeyGenParameterSpec;->e:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()[B
    .locals 2

    .line 236
    iget-object v0, p0, Lo/RSAKeyGenParameterSpec;->e:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 240
    :cond_0
    new-array v0, v0, [B

    .line 241
    iget-object v1, p0, Lo/RSAKeyGenParameterSpec;->e:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-object v0
.end method

.method public h()Ljava/lang/CharSequence;
    .locals 2

    .line 201
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    iget-object v1, p0, Lo/RSAKeyGenParameterSpec;->e:Landroid/os/Parcel;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public i()Landroid/os/Parcelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lo/RSAKeyGenParameterSpec;->e:Landroid/os/Parcel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
