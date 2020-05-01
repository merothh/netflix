.class public Lorg/xbill/DNS/Update;
.super Lorg/xbill/DNS/Message;
.source "Update.java"


# instance fields
.field private dclass:I

.field private origin:Lorg/xbill/DNS/Name;


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/Name;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/Update;-><init>(Lorg/xbill/DNS/Name;I)V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;I)V
    .locals 2

    invoke-direct {p0}, Lorg/xbill/DNS/Message;-><init>()V

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0

    :cond_0
    invoke-static {p2}, Lorg/xbill/DNS/DClass;->check(I)V

    invoke-virtual {p0}, Lorg/xbill/DNS/Update;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->setOpcode(I)V

    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/Update;->addRecord(Lorg/xbill/DNS/Record;I)V

    iput-object p1, p0, Lorg/xbill/DNS/Update;->origin:Lorg/xbill/DNS/Name;

    iput p2, p0, Lorg/xbill/DNS/Update;->dclass:I

    return-void
.end method

.method private newPrereq(Lorg/xbill/DNS/Record;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/xbill/DNS/Update;->addRecord(Lorg/xbill/DNS/Record;I)V

    return-void
.end method

.method private newUpdate(Lorg/xbill/DNS/Record;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/xbill/DNS/Update;->addRecord(Lorg/xbill/DNS/Record;I)V

    return-void
.end method


# virtual methods
.method public absent(Lorg/xbill/DNS/Name;)V
    .locals 4

    const/16 v0, 0xff

    const/16 v1, 0xfe

    const-wide/16 v2, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Update;->newPrereq(Lorg/xbill/DNS/Record;)V

    return-void
.end method

.method public absent(Lorg/xbill/DNS/Name;I)V
    .locals 4

    const/16 v0, 0xfe

    const-wide/16 v2, 0x0

    invoke-static {p1, p2, v0, v2, v3}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Update;->newPrereq(Lorg/xbill/DNS/Record;)V

    return-void
.end method

.method public add(Lorg/xbill/DNS/Name;IJLjava/lang/String;)V
    .locals 9

    iget v3, p0, Lorg/xbill/DNS/Update;->dclass:I

    iget-object v7, p0, Lorg/xbill/DNS/Update;->origin:Lorg/xbill/DNS/Name;

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Update;->newUpdate(Lorg/xbill/DNS/Record;)V

    return-void
.end method

.method public add(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Tokenizer;)V
    .locals 9

    iget v3, p0, Lorg/xbill/DNS/Update;->dclass:I

    iget-object v7, p0, Lorg/xbill/DNS/Update;->origin:Lorg/xbill/DNS/Name;

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Update;->newUpdate(Lorg/xbill/DNS/Record;)V

    return-void
.end method

.method public add(Lorg/xbill/DNS/RRset;)V
    .locals 2

    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Update;->add(Lorg/xbill/DNS/Record;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public add(Lorg/xbill/DNS/Record;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xbill/DNS/Update;->newUpdate(Lorg/xbill/DNS/Record;)V

    return-void
.end method

.method public add([Lorg/xbill/DNS/Record;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/Update;->add(Lorg/xbill/DNS/Record;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public delete(Lorg/xbill/DNS/Name;)V
    .locals 3

    const/16 v2, 0xff

    const-wide/16 v0, 0x0

    invoke-static {p1, v2, v2, v0, v1}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Update;->newUpdate(Lorg/xbill/DNS/Record;)V

    return-void
.end method

.method public delete(Lorg/xbill/DNS/Name;I)V
    .locals 4

    const/16 v0, 0xff

    const-wide/16 v2, 0x0

    invoke-static {p1, p2, v0, v2, v3}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Update;->newUpdate(Lorg/xbill/DNS/Record;)V

    return-void
.end method

.method public delete(Lorg/xbill/DNS/Name;ILjava/lang/String;)V
    .locals 8

    const/16 v3, 0xfe

    const-wide/16 v4, 0x0

    iget-object v7, p0, Lorg/xbill/DNS/Update;->origin:Lorg/xbill/DNS/Name;

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Update;->newUpdate(Lorg/xbill/DNS/Record;)V

    return-void
.end method

.method public delete(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/Tokenizer;)V
    .locals 8

    const/16 v3, 0xfe

    const-wide/16 v4, 0x0

    iget-object v7, p0, Lorg/xbill/DNS/Update;->origin:Lorg/xbill/DNS/Name;

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Update;->newUpdate(Lorg/xbill/DNS/Record;)V

    return-void
.end method

.method public delete(Lorg/xbill/DNS/RRset;)V
    .locals 2

    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Update;->delete(Lorg/xbill/DNS/Record;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public delete(Lorg/xbill/DNS/Record;)V
    .locals 4

    const/16 v0, 0xfe

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/xbill/DNS/Record;->withDClass(IJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Update;->newUpdate(Lorg/xbill/DNS/Record;)V

    return-void
.end method

.method public delete([Lorg/xbill/DNS/Record;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/Update;->delete(Lorg/xbill/DNS/Record;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public present(Lorg/xbill/DNS/Name;)V
    .locals 3

    const/16 v2, 0xff

    const-wide/16 v0, 0x0

    invoke-static {p1, v2, v2, v0, v1}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Update;->newPrereq(Lorg/xbill/DNS/Record;)V

    return-void
.end method

.method public present(Lorg/xbill/DNS/Name;I)V
    .locals 4

    const/16 v0, 0xff

    const-wide/16 v2, 0x0

    invoke-static {p1, p2, v0, v2, v3}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Update;->newPrereq(Lorg/xbill/DNS/Record;)V

    return-void
.end method

.method public present(Lorg/xbill/DNS/Name;ILjava/lang/String;)V
    .locals 8

    iget v3, p0, Lorg/xbill/DNS/Update;->dclass:I

    const-wide/16 v4, 0x0

    iget-object v7, p0, Lorg/xbill/DNS/Update;->origin:Lorg/xbill/DNS/Name;

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Update;->newPrereq(Lorg/xbill/DNS/Record;)V

    return-void
.end method

.method public present(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/Tokenizer;)V
    .locals 8

    iget v3, p0, Lorg/xbill/DNS/Update;->dclass:I

    const-wide/16 v4, 0x0

    iget-object v7, p0, Lorg/xbill/DNS/Update;->origin:Lorg/xbill/DNS/Name;

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Update;->newPrereq(Lorg/xbill/DNS/Record;)V

    return-void
.end method

.method public present(Lorg/xbill/DNS/Record;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xbill/DNS/Update;->newPrereq(Lorg/xbill/DNS/Record;)V

    return-void
.end method

.method public replace(Lorg/xbill/DNS/Name;IJLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/xbill/DNS/Update;->delete(Lorg/xbill/DNS/Name;I)V

    invoke-virtual/range {p0 .. p5}, Lorg/xbill/DNS/Update;->add(Lorg/xbill/DNS/Name;IJLjava/lang/String;)V

    return-void
.end method

.method public replace(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Tokenizer;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/xbill/DNS/Update;->delete(Lorg/xbill/DNS/Name;I)V

    invoke-virtual/range {p0 .. p5}, Lorg/xbill/DNS/Update;->add(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Tokenizer;)V

    return-void
.end method

.method public replace(Lorg/xbill/DNS/RRset;)V
    .locals 2

    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/Update;->delete(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Update;->add(Lorg/xbill/DNS/Record;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public replace(Lorg/xbill/DNS/Record;)V
    .locals 2

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/Update;->delete(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Update;->add(Lorg/xbill/DNS/Record;)V

    return-void
.end method

.method public replace([Lorg/xbill/DNS/Record;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/Update;->replace(Lorg/xbill/DNS/Record;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
