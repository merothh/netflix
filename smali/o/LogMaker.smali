.class public final Lo/LogMaker;
.super Ljava/io/OutputStream;
.source ""


# static fields
.field public static final d:[B


# instance fields
.field private final a:Lo/IInputMethodWrapper;

.field private b:I

.field private c:[B

.field private final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "[B>;"
        }
    .end annotation
.end field

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 31
    sput-object v0, Lo/LogMaker;->d:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0}, Lo/LogMaker;-><init>(Lo/IInputMethodWrapper;)V

    return-void
.end method

.method public constructor <init>(Lo/IInputMethodWrapper;)V
    .locals 1

    const/16 v0, 0x1f4

    .line 52
    invoke-direct {p0, p1, v0}, Lo/LogMaker;-><init>(Lo/IInputMethodWrapper;I)V

    return-void
.end method

.method public constructor <init>(Lo/IInputMethodWrapper;I)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/LogMaker;->e:Ljava/util/LinkedList;

    .line 56
    iput-object p1, p0, Lo/LogMaker;->a:Lo/IInputMethodWrapper;

    if-nez p1, :cond_0

    .line 57
    new-array p1, p2, [B

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lo/IInputMethodWrapper;->d(I)[B

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lo/LogMaker;->c:[B

    return-void
.end method

.method private d()V
    .locals 3

    .line 253
    iget v0, p0, Lo/LogMaker;->b:I

    iget-object v1, p0, Lo/LogMaker;->c:[B

    array-length v1, v1

    add-int/2addr v0, v1

    if-ltz v0, :cond_1

    .line 261
    iput v0, p0, Lo/LogMaker;->b:I

    .line 269
    iget v0, p0, Lo/LogMaker;->b:I

    shr-int/lit8 v0, v0, 0x1

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x40000

    if-le v0, v1, :cond_0

    const/high16 v0, 0x40000

    .line 274
    :cond_0
    iget-object v1, p0, Lo/LogMaker;->e:Ljava/util/LinkedList;

    iget-object v2, p0, Lo/LogMaker;->c:[B

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 275
    new-array v0, v0, [B

    iput-object v0, p0, Lo/LogMaker;->c:[B

    const/4 v0, 0x0

    .line 276
    iput v0, p0, Lo/LogMaker;->f:I

    return-void

    .line 258
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Maximum Java array size (2GB) exceeded by `ByteArrayBuilder`"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lo/LogMaker;->b:I

    .line 62
    iput v0, p0, Lo/LogMaker;->f:I

    .line 64
    iget-object v0, p0, Lo/LogMaker;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lo/LogMaker;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 3

    .line 90
    iget v0, p0, Lo/LogMaker;->f:I

    iget-object v1, p0, Lo/LogMaker;->c:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 91
    invoke-direct {p0}, Lo/LogMaker;->d()V

    .line 93
    :cond_0
    iget-object v0, p0, Lo/LogMaker;->c:[B

    iget v1, p0, Lo/LogMaker;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/LogMaker;->f:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public e()[B
    .locals 7

    .line 141
    iget v0, p0, Lo/LogMaker;->b:I

    iget v1, p0, Lo/LogMaker;->f:I

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 144
    sget-object v0, Lo/LogMaker;->d:[B

    return-object v0

    .line 146
    :cond_0
    new-array v1, v0, [B

    .line 149
    iget-object v2, p0, Lo/LogMaker;->e:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 150
    array-length v6, v5

    .line 151
    invoke-static {v5, v3, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    goto :goto_0

    .line 154
    :cond_1
    iget-object v2, p0, Lo/LogMaker;->c:[B

    iget v5, p0, Lo/LogMaker;->f:I

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget v2, p0, Lo/LogMaker;->f:I

    add-int/2addr v4, v2

    if-ne v4, v0, :cond_3

    .line 160
    iget-object v0, p0, Lo/LogMaker;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    invoke-virtual {p0}, Lo/LogMaker;->a()V

    :cond_2
    return-object v1

    .line 157
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal error: total len assumed to be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", copied "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public write(I)V
    .locals 0

    .line 239
    invoke-virtual {p0, p1}, Lo/LogMaker;->a(I)V

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 217
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lo/LogMaker;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3

    .line 224
    :goto_0
    iget-object v0, p0, Lo/LogMaker;->c:[B

    array-length v0, v0

    iget v1, p0, Lo/LogMaker;->f:I

    sub-int/2addr v0, v1

    .line 225
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 227
    iget-object v1, p0, Lo/LogMaker;->c:[B

    iget v2, p0, Lo/LogMaker;->f:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    .line 229
    iget v1, p0, Lo/LogMaker;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lo/LogMaker;->f:I

    sub-int/2addr p3, v0

    :cond_0
    if-gtz p3, :cond_1

    return-void

    .line 233
    :cond_1
    invoke-direct {p0}, Lo/LogMaker;->d()V

    goto :goto_0
.end method
