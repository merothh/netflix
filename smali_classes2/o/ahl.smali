.class public Lo/ahl;
.super Ljava/io/OutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ahl$StateListAnimator;,
        Lo/ahl$Application;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/ahl$Application;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/ahl$Application;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/io/ByteArrayOutputStream;

.field private final d:Ljava/io/OutputStream;

.field private e:I

.field private final g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lo/ahl$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 111
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lo/ahl;->b:Ljava/util/Map;

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [B

    int-to-byte v4, v2

    aput-byte v4, v3, v0

    .line 115
    new-instance v4, Lo/ahl$Application;

    invoke-direct {v4, v3}, Lo/ahl$Application;-><init>([B)V

    .line 116
    sget-object v3, Lo/ahl;->b:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .line 125
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 341
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lo/ahl;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lo/ahl;->a:Ljava/util/Map;

    .line 344
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lo/ahl;->c:Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x8

    .line 346
    iput v0, p0, Lo/ahl;->e:I

    .line 348
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/ahl;->g:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 351
    iput-boolean v0, p0, Lo/ahl;->i:Z

    .line 353
    iput-boolean v0, p0, Lo/ahl;->h:Z

    .line 126
    iput-object p1, p0, Lo/ahl;->d:Ljava/io/OutputStream;

    return-void
.end method

.method private static e(Ljava/util/LinkedList;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lo/ahl$StateListAnimator;",
            ">;)[B"
        }
    .end annotation

    .line 278
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 281
    :cond_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 283
    invoke-virtual {p0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/ahl$StateListAnimator;

    .line 284
    iget v6, v5, Lo/ahl$StateListAnimator;->c:I

    :cond_1
    :goto_0
    if-lez v6, :cond_0

    if-le v6, v3, :cond_2

    .line 290
    iget v7, v5, Lo/ahl$StateListAnimator;->e:I

    sub-int/2addr v6, v3

    ushr-int v3, v7, v6

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    int-to-byte v3, v3

    .line 295
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v3, 0x8

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    if-gt v6, v3, :cond_1

    .line 309
    iget v7, v5, Lo/ahl$StateListAnimator;->e:I

    sub-int v6, v3, v6

    shl-int/2addr v7, v6

    and-int/lit16 v7, v7, 0xff

    rsub-int/lit8 v3, v3, 0x8

    ushr-int v3, v7, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    int-to-byte v3, v3

    if-nez v6, :cond_3

    .line 323
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v3, 0x8

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    move v4, v3

    move v3, v6

    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    if-ge v3, v2, :cond_5

    .line 334
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 335
    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 158
    iget-boolean v0, p0, Lo/ahl;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lo/ahl;->i:Z

    .line 162
    iget-object v0, p0, Lo/ahl;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 163
    iget-object v0, p0, Lo/ahl;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 164
    new-instance v1, Lo/ahl$Application;

    invoke-direct {v1, v0}, Lo/ahl$Application;-><init>([B)V

    .line 165
    iget-object v0, p0, Lo/ahl;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 166
    iget-object v1, p0, Lo/ahl;->g:Ljava/util/LinkedList;

    new-instance v2, Lo/ahl$StateListAnimator;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p0, Lo/ahl;->e:I

    invoke-direct {v2, v0, v3}, Lo/ahl$StateListAnimator;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {p0}, Lo/ahl;->flush()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 143
    iget-boolean v0, p0, Lo/ahl;->h:Z

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lo/ahl;->a()V

    .line 145
    iget-object v0, p0, Lo/ahl;->d:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lo/ahl;->h:Z

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 134
    invoke-virtual {p0}, Lo/ahl;->close()V

    .line 135
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public flush()V
    .locals 4

    .line 240
    iget-object v0, p0, Lo/ahl;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 246
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 247
    :cond_1
    iget-object v3, p0, Lo/ahl;->g:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 248
    iget-object v3, p0, Lo/ahl;->g:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/ahl$StateListAnimator;

    .line 249
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 250
    iget v3, v3, Lo/ahl$StateListAnimator;->c:I

    add-int/2addr v2, v3

    .line 254
    rem-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_1

    .line 255
    iget-object v2, p0, Lo/ahl;->d:Ljava/io/OutputStream;

    invoke-static {v0}, Lo/ahl;->e(Ljava/util/LinkedList;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 256
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_0

    .line 262
    :cond_2
    iget-boolean v1, p0, Lo/ahl;->i:Z

    if-eqz v1, :cond_3

    .line 263
    iget-object v1, p0, Lo/ahl;->d:Ljava/io/OutputStream;

    invoke-static {v0}, Lo/ahl;->e(Ljava/util/LinkedList;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 267
    :cond_3
    iget-object v1, p0, Lo/ahl;->g:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    return-void
.end method

.method public write(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 179
    invoke-virtual {p0, v1, v2, v0}, Lo/ahl;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 6

    .line 187
    iget-boolean v0, p0, Lo/ahl;->h:Z

    if-nez v0, :cond_6

    if-ltz p2, :cond_5

    if-ltz p3, :cond_4

    add-int/2addr p3, p2

    .line 194
    array-length v0, p1

    if-gt p3, v0, :cond_3

    :goto_0
    if-ge p2, p3, :cond_2

    .line 199
    aget-byte v0, p1, p2

    .line 200
    iget-object v1, p0, Lo/ahl;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 203
    iget-object v1, p0, Lo/ahl;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 204
    new-instance v2, Lo/ahl$Application;

    invoke-direct {v2, v1}, Lo/ahl$Application;-><init>([B)V

    .line 205
    iget-object v3, p0, Lo/ahl;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_1

    .line 210
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 211
    new-instance v3, Lo/ahl$Application;

    invoke-direct {v3, v1}, Lo/ahl$Application;-><init>([B)V

    .line 212
    iget-object v1, p0, Lo/ahl;->a:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 213
    iget-object v3, p0, Lo/ahl;->g:Ljava/util/LinkedList;

    new-instance v4, Lo/ahl$StateListAnimator;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v5, p0, Lo/ahl;->e:I

    invoke-direct {v4, v1, v5}, Lo/ahl$StateListAnimator;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v1, p0, Lo/ahl;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 220
    iget v3, p0, Lo/ahl;->e:I

    shr-int v4, v1, v3

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 221
    iput v3, p0, Lo/ahl;->e:I

    .line 222
    :cond_0
    iget-object v3, p0, Lo/ahl;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v1, p0, Lo/ahl;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 226
    iget-object v1, p0, Lo/ahl;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 229
    iget-object v0, p0, Lo/ahl;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 230
    invoke-virtual {p0}, Lo/ahl;->flush()V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 195
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Offset plus length cannot be greater than the array length."

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 193
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Length cannot be negative."

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 191
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Offset cannot be negative."

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Output stream is closed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
