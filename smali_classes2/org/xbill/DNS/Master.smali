.class public Lorg/xbill/DNS/Master;
.super Ljava/lang/Object;
.source "Master.java"


# instance fields
.field private currentDClass:I

.field private currentTTL:J

.field private currentType:I

.field private defaultTTL:J

.field private file:Ljava/io/File;

.field private generator:Lorg/xbill/DNS/Generator;

.field private generators:Ljava/util/List;

.field private included:Lorg/xbill/DNS/Master;

.field private last:Lorg/xbill/DNS/Record;

.field private needSOATTL:Z

.field private noExpandGenerate:Z

.field private origin:Lorg/xbill/DNS/Name;

.field private st:Lorg/xbill/DNS/Tokenizer;


# direct methods
.method constructor <init>(Ljava/io/File;Lorg/xbill/DNS/Name;J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    iput-object v0, p0, Lorg/xbill/DNS/Master;->included:Lorg/xbill/DNS/Master;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p2}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/xbill/DNS/Master;->file:Ljava/io/File;

    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    iput-object p2, p0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    iput-wide p3, p0, Lorg/xbill/DNS/Master;->defaultTTL:J

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0, p1, v0, v2, v3}, Lorg/xbill/DNS/Master;-><init>(Ljava/io/InputStream;Lorg/xbill/DNS/Name;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/xbill/DNS/Name;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/xbill/DNS/Master;-><init>(Ljava/io/InputStream;Lorg/xbill/DNS/Name;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/xbill/DNS/Name;J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    iput-object v0, p0, Lorg/xbill/DNS/Master;->included:Lorg/xbill/DNS/Master;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p2}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    iput-object p2, p0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    iput-wide p3, p0, Lorg/xbill/DNS/Master;->defaultTTL:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/xbill/DNS/Master;-><init>(Ljava/io/File;Lorg/xbill/DNS/Name;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, p2, v2, v3}, Lorg/xbill/DNS/Master;-><init>(Ljava/io/File;Lorg/xbill/DNS/Name;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xbill/DNS/Name;J)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/xbill/DNS/Master;-><init>(Ljava/io/File;Lorg/xbill/DNS/Name;J)V

    return-void
.end method

.method private endGenerate()V
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getEOL()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/Master;->generator:Lorg/xbill/DNS/Generator;

    return-void
.end method

.method private nextGenerated()Lorg/xbill/DNS/Record;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Master;->generator:Lorg/xbill/DNS/Generator;

    invoke-virtual {v0}, Lorg/xbill/DNS/Generator;->nextRecord()Lorg/xbill/DNS/Record;
    :try_end_0
    .catch Lorg/xbill/DNS/Tokenizer$TokenizerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing $GENERATE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$TokenizerException;->getBaseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing $GENERATE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method private parseName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 2

    :try_start_0
    invoke-static {p1, p2}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method private parseTTLClassAndType()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/xbill/DNS/DClass;->value(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/xbill/DNS/Master;->currentDClass:I

    if-ltz v3, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    :cond_0
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    :try_start_0
    invoke-static {v2}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    iget-object v3, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v3}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_1
    :goto_0
    if-nez v0, :cond_4

    invoke-static {v2}, Lorg/xbill/DNS/DClass;->value(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/Master;->currentDClass:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/Master;->currentType:I

    if-gez v2, :cond_5

    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v3

    iget-wide v4, p0, Lorg/xbill/DNS/Master;->defaultTTL:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_2

    iget-wide v4, p0, Lorg/xbill/DNS/Master;->defaultTTL:J

    iput-wide v4, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    goto :goto_0

    :cond_3
    iput v1, p0, Lorg/xbill/DNS/Master;->currentDClass:I

    :cond_4
    move-object v0, v2

    goto :goto_1

    :cond_5
    iget-wide v2, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    cmp-long v0, v2, v6

    if-gez v0, :cond_7

    iget v0, p0, Lorg/xbill/DNS/Master;->currentType:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    const-string/jumbo v1, "missing TTL"

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_6
    iput-boolean v1, p0, Lorg/xbill/DNS/Master;->needSOATTL:Z

    iput-wide v6, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    :cond_7
    return-void
.end method

.method private parseUInt32(Ljava/lang/String;)J
    .locals 6

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    const-wide v4, 0xffffffffL

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    move-wide v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private startGenerate()V
    .locals 15

    const/4 v4, 0x0

    const-wide/16 v10, 0x0

    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "-"

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid $GENERATE range specifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {v8, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-direct {p0, v2}, Lorg/xbill/DNS/Master;->parseUInt32(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Master;->parseUInt32(Ljava/lang/String;)J

    move-result-wide v4

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Master;->parseUInt32(Ljava/lang/String;)J

    move-result-wide v6

    :goto_0
    cmp-long v0, v2, v10

    if-ltz v0, :cond_2

    cmp-long v0, v4, v10

    if-ltz v0, :cond_2

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    cmp-long v0, v6, v10

    if-gtz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid $GENERATE range specifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_3
    const-wide/16 v6, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Lorg/xbill/DNS/Master;->parseTTLClassAndType()V

    iget v0, p0, Lorg/xbill/DNS/Master;->currentType:I

    invoke-static {v0}, Lorg/xbill/DNS/Generator;->supportedType(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "$GENERATE does not support "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/xbill/DNS/Master;->currentType:I

    invoke-static {v2}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " records"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_5
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getIdentifier()Ljava/lang/String;

    move-result-object v13

    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getEOL()V

    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->unget()V

    new-instance v1, Lorg/xbill/DNS/Generator;

    iget v9, p0, Lorg/xbill/DNS/Master;->currentType:I

    iget v10, p0, Lorg/xbill/DNS/Master;->currentDClass:I

    iget-wide v11, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    iget-object v14, p0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    invoke-direct/range {v1 .. v14}, Lorg/xbill/DNS/Generator;-><init>(JJJLjava/lang/String;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)V

    iput-object v1, p0, Lorg/xbill/DNS/Master;->generator:Lorg/xbill/DNS/Generator;

    iget-object v0, p0, Lorg/xbill/DNS/Master;->generators:Ljava/util/List;

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/Master;->generators:Ljava/util/List;

    :cond_6
    iget-object v0, p0, Lorg/xbill/DNS/Master;->generators:Ljava/util/List;

    iget-object v1, p0, Lorg/xbill/DNS/Master;->generator:Lorg/xbill/DNS/Generator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public _nextRecord()Lorg/xbill/DNS/Record;
    .locals 9

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/xbill/DNS/Master;->included:Lorg/xbill/DNS/Master;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/xbill/DNS/Master;->included:Lorg/xbill/DNS/Master;

    invoke-virtual {v0}, Lorg/xbill/DNS/Master;->nextRecord()Lorg/xbill/DNS/Record;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iput-object v1, p0, Lorg/xbill/DNS/Master;->included:Lorg/xbill/DNS/Master;

    :cond_2
    iget-object v0, p0, Lorg/xbill/DNS/Master;->generator:Lorg/xbill/DNS/Generator;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/xbill/DNS/Master;->nextGenerated()Lorg/xbill/DNS/Record;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/xbill/DNS/Master;->endGenerate()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0, v4, v8}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-eq v2, v4, :cond_3

    iget v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->unget()V

    iget-object v0, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    const-string/jumbo v1, "no owner"

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_5
    iget-object v0, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-direct {p0}, Lorg/xbill/DNS/Master;->parseTTLClassAndType()V

    iget v2, p0, Lorg/xbill/DNS/Master;->currentType:I

    iget v3, p0, Lorg/xbill/DNS/Master;->currentDClass:I

    iget-wide v4, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    iget-object v6, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    iget-object v7, p0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    iget-boolean v0, p0, Lorg/xbill/DNS/Master;->needSOATTL:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    check-cast v0, Lorg/xbill/DNS/SOARecord;

    invoke-virtual {v0}, Lorg/xbill/DNS/SOARecord;->getMinimum()J

    move-result-wide v0

    iget-object v2, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    invoke-virtual {v2, v0, v1}, Lorg/xbill/DNS/Record;->setTTL(J)V

    iput-wide v0, p0, Lorg/xbill/DNS/Master;->defaultTTL:J

    iput-boolean v8, p0, Lorg/xbill/DNS/Master;->needSOATTL:Z

    :cond_7
    iget-object v0, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    goto :goto_0

    :cond_8
    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-eq v2, v4, :cond_3

    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-nez v2, :cond_9

    move-object v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x24

    if-ne v2, v3, :cond_12

    iget-object v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    const-string/jumbo v2, "$ORIGIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    sget-object v2, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getEOL()V

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v2, "$TTL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getTTL()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xbill/DNS/Master;->defaultTTL:J

    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getEOL()V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v2, "$INCLUDE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/xbill/DNS/Master;->file:Ljava/io/File;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/xbill/DNS/Master;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v1, p0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    iget-object v2, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v1, v2, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    sget-object v2, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/Master;->parseName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    iget-object v2, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->getEOL()V

    :cond_c
    new-instance v2, Lorg/xbill/DNS/Master;

    iget-wide v4, p0, Lorg/xbill/DNS/Master;->defaultTTL:J

    invoke-direct {v2, v0, v1, v4, v5}, Lorg/xbill/DNS/Master;-><init>(Ljava/io/File;Lorg/xbill/DNS/Name;J)V

    iput-object v2, p0, Lorg/xbill/DNS/Master;->included:Lorg/xbill/DNS/Master;

    invoke-virtual {p0}, Lorg/xbill/DNS/Master;->nextRecord()Lorg/xbill/DNS/Record;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_e
    const-string/jumbo v2, "$GENERATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v0, p0, Lorg/xbill/DNS/Master;->generator:Lorg/xbill/DNS/Generator;

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cannot nest $GENERATE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-direct {p0}, Lorg/xbill/DNS/Master;->startGenerate()V

    iget-boolean v0, p0, Lorg/xbill/DNS/Master;->noExpandGenerate:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lorg/xbill/DNS/Master;->endGenerate()V

    goto/16 :goto_1

    :cond_10
    invoke-direct {p0}, Lorg/xbill/DNS/Master;->nextGenerated()Lorg/xbill/DNS/Record;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid directive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_12
    iget-object v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    iget-object v1, p0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Master;->parseName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    iget-object v0, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    goto/16 :goto_2
.end method

.method public expandGenerate(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/xbill/DNS/Master;->noExpandGenerate:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->close()V

    :cond_0
    return-void
.end method

.method public generators()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/Master;->generators:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/Master;->generators:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public nextRecord()Lorg/xbill/DNS/Record;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/xbill/DNS/Master;->_nextRecord()Lorg/xbill/DNS/Record;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->close()V

    :cond_1
    throw v1
.end method
