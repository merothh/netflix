.class public Lorg/xbill/DNS/ZoneTransferIn;
.super Ljava/lang/Object;
.source "ZoneTransferIn.java"


# static fields
.field private static final AXFR:I = 0x6

.field private static final END:I = 0x7

.field private static final FIRSTDATA:I = 0x1

.field private static final INITIALSOA:I = 0x0

.field private static final IXFR_ADD:I = 0x5

.field private static final IXFR_ADDSOA:I = 0x4

.field private static final IXFR_DEL:I = 0x3

.field private static final IXFR_DELSOA:I = 0x2


# instance fields
.field private address:Ljava/net/SocketAddress;

.field private client:Lorg/xbill/DNS/TCPClient;

.field private current_serial:J

.field private dclass:I

.field private end_serial:J

.field private handler:Lorg/xbill/DNS/ZoneTransferIn$ZoneTransferHandler;

.field private initialsoa:Lorg/xbill/DNS/Record;

.field private ixfr_serial:J

.field private localAddress:Ljava/net/SocketAddress;

.field private qtype:I

.field private rtype:I

.field private state:I

.field private timeout:J

.field private tsig:Lorg/xbill/DNS/TSIG;

.field private verifier:Lorg/xbill/DNS/TSIG$StreamVerifier;

.field private want_fallback:Z

.field private zname:Lorg/xbill/DNS/Name;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->timeout:J

    .line 167
    return-void
.end method

.method private constructor <init>(Lorg/xbill/DNS/Name;IJZLjava/net/SocketAddress;Lorg/xbill/DNS/TSIG;)V
    .locals 3

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->timeout:J

    .line 173
    iput-object p6, p0, Lorg/xbill/DNS/ZoneTransferIn;->address:Ljava/net/SocketAddress;

    .line 174
    iput-object p7, p0, Lorg/xbill/DNS/ZoneTransferIn;->tsig:Lorg/xbill/DNS/TSIG;

    .line 175
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iput-object p1, p0, Lorg/xbill/DNS/ZoneTransferIn;->zname:Lorg/xbill/DNS/Name;

    .line 186
    :goto_0
    iput p2, p0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    .line 187
    const/4 v0, 0x1

    iput v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->dclass:I

    .line 188
    iput-wide p3, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr_serial:J

    .line 189
    iput-boolean p5, p0, Lorg/xbill/DNS/ZoneTransferIn;->want_fallback:Z

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    .line 191
    return-void

    .line 179
    :cond_0
    :try_start_0
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->concatenate(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->zname:Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ZoneTransferIn: name too long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Lorg/xbill/DNS/Record;)J
    .locals 2

    .prologue
    .line 37
    invoke-static {p0}, Lorg/xbill/DNS/ZoneTransferIn;->getSOASerial(Lorg/xbill/DNS/Record;)J

    move-result-wide v0

    return-wide v0
.end method

.method private closeConnection()V
    .locals 1

    .prologue
    .line 508
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->client:Lorg/xbill/DNS/TCPClient;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->client:Lorg/xbill/DNS/TCPClient;

    invoke-virtual {v0}, Lorg/xbill/DNS/TCPClient;->cleanup()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doxfr()V
    .locals 6

    .prologue
    const/16 v5, 0xfb

    const/4 v4, 0x7

    .line 529
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->sendQuery()V

    .line 530
    :cond_0
    :goto_0
    iget v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    if-eq v0, v4, :cond_2

    .line 531
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->client:Lorg/xbill/DNS/TCPClient;

    invoke-virtual {v0}, Lorg/xbill/DNS/TCPClient;->recv()[B

    move-result-object v0

    .line 532
    invoke-direct {p0, v0}, Lorg/xbill/DNS/ZoneTransferIn;->parseMessage([B)Lorg/xbill/DNS/Message;

    move-result-object v1

    .line 533
    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->verifier:Lorg/xbill/DNS/TSIG$StreamVerifier;

    if-eqz v2, :cond_1

    .line 536
    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    .line 538
    iget-object v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->verifier:Lorg/xbill/DNS/TSIG$StreamVerifier;

    invoke-virtual {v2, v1, v0}, Lorg/xbill/DNS/TSIG$StreamVerifier;->verify(Lorg/xbill/DNS/Message;[B)I

    move-result v0

    .line 539
    if-eqz v0, :cond_1

    .line 540
    const-string/jumbo v0, "TSIG failure"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 543
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 545
    iget v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    if-nez v0, :cond_6

    .line 546
    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->getRcode()I

    move-result v0

    .line 547
    if-eqz v0, :cond_4

    .line 548
    iget v3, p0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    if-ne v3, v5, :cond_3

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 551
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->fallback()V

    .line 552
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->doxfr()V

    .line 578
    :cond_2
    :goto_1
    return-void

    .line 555
    :cond_3
    invoke-static {v0}, Lorg/xbill/DNS/Rcode;->string(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 558
    :cond_4
    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 559
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getType()I

    move-result v0

    iget v3, p0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    if-eq v0, v3, :cond_5

    .line 560
    const-string/jumbo v0, "invalid question section"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 563
    :cond_5
    array-length v0, v2

    if-nez v0, :cond_6

    iget v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    if-ne v0, v5, :cond_6

    .line 564
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->fallback()V

    .line 565
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->doxfr()V

    goto :goto_1

    .line 570
    :cond_6
    const/4 v0, 0x0

    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_7

    .line 571
    aget-object v3, v2, v0

    invoke-direct {p0, v3}, Lorg/xbill/DNS/ZoneTransferIn;->parseRR(Lorg/xbill/DNS/Record;)V

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 574
    :cond_7
    iget v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->verifier:Lorg/xbill/DNS/TSIG$StreamVerifier;

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->isVerified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 576
    const-string/jumbo v0, "last message must be signed"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ZoneTransferIn;->fail(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private fail(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 391
    new-instance v0, Lorg/xbill/DNS/ZoneTransferException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/ZoneTransferException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fallback()V
    .locals 1

    .prologue
    .line 396
    iget-boolean v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->want_fallback:Z

    if-nez v0, :cond_0

    .line 397
    const-string/jumbo v0, "server doesn\'t support IXFR"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 399
    :cond_0
    const-string/jumbo v0, "falling back to AXFR"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ZoneTransferIn;->logxfr(Ljava/lang/String;)V

    .line 400
    const/16 v0, 0xfc

    iput v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    .line 401
    const/4 v0, 0x0

    iput v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    .line 402
    return-void
.end method

.method private getBasicHandler()Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->handler:Lorg/xbill/DNS/ZoneTransferIn$ZoneTransferHandler;

    instance-of v0, v0, Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->handler:Lorg/xbill/DNS/ZoneTransferIn$ZoneTransferHandler;

    check-cast v0, Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;

    return-object v0

    .line 621
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ZoneTransferIn used callback interface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSOASerial(Lorg/xbill/DNS/Record;)J
    .locals 2

    .prologue
    .line 379
    check-cast p0, Lorg/xbill/DNS/SOARecord;

    .line 380
    invoke-virtual {p0}, Lorg/xbill/DNS/SOARecord;->getSerial()J

    move-result-wide v0

    return-wide v0
.end method

.method private logxfr(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 385
    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->zname:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 387
    :cond_0
    return-void
.end method

.method public static newAXFR(Lorg/xbill/DNS/Name;Ljava/lang/String;ILorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;
    .locals 1

    .prologue
    .line 219
    if-nez p2, :cond_0

    .line 220
    const/16 p2, 0x35

    .line 221
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v0, p3}, Lorg/xbill/DNS/ZoneTransferIn;->newAXFR(Lorg/xbill/DNS/Name;Ljava/net/SocketAddress;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object v0

    return-object v0
.end method

.method public static newAXFR(Lorg/xbill/DNS/Name;Ljava/lang/String;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/xbill/DNS/ZoneTransferIn;->newAXFR(Lorg/xbill/DNS/Name;Ljava/lang/String;ILorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object v0

    return-object v0
.end method

.method public static newAXFR(Lorg/xbill/DNS/Name;Ljava/net/SocketAddress;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;
    .locals 9

    .prologue
    .line 203
    new-instance v1, Lorg/xbill/DNS/ZoneTransferIn;

    const/16 v3, 0xfc

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/xbill/DNS/ZoneTransferIn;-><init>(Lorg/xbill/DNS/Name;IJZLjava/net/SocketAddress;Lorg/xbill/DNS/TSIG;)V

    return-object v1
.end method

.method public static newIXFR(Lorg/xbill/DNS/Name;JZLjava/lang/String;ILorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;
    .locals 7

    .prologue
    .line 275
    if-nez p5, :cond_0

    .line 276
    const/16 p5, 0x35

    .line 277
    :cond_0
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lorg/xbill/DNS/ZoneTransferIn;->newIXFR(Lorg/xbill/DNS/Name;JZLjava/net/SocketAddress;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object v0

    return-object v0
.end method

.method public static newIXFR(Lorg/xbill/DNS/Name;JZLjava/lang/String;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;
    .locals 9

    .prologue
    .line 296
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/ZoneTransferIn;->newIXFR(Lorg/xbill/DNS/Name;JZLjava/lang/String;ILorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object v0

    return-object v0
.end method

.method public static newIXFR(Lorg/xbill/DNS/Name;JZLjava/net/SocketAddress;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;
    .locals 9

    .prologue
    .line 254
    new-instance v1, Lorg/xbill/DNS/ZoneTransferIn;

    const/16 v3, 0xfb

    move-object v2, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lorg/xbill/DNS/ZoneTransferIn;-><init>(Lorg/xbill/DNS/Name;IJZLjava/net/SocketAddress;Lorg/xbill/DNS/TSIG;)V

    return-object v1
.end method

.method private openConnection()V
    .locals 4

    .prologue
    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->timeout:J

    add-long/2addr v0, v2

    .line 350
    new-instance v2, Lorg/xbill/DNS/TCPClient;

    invoke-direct {v2, v0, v1}, Lorg/xbill/DNS/TCPClient;-><init>(J)V

    iput-object v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->client:Lorg/xbill/DNS/TCPClient;

    .line 351
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->localAddress:Ljava/net/SocketAddress;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->client:Lorg/xbill/DNS/TCPClient;

    iget-object v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->localAddress:Ljava/net/SocketAddress;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/TCPClient;->bind(Ljava/net/SocketAddress;)V

    .line 353
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->client:Lorg/xbill/DNS/TCPClient;

    iget-object v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->address:Ljava/net/SocketAddress;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/TCPClient;->connect(Ljava/net/SocketAddress;)V

    .line 354
    return-void
.end method

.method private parseMessage([B)Lorg/xbill/DNS/Message;
    .locals 2

    .prologue
    .line 518
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Message;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Message;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    instance-of v1, v0, Lorg/xbill/DNS/WireParseException;

    if-eqz v1, :cond_0

    .line 522
    check-cast v0, Lorg/xbill/DNS/WireParseException;

    throw v0

    .line 523
    :cond_0
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string/jumbo v1, "Error parsing message"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseRR(Lorg/xbill/DNS/Record;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0xfb

    const/4 v5, 0x7

    const/4 v4, 0x6

    .line 406
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v0

    .line 409
    iget v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    packed-switch v1, :pswitch_data_0

    .line 500
    const-string/jumbo v0, "invalid state"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 411
    :pswitch_0
    if-eq v0, v4, :cond_1

    .line 412
    const-string/jumbo v0, "missing initial SOA"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 413
    :cond_1
    iput-object p1, p0, Lorg/xbill/DNS/ZoneTransferIn;->initialsoa:Lorg/xbill/DNS/Record;

    .line 416
    invoke-static {p1}, Lorg/xbill/DNS/ZoneTransferIn;->getSOASerial(Lorg/xbill/DNS/Record;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->end_serial:J

    .line 417
    iget v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    if-ne v0, v6, :cond_2

    iget-wide v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->end_serial:J

    iget-wide v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr_serial:J

    .line 418
    invoke-static {v0, v1, v2, v3}, Lorg/xbill/DNS/Serial;->compare(JJ)I

    move-result v0

    if-gtz v0, :cond_2

    .line 420
    const-string/jumbo v0, "up to date"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ZoneTransferIn;->logxfr(Ljava/lang/String;)V

    .line 421
    iput v5, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    goto :goto_0

    .line 424
    :cond_2
    iput v7, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    goto :goto_0

    .line 430
    :pswitch_1
    iget v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    if-ne v1, v6, :cond_3

    if-ne v0, v4, :cond_3

    .line 431
    invoke-static {p1}, Lorg/xbill/DNS/ZoneTransferIn;->getSOASerial(Lorg/xbill/DNS/Record;)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr_serial:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 433
    iput v6, p0, Lorg/xbill/DNS/ZoneTransferIn;->rtype:I

    .line 434
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->handler:Lorg/xbill/DNS/ZoneTransferIn$ZoneTransferHandler;

    invoke-interface {v0}, Lorg/xbill/DNS/ZoneTransferIn$ZoneTransferHandler;->startIXFR()V

    .line 435
    const-string/jumbo v0, "got incremental response"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ZoneTransferIn;->logxfr(Ljava/lang/String;)V

    .line 436
    iput v8, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    .line 444
    :goto_1
    invoke-direct {p0, p1}, Lorg/xbill/DNS/ZoneTransferIn;->parseRR(Lorg/xbill/DNS/Record;)V

    goto :goto_0

    .line 438
    :cond_3
    const/16 v0, 0xfc

    iput v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->rtype:I

    .line 439
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->handler:Lorg/xbill/DNS/ZoneTransferIn$ZoneTransferHandler;

    invoke-interface {v0}, Lorg/xbill/DNS/ZoneTransferIn$ZoneTransferHandler;->startAXFR()V

    .line 440
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->handler:Lorg/xbill/DNS/ZoneTransferIn$ZoneTransferHandler;

    iget-object v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->initialsoa:Lorg/xbill/DNS/Record;

    invoke-interface {v0, v1}, Lorg/xbill/DNS/ZoneTransferIn$ZoneTransferHandler;->handleRecord(Lorg/xbill/DNS/Record;)V

    .line 441
    const-string/jumbo v0, "got nonincremental response"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ZoneTransferIn;->logxfr(Ljava/lang/String;)V

    .line 442
    iput v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    goto :goto_1

    .line 448
    :pswitch_2
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->handler:Lorg/xbill/DNS/ZoneTransferIn$ZoneTransferHandler;

    invoke-interface {v0, p1}, Lorg/xbill/DNS/ZoneTransferIn$ZoneTransferHandler;->startIXFRDeletes(Lorg/xbill/DNS/Record;)V

    .line 449
    const/4 v0, 0x3

    iput v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    goto :goto_0

    .line 453
    :pswitch_3
    if-ne v0, v4, :cond_4

    .line 454
    invoke-static {p1}, Lorg/xbill/DNS/ZoneTransferIn;->getSOASerial(Lorg/xbill/DNS/Record;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->current_serial:J

    .line 455
    const/4 v0, 0x4

    iput v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    .line 456
    invoke-direct {p0, p1}, Lorg/xbill/DNS/ZoneTransferIn;->parseRR(Lorg/xbill/DNS/Record;)V

    goto :goto_0

    .line 459
    :cond_4
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->handler:Lorg/xbill/DNS/ZoneTransferIn$ZoneTransferHandler;

    invoke-interface {v0, p1}, Lorg/xbill/DNS/ZoneTransferIn$ZoneTransferHandler;->handleRecord(Lorg/xbill/DNS/Record;)V

    goto/16 :goto_0

    .line 463
    :pswitch_4
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->handler:Lorg/xbill/DNS/ZoneTransferIn$ZoneTransferHandler;

    invoke-interface {v0, p1}, Lorg/xbill/DNS/ZoneTransferIn$ZoneTransferHandler;->startIXFRAdds(Lorg/xbill/DNS/Record;)V

    .line 464
    const/4 v0, 0x5

    iput v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    goto/16 :goto_0

    .line 468
    :pswitch_5
    if-ne v0, v4, :cond_6

    .line 469
    invoke-static {p1}, Lorg/xbill/DNS/ZoneTransferIn;->getSOASerial(Lorg/xbill/DNS/Record;)J

    move-result-wide v0

    .line 470
    iget-wide v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->end_serial:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_5

    .line 471
    iput v5, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    goto/16 :goto_0

    .line 473
    :cond_5
    iget-wide v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->current_serial:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_7

    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IXFR out of sync: expected serial "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->current_serial:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 482
    :cond_6
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->handler:Lorg/xbill/DNS/ZoneTransferIn$ZoneTransferHandler;

    invoke-interface {v0, p1}, Lorg/xbill/DNS/ZoneTransferIn$ZoneTransferHandler;->handleRecord(Lorg/xbill/DNS/Record;)V

    goto/16 :goto_0

    .line 477
    :cond_7
    iput v8, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    .line 478
    invoke-direct {p0, p1}, Lorg/xbill/DNS/ZoneTransferIn;->parseRR(Lorg/xbill/DNS/Record;)V

    goto/16 :goto_0

    .line 487
    :pswitch_6
    if-ne v0, v7, :cond_8

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v1

    iget v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->dclass:I

    if-ne v1, v2, :cond_0

    .line 489
    :cond_8
    iget-object v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->handler:Lorg/xbill/DNS/ZoneTransferIn$ZoneTransferHandler;

    invoke-interface {v1, p1}, Lorg/xbill/DNS/ZoneTransferIn$ZoneTransferHandler;->handleRecord(Lorg/xbill/DNS/Record;)V

    .line 490
    if-ne v0, v4, :cond_0

    .line 491
    iput v5, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    goto/16 :goto_0

    .line 496
    :pswitch_7
    const-string/jumbo v0, "extra data"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ZoneTransferIn;->fail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 409
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private sendQuery()V
    .locals 21

    .prologue
    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/xbill/DNS/ZoneTransferIn;->zname:Lorg/xbill/DNS/Name;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/xbill/DNS/ZoneTransferIn;->dclass:I

    invoke-static {v2, v3, v4}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 360
    new-instance v20, Lorg/xbill/DNS/Message;

    invoke-direct/range {v20 .. v20}, Lorg/xbill/DNS/Message;-><init>()V

    .line 361
    invoke-virtual/range {v20 .. v20}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/Header;->setOpcode(I)V

    .line 362
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 363
    move-object/from16 v0, p0

    iget v2, v0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    const/16 v3, 0xfb

    if-ne v2, v3, :cond_0

    .line 364
    new-instance v3, Lorg/xbill/DNS/SOARecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/xbill/DNS/ZoneTransferIn;->zname:Lorg/xbill/DNS/Name;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/xbill/DNS/ZoneTransferIn;->dclass:I

    const-wide/16 v6, 0x0

    sget-object v8, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    sget-object v9, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr_serial:J

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v3 .. v19}, Lorg/xbill/DNS/SOARecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;JJJJJ)V

    .line 367
    const/4 v2, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v2}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 369
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/xbill/DNS/ZoneTransferIn;->tsig:Lorg/xbill/DNS/TSIG;

    if-eqz v2, :cond_1

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/xbill/DNS/ZoneTransferIn;->tsig:Lorg/xbill/DNS/TSIG;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;)V

    .line 371
    new-instance v2, Lorg/xbill/DNS/TSIG$StreamVerifier;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/ZoneTransferIn;->tsig:Lorg/xbill/DNS/TSIG;

    invoke-virtual/range {v20 .. v20}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/xbill/DNS/TSIG$StreamVerifier;-><init>(Lorg/xbill/DNS/TSIG;Lorg/xbill/DNS/TSIGRecord;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/xbill/DNS/ZoneTransferIn;->verifier:Lorg/xbill/DNS/TSIG$StreamVerifier;

    .line 373
    :cond_1
    const v2, 0xffff

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Message;->toWire(I)[B

    move-result-object v2

    .line 374
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/ZoneTransferIn;->client:Lorg/xbill/DNS/TCPClient;

    invoke-virtual {v3, v2}, Lorg/xbill/DNS/TCPClient;->send([B)V

    .line 375
    return-void
.end method


# virtual methods
.method public getAXFR()Ljava/util/List;
    .locals 1

    .prologue
    .line 643
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->getBasicHandler()Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;

    move-result-object v0

    .line 644
    invoke-static {v0}, Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;->access$300(Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIXFR()Ljava/util/List;
    .locals 1

    .prologue
    .line 664
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->getBasicHandler()Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;

    move-result-object v0

    .line 665
    invoke-static {v0}, Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;->access$400(Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->zname:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    return v0
.end method

.method public isAXFR()Z
    .locals 2

    .prologue
    .line 633
    iget v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->rtype:I

    const/16 v1, 0xfc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrent()Z
    .locals 2

    .prologue
    .line 676
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->getBasicHandler()Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;

    move-result-object v0

    .line 677
    invoke-static {v0}, Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;->access$300(Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;->access$400(Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIXFR()Z
    .locals 2

    .prologue
    .line 654
    iget v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->rtype:I

    const/16 v1, 0xfb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()Ljava/util/List;
    .locals 2

    .prologue
    .line 610
    new-instance v0, Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;-><init>(Lorg/xbill/DNS/ZoneTransferIn$1;)V

    .line 611
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/ZoneTransferIn;->run(Lorg/xbill/DNS/ZoneTransferIn$ZoneTransferHandler;)V

    .line 612
    invoke-static {v0}, Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;->access$300(Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 613
    invoke-static {v0}, Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;->access$300(Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;)Ljava/util/List;

    move-result-object v0

    .line 614
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;->access$400(Lorg/xbill/DNS/ZoneTransferIn$BasicHandler;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public run(Lorg/xbill/DNS/ZoneTransferIn$ZoneTransferHandler;)V
    .locals 1

    .prologue
    .line 589
    iput-object p1, p0, Lorg/xbill/DNS/ZoneTransferIn;->handler:Lorg/xbill/DNS/ZoneTransferIn$ZoneTransferHandler;

    .line 591
    :try_start_0
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->openConnection()V

    .line 592
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->doxfr()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->closeConnection()V

    .line 597
    return-void

    .line 595
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->closeConnection()V

    throw v0
.end method

.method public setDClass(I)V
    .locals 0

    .prologue
    .line 334
    invoke-static {p1}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 335
    iput p1, p0, Lorg/xbill/DNS/ZoneTransferIn;->dclass:I

    .line 336
    return-void
.end method

.method public setLocalAddress(Ljava/net/SocketAddress;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lorg/xbill/DNS/ZoneTransferIn;->localAddress:Ljava/net/SocketAddress;

    .line 345
    return-void
.end method

.method public setTimeout(I)V
    .locals 4

    .prologue
    .line 322
    if-gez p1, :cond_0

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_0
    const-wide/16 v0, 0x3e8

    int-to-long v2, p1

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->timeout:J

    .line 326
    return-void
.end method
