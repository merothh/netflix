.class Lo/FragmentTransaction$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FragmentTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionBar"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J

.field public e:Ljava/lang/String;

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo/ContextImpl$StateListAnimator;)V
    .locals 2

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p1, p0, Lo/FragmentTransaction$ActionBar;->e:Ljava/lang/String;

    .line 370
    iget-object p1, p2, Lo/ContextImpl$StateListAnimator;->a:[B

    array-length p1, p1

    int-to-long v0, p1

    iput-wide v0, p0, Lo/FragmentTransaction$ActionBar;->c:J

    .line 371
    iget-object p1, p2, Lo/ContextImpl$StateListAnimator;->e:Ljava/lang/String;

    iput-object p1, p0, Lo/FragmentTransaction$ActionBar;->b:Ljava/lang/String;

    .line 372
    iget-wide v0, p2, Lo/ContextImpl$StateListAnimator;->b:J

    iput-wide v0, p0, Lo/FragmentTransaction$ActionBar;->a:J

    .line 373
    iget-wide v0, p2, Lo/ContextImpl$StateListAnimator;->d:J

    iput-wide v0, p0, Lo/FragmentTransaction$ActionBar;->d:J

    .line 374
    iget-wide v0, p2, Lo/ContextImpl$StateListAnimator;->c:J

    iput-wide v0, p0, Lo/FragmentTransaction$ActionBar;->j:J

    .line 375
    iget-object p1, p2, Lo/ContextImpl$StateListAnimator;->f:Ljava/util/Map;

    iput-object p1, p0, Lo/FragmentTransaction$ActionBar;->h:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lo/FragmentTransaction$ActionBar;
    .locals 4

    .line 384
    new-instance v0, Lo/FragmentTransaction$ActionBar;

    invoke-direct {v0}, Lo/FragmentTransaction$ActionBar;-><init>()V

    .line 385
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 386
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result p0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    .line 391
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lo/FragmentTransaction$ActionBar;->e:Ljava/lang/String;

    .line 392
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lo/FragmentTransaction$ActionBar;->b:Ljava/lang/String;

    .line 393
    iget-object p0, v0, Lo/FragmentTransaction$ActionBar;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 394
    iput-object p0, v0, Lo/FragmentTransaction$ActionBar;->b:Ljava/lang/String;

    .line 396
    :cond_0
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lo/FragmentTransaction$ActionBar;->a:J

    .line 397
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lo/FragmentTransaction$ActionBar;->d:J

    .line 398
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lo/FragmentTransaction$ActionBar;->j:J

    .line 399
    invoke-static {v1}, Lo/FragmentTransaction$ActionBar;->d(Ljava/io/ObjectInputStream;)Ljava/util/Map;

    move-result-object p0

    iput-object p0, v0, Lo/FragmentTransaction$ActionBar;->h:Ljava/util/Map;

    return-object v0

    .line 389
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method private static b(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/ObjectOutputStream;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 444
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 445
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 446
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 447
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 450
    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    :cond_1
    return-void
.end method

.method private static d(Ljava/io/ObjectInputStream;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInputStream;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 460
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    .line 462
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 465
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 466
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 467
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)Z
    .locals 4

    const/4 v0, 0x1

    .line 422
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x2

    .line 423
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    .line 424
    iget-object p1, p0, Lo/FragmentTransaction$ActionBar;->e:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 425
    iget-object p1, p0, Lo/FragmentTransaction$ActionBar;->b:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/FragmentTransaction$ActionBar;->b:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 426
    iget-wide v2, p0, Lo/FragmentTransaction$ActionBar;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 427
    iget-wide v2, p0, Lo/FragmentTransaction$ActionBar;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 428
    iget-wide v2, p0, Lo/FragmentTransaction$ActionBar;->j:J

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 429
    iget-object p1, p0, Lo/FragmentTransaction$ActionBar;->h:Ljava/util/Map;

    invoke-static {p1, v1}, Lo/FragmentTransaction$ActionBar;->b(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V

    .line 430
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 433
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%s"

    invoke-static {p1, v0}, Lo/FragmentContainer;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public e([B)Lo/ContextImpl$StateListAnimator;
    .locals 3

    .line 407
    new-instance v0, Lo/ContextImpl$StateListAnimator;

    invoke-direct {v0}, Lo/ContextImpl$StateListAnimator;-><init>()V

    .line 408
    iput-object p1, v0, Lo/ContextImpl$StateListAnimator;->a:[B

    .line 409
    iget-object p1, p0, Lo/FragmentTransaction$ActionBar;->b:Ljava/lang/String;

    iput-object p1, v0, Lo/ContextImpl$StateListAnimator;->e:Ljava/lang/String;

    .line 410
    iget-wide v1, p0, Lo/FragmentTransaction$ActionBar;->a:J

    iput-wide v1, v0, Lo/ContextImpl$StateListAnimator;->b:J

    .line 411
    iget-wide v1, p0, Lo/FragmentTransaction$ActionBar;->d:J

    iput-wide v1, v0, Lo/ContextImpl$StateListAnimator;->d:J

    .line 412
    iget-wide v1, p0, Lo/FragmentTransaction$ActionBar;->j:J

    iput-wide v1, v0, Lo/ContextImpl$StateListAnimator;->c:J

    .line 413
    iget-object p1, p0, Lo/FragmentTransaction$ActionBar;->h:Ljava/util/Map;

    iput-object p1, v0, Lo/ContextImpl$StateListAnimator;->f:Ljava/util/Map;

    return-object v0
.end method
