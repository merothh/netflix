.class public Lorg/xbill/DNS/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final MAXLENGTH:I = 0xffff

.field static final TSIG_FAILED:I = 0x4

.field static final TSIG_INTERMEDIATE:I = 0x2

.field static final TSIG_SIGNED:I = 0x3

.field static final TSIG_UNSIGNED:I = 0x0

.field static final TSIG_VERIFIED:I = 0x1

.field private static emptyRRsetArray:[Lorg/xbill/DNS/RRset;

.field private static emptyRecordArray:[Lorg/xbill/DNS/Record;


# instance fields
.field private header:Lorg/xbill/DNS/Header;

.field private querytsig:Lorg/xbill/DNS/TSIGRecord;

.field private sections:[Ljava/util/List;

.field sig0start:I

.field private size:I

.field tsigState:I

.field private tsigerror:I

.field private tsigkey:Lorg/xbill/DNS/TSIG;

.field tsigstart:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [Lorg/xbill/DNS/Record;

    sput-object v0, Lorg/xbill/DNS/Message;->emptyRecordArray:[Lorg/xbill/DNS/Record;

    new-array v0, v1, [Lorg/xbill/DNS/RRset;

    sput-object v0, Lorg/xbill/DNS/Message;->emptyRRsetArray:[Lorg/xbill/DNS/RRset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/xbill/DNS/Header;

    invoke-direct {v0}, Lorg/xbill/DNS/Header;-><init>()V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Message;-><init>(Lorg/xbill/DNS/Header;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Lorg/xbill/DNS/Header;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Header;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Message;-><init>(Lorg/xbill/DNS/Header;)V

    return-void
.end method

.method constructor <init>(Lorg/xbill/DNS/DNSInput;)V
    .locals 10

    const/4 v2, 0x0

    new-instance v0, Lorg/xbill/DNS/Header;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Header;-><init>(Lorg/xbill/DNS/DNSInput;)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Message;-><init>(Lorg/xbill/DNS/Header;)V

    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v5

    move v4, v2

    :goto_1
    const/4 v0, 0x4

    if-ge v4, v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v6

    if-lez v6, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v3, v0, v4

    :cond_0
    move v3, v2

    :goto_2
    if-ge v3, v6, :cond_4

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v7

    invoke-static {p1, v4, v1}, Lorg/xbill/DNS/Record;->fromWire(Lorg/xbill/DNS/DNSInput;IZ)Lorg/xbill/DNS/Record;

    move-result-object v0

    iget-object v8, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v8, v8, v4

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x3

    if-ne v4, v8, :cond_2

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getType()I

    move-result v8

    const/16 v9, 0xfa

    if-ne v8, v9, :cond_1

    iput v7, p0, Lorg/xbill/DNS/Message;->tsigstart:I

    :cond_1
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getType()I

    move-result v8

    const/16 v9, 0x18

    if-ne v8, v9, :cond_2

    check-cast v0, Lorg/xbill/DNS/SIGRecord;

    invoke-virtual {v0}, Lorg/xbill/DNS/SIGRecord;->getTypeCovered()I

    move-result v0

    if-nez v0, :cond_2

    iput v7, p0, Lorg/xbill/DNS/Message;->sig0start:I
    :try_end_0
    .catch Lorg/xbill/DNS/WireParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :catch_0
    move-exception v0

    if-nez v5, :cond_5

    throw v0

    :cond_5
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/Message;->size:I

    return-void
.end method

.method private constructor <init>(Lorg/xbill/DNS/Header;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    iput-object p1, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Message;-><init>(Lorg/xbill/DNS/DNSInput;)V

    return-void
.end method

.method public static newQuery(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/Message;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lorg/xbill/DNS/Message;

    invoke-direct {v0}, Lorg/xbill/DNS/Message;-><init>()V

    iget-object v1, v0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v1, v3}, Lorg/xbill/DNS/Header;->setOpcode(I)V

    iget-object v1, v0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Header;->setFlag(I)V

    invoke-virtual {v0, p0, v3}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    return-object v0
.end method

.method public static newUpdate(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Message;
    .locals 1

    new-instance v0, Lorg/xbill/DNS/Update;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/Update;-><init>(Lorg/xbill/DNS/Name;)V

    return-object v0
.end method

.method private static sameSet(Lorg/xbill/DNS/Record;Lorg/xbill/DNS/Record;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sectionToWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;I)I
    .locals 9

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v4

    const/4 v1, 0x0

    move v2, v5

    move v3, v5

    :goto_0
    if-ge v5, v6, :cond_1

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    const/4 v7, 0x3

    if-ne p2, v7, :cond_0

    instance-of v7, v0, Lorg/xbill/DNS/OPTRecord;

    if-eqz v7, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v3

    move v3, v4

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    move v3, v2

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_2

    invoke-static {v0, v1}, Lorg/xbill/DNS/Message;->sameSet(Lorg/xbill/DNS/Record;Lorg/xbill/DNS/Record;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v4

    move v1, v5

    move v3, v4

    :goto_2
    invoke-virtual {v0, p1, p2, p3}, Lorg/xbill/DNS/Record;->toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v4

    if-le v4, p4, :cond_3

    invoke-virtual {p1, v3}, Lorg/xbill/DNS/DNSOutput;->jump(I)V

    sub-int v0, v6, v1

    add-int/2addr v2, v0

    :cond_1
    return v2

    :cond_2
    move v1, v3

    move v3, v4

    goto :goto_2

    :cond_3
    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_1
.end method

.method private toWire(Lorg/xbill/DNS/DNSOutput;I)Z
    .locals 12

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x3

    const/16 v0, 0xc

    if-ge p2, v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Message;->tsigkey:Lorg/xbill/DNS/TSIG;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/xbill/DNS/Message;->tsigkey:Lorg/xbill/DNS/TSIG;

    invoke-virtual {v0}, Lorg/xbill/DNS/TSIG;->recordLength()I

    move-result v0

    sub-int/2addr p2, v0

    :cond_1
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1, v11}, Lorg/xbill/DNS/OPTRecord;->toWire(I)[B

    move-result-object v0

    array-length v1, v0

    sub-int/2addr p2, v1

    :cond_2
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v6

    iget-object v1, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v1, p1}, Lorg/xbill/DNS/Header;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    new-instance v7, Lorg/xbill/DNS/Compression;

    invoke-direct {v7}, Lorg/xbill/DNS/Compression;-><init>()V

    iget-object v1, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v1}, Lorg/xbill/DNS/Header;->getFlagsByte()I

    move-result v4

    move v5, v2

    move v1, v2

    :goto_1
    const/4 v8, 0x4

    if-ge v5, v8, :cond_b

    iget-object v8, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v8, v8, v5

    if-nez v8, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, v5, v7, p2}, Lorg/xbill/DNS/Message;->sectionToWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;I)I

    move-result v8

    if-eqz v8, :cond_a

    if-eq v5, v11, :cond_a

    const/4 v9, 0x6

    invoke-static {v4, v9, v3}, Lorg/xbill/DNS/Header;->setFlag(IIZ)I

    move-result v4

    iget-object v9, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v9, v5}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v9

    sub-int v8, v9, v8

    add-int/lit8 v9, v6, 0x4

    mul-int/lit8 v10, v5, 0x2

    add-int/2addr v9, v10

    invoke-virtual {p1, v8, v9}, Lorg/xbill/DNS/DNSOutput;->writeU16At(II)V

    add-int/lit8 v5, v5, 0x1

    :goto_3
    if-ge v5, v11, :cond_5

    add-int/lit8 v8, v6, 0x4

    mul-int/lit8 v9, v5, 0x2

    add-int/2addr v8, v9

    invoke-virtual {p1, v2, v8}, Lorg/xbill/DNS/DNSOutput;->writeU16At(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    move v2, v4

    :goto_4
    if-eqz v0, :cond_6

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    add-int/lit8 v1, v1, 0x1

    :cond_6
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getFlagsByte()I

    move-result v0

    if-eq v2, v0, :cond_7

    add-int/lit8 v0, v6, 0x2

    invoke-virtual {p1, v2, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16At(II)V

    :cond_7
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, v11}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v0

    if-eq v1, v0, :cond_8

    add-int/lit8 v0, v6, 0xa

    invoke-virtual {p1, v1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16At(II)V

    :cond_8
    iget-object v0, p0, Lorg/xbill/DNS/Message;->tsigkey:Lorg/xbill/DNS/TSIG;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/xbill/DNS/Message;->tsigkey:Lorg/xbill/DNS/TSIG;

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v2

    iget v4, p0, Lorg/xbill/DNS/Message;->tsigerror:I

    iget-object v5, p0, Lorg/xbill/DNS/Message;->querytsig:Lorg/xbill/DNS/TSIGRecord;

    invoke-virtual {v0, p0, v2, v4, v5}, Lorg/xbill/DNS/TSIG;->generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)Lorg/xbill/DNS/TSIGRecord;

    move-result-object v0

    invoke-virtual {v0, p1, v11, v7}, Lorg/xbill/DNS/TSIGRecord;->toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v1, v6, 0xa

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16At(II)V

    :cond_9
    move v0, v3

    goto/16 :goto_0

    :cond_a
    if-ne v5, v11, :cond_3

    iget-object v1, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v1, v5}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v1

    sub-int/2addr v1, v8

    goto :goto_2

    :cond_b
    move v2, v4

    goto :goto_4
.end method


# virtual methods
.method public addRecord(Lorg/xbill/DNS/Record;I)V
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    aput-object v1, v0, p2

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, p2}, Lorg/xbill/DNS/Header;->incCount(I)V

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    new-instance v1, Lorg/xbill/DNS/Message;

    invoke-direct {v1}, Lorg/xbill/DNS/Message;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    new-instance v3, Ljava/util/LinkedList;

    iget-object v4, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    aput-object v3, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Header;

    iput-object v0, v1, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    iget v0, p0, Lorg/xbill/DNS/Message;->size:I

    iput v0, v1, Lorg/xbill/DNS/Message;->size:I

    return-object v1
.end method

.method public findRRset(Lorg/xbill/DNS/Name;I)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/xbill/DNS/Message;->findRRset(Lorg/xbill/DNS/Name;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, p2, v1}, Lorg/xbill/DNS/Message;->findRRset(Lorg/xbill/DNS/Name;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p0, p1, p2, v1}, Lorg/xbill/DNS/Message;->findRRset(Lorg/xbill/DNS/Name;II)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findRRset(Lorg/xbill/DNS/Name;II)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p3

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    :goto_1
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getType()I

    move-result v3

    if-ne v3, p2, :cond_2

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public findRecord(Lorg/xbill/DNS/Record;)Z
    .locals 3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    iget-object v2, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findRecord(Lorg/xbill/DNS/Record;I)Z
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeader()Lorg/xbill/DNS/Header;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    return-object v0
.end method

.method public getOPT()Lorg/xbill/DNS/OPTRecord;
    .locals 3

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    instance-of v2, v2, Lorg/xbill/DNS/OPTRecord;

    if-eqz v2, :cond_0

    aget-object v0, v1, v0

    check-cast v0, Lorg/xbill/DNS/OPTRecord;

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getQuestion()Lorg/xbill/DNS/Record;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    goto :goto_0
.end method

.method public getRcode()I
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v0

    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/xbill/DNS/OPTRecord;->getExtendedRcode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getSectionArray(I)[Lorg/xbill/DNS/Record;
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    sget-object v0, Lorg/xbill/DNS/Message;->emptyRecordArray:[Lorg/xbill/DNS/Record;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/xbill/DNS/Record;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xbill/DNS/Record;

    check-cast v0, [Lorg/xbill/DNS/Record;

    goto :goto_0
.end method

.method public getSectionRRsets(I)[Lorg/xbill/DNS/RRset;
    .locals 11

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    sget-object v0, Lorg/xbill/DNS/Message;->emptyRRsetArray:[Lorg/xbill/DNS/RRset;

    :goto_0
    return-object v0

    :cond_0
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v6

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move v1, v2

    :goto_1
    array-length v0, v6

    if-ge v1, v0, :cond_3

    aget-object v0, v6, v1

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v8

    const/4 v3, 0x1

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_2
    if-ltz v4, :cond_4

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v9

    aget-object v10, v6, v1

    invoke-virtual {v10}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v10

    if-ne v9, v10, :cond_2

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v9

    aget-object v10, v6, v1

    invoke-virtual {v10}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v10

    if-ne v9, v10, :cond_2

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v9

    invoke-virtual {v9, v8}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    aget-object v3, v6, v1

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    move v0, v2

    :goto_3
    if-eqz v0, :cond_1

    new-instance v0, Lorg/xbill/DNS/RRset;

    aget-object v3, v6, v1

    invoke-direct {v0, v3}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/Record;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_2

    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/xbill/DNS/RRset;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xbill/DNS/RRset;

    check-cast v0, [Lorg/xbill/DNS/RRset;

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_3
.end method

.method public getTSIG()Lorg/xbill/DNS/TSIGRecord;
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x3

    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v2, v2, v3

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    iget v2, v0, Lorg/xbill/DNS/Record;->type:I

    const/16 v3, 0xfa

    if-eq v2, v3, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    check-cast v0, Lorg/xbill/DNS/TSIGRecord;

    goto :goto_0
.end method

.method public isSigned()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lorg/xbill/DNS/Message;->tsigState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/xbill/DNS/Message;->tsigState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lorg/xbill/DNS/Message;->tsigState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerified()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/xbill/DNS/Message;->tsigState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public numBytes()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/Message;->size:I

    return v0
.end method

.method public removeAllRecords(I)V
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/xbill/DNS/Header;->setCount(II)V

    return-void
.end method

.method public removeRecord(Lorg/xbill/DNS/Record;I)Z
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, p2}, Lorg/xbill/DNS/Header;->decCount(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sectionToString(I)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    if-nez p1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ";;\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ", type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lorg/xbill/DNS/Record;->type:I

    invoke-static {v5}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ", class = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v3, v3, Lorg/xbill/DNS/Record;->dclass:I

    invoke-static {v3}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    const-string/jumbo v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setHeader(Lorg/xbill/DNS/Header;)V
    .locals 0

    iput-object p1, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    return-void
.end method

.method public setTSIG(Lorg/xbill/DNS/TSIG;ILorg/xbill/DNS/TSIGRecord;)V
    .locals 0

    iput-object p1, p0, Lorg/xbill/DNS/Message;->tsigkey:Lorg/xbill/DNS/TSIG;

    iput p2, p0, Lorg/xbill/DNS/Message;->tsigerror:I

    iput-object p3, p0, Lorg/xbill/DNS/Message;->querytsig:Lorg/xbill/DNS/TSIGRecord;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getRcode()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Header;->toStringWithRcode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->isSigned()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ";; TSIG "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->isVerified()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ok"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    const/4 v0, 0x0

    :goto_2
    const/4 v2, 0x4

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ";; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/xbill/DNS/Section;->longString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Message;->sectionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v0, "invalid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ";; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/xbill/DNS/Section;->updString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ";; Message size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->numBytes()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toWire(Lorg/xbill/DNS/DNSOutput;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Header;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    new-instance v4, Lorg/xbill/DNS/Compression;

    invoke-direct {v4}, Lorg/xbill/DNS/Compression;-><init>()V

    move v3, v2

    :goto_0
    const/4 v0, 0x4

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, v3

    if-nez v0, :cond_1

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_1
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    invoke-virtual {v0, p1, v3, v4}, Lorg/xbill/DNS/Record;->toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method public toWire()[B
    .locals 2

    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Message;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/Message;->size:I

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toWire(I)[B
    .locals 2

    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/Message;->toWire(Lorg/xbill/DNS/DNSOutput;I)Z

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/Message;->size:I

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
