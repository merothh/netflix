.class public final Lo/UsbConfiguration$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UsbConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# instance fields
.field public final b:[Lo/UsbConfiguration$TaskDescription;


# direct methods
.method public constructor <init>([Lo/UsbConfiguration$TaskDescription;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lo/UsbConfiguration$StateListAnimator;->b:[Lo/UsbConfiguration$TaskDescription;

    return-void
.end method

.method static final e(Ljava/io/DataInput;)Lo/UsbConfiguration$StateListAnimator;
    .locals 6

    .line 110
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 115
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    if-ltz v0, :cond_1

    .line 120
    new-array v1, v0, [Lo/UsbConfiguration$TaskDescription;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 122
    new-instance v3, Lo/UsbConfiguration$TaskDescription;

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lo/UsbConfiguration$TaskDescription;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    :cond_0
    new-instance p0, Lo/UsbConfiguration$StateListAnimator;

    invoke-direct {p0, v1}, Lo/UsbConfiguration$StateListAnimator;-><init>([Lo/UsbConfiguration$TaskDescription;)V

    return-object p0

    .line 117
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "illegal number of shared libraries"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "wrong dso manifest version"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final e(Ljava/io/DataOutput;)V
    .locals 3

    const/4 v0, 0x1

    .line 128
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 129
    iget-object v0, p0, Lo/UsbConfiguration$StateListAnimator;->b:[Lo/UsbConfiguration$TaskDescription;

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    const/4 v0, 0x0

    .line 130
    :goto_0
    iget-object v1, p0, Lo/UsbConfiguration$StateListAnimator;->b:[Lo/UsbConfiguration$TaskDescription;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 131
    aget-object v1, v1, v0

    iget-object v1, v1, Lo/UsbConfiguration$TaskDescription;->a:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lo/UsbConfiguration$StateListAnimator;->b:[Lo/UsbConfiguration$TaskDescription;

    aget-object v1, v1, v0

    iget-object v1, v1, Lo/UsbConfiguration$TaskDescription;->c:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
