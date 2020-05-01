.class public Lorg/xbill/DNS/TSIG$StreamVerifier;
.super Ljava/lang/Object;
.source "TSIG.java"


# instance fields
.field private key:Lorg/xbill/DNS/TSIG;

.field private lastTSIG:Lorg/xbill/DNS/TSIGRecord;

.field private lastsigned:I

.field private nresponses:I

.field private verifier:Lorg/xbill/DNS/utils/HMAC;


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/TSIG;Lorg/xbill/DNS/TSIGRecord;)V
    .locals 4

    .prologue
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    iput-object p1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    .line 491
    new-instance v0, Lorg/xbill/DNS/utils/HMAC;

    iget-object v1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    invoke-static {v1}, Lorg/xbill/DNS/TSIG;->access$000(Lorg/xbill/DNS/TSIG;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    invoke-static {v2}, Lorg/xbill/DNS/TSIG;->access$100(Lorg/xbill/DNS/TSIG;)I

    move-result v2

    iget-object v3, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    invoke-static {v3}, Lorg/xbill/DNS/TSIG;->access$200(Lorg/xbill/DNS/TSIG;)[B

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;I[B)V

    iput-object v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    .line 492
    const/4 v0, 0x0

    iput v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    .line 493
    iput-object p2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

    .line 494
    return-void
.end method


# virtual methods
.method public verify(Lorg/xbill/DNS/Message;[B)I
    .locals 11

    .prologue
    const/4 v5, 0x3

    const/4 v10, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 510
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v3

    .line 512
    iget v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    .line 514
    iget v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    if-ne v0, v2, :cond_1

    .line 515
    iget-object v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    iget-object v1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

    invoke-virtual {v0, p1, p2, v1}, Lorg/xbill/DNS/TSIG;->verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;)I

    move-result v0

    .line 516
    if-nez v0, :cond_0

    .line 517
    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v1

    .line 518
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 519
    array-length v4, v1

    invoke-virtual {v2, v4}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 520
    iget-object v4, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 521
    iget-object v2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v2, v1}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 523
    :cond_0
    iput-object v3, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

    .line 588
    :goto_0
    return v0

    .line 527
    :cond_1
    if-eqz v3, :cond_2

    .line 528
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/xbill/DNS/Header;->decCount(I)V

    .line 529
    :cond_2
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->toWire()[B

    move-result-object v4

    .line 530
    if-eqz v3, :cond_3

    .line 531
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/xbill/DNS/Header;->incCount(I)V

    .line 532
    :cond_3
    iget-object v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 535
    if-nez v3, :cond_6

    .line 536
    array-length v0, p2

    array-length v5, v4

    sub-int/2addr v0, v5

    .line 539
    :goto_1
    iget-object v5, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    array-length v4, v4

    invoke-virtual {v5, p2, v4, v0}, Lorg/xbill/DNS/utils/HMAC;->update([BII)V

    .line 541
    if-eqz v3, :cond_7

    .line 542
    iget v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    iput v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastsigned:I

    .line 543
    iput-object v3, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

    .line 556
    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    iget-object v4, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    invoke-static {v4}, Lorg/xbill/DNS/TSIG;->access$300(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 557
    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getAlgorithm()Lorg/xbill/DNS/Name;

    move-result-object v0

    iget-object v4, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    invoke-static {v4}, Lorg/xbill/DNS/TSIG;->access$400(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 559
    :cond_4
    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 560
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "BADKEY failure"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 561
    :cond_5
    iput v10, p1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 562
    const/16 v0, 0x11

    goto :goto_0

    .line 538
    :cond_6
    iget v0, p1, Lorg/xbill/DNS/Message;->tsigstart:I

    array-length v5, v4

    sub-int/2addr v0, v5

    goto :goto_1

    .line 546
    :cond_7
    iget v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    iget v3, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastsigned:I

    sub-int/2addr v0, v3

    const/16 v3, 0x64

    if-lt v0, v3, :cond_8

    move v0, v2

    .line 547
    :goto_2
    if-eqz v0, :cond_9

    .line 548
    iput v10, p1, Lorg/xbill/DNS/Message;->tsigState:I

    move v0, v2

    .line 549
    goto :goto_0

    :cond_8
    move v0, v1

    .line 546
    goto :goto_2

    .line 551
    :cond_9
    const/4 v0, 0x2

    iput v0, p1, Lorg/xbill/DNS/Message;->tsigState:I

    move v0, v1

    .line 552
    goto/16 :goto_0

    .line 565
    :cond_a
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 566
    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 567
    const/16 v6, 0x20

    shr-long v6, v4, v6

    long-to-int v6, v6

    .line 568
    const-wide v8, 0xffffffffL

    and-long/2addr v4, v8

    .line 569
    invoke-virtual {v0, v6}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 570
    invoke-virtual {v0, v4, v5}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 571
    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getFudge()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 572
    iget-object v4, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 574
    iget-object v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/utils/HMAC;->verify([B)Z

    move-result v0

    if-nez v0, :cond_c

    .line 575
    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 576
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "BADSIG failure"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 577
    :cond_b
    iput v10, p1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 578
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 581
    :cond_c
    iget-object v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v0}, Lorg/xbill/DNS/utils/HMAC;->clear()V

    .line 582
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 583
    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 584
    iget-object v4, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 585
    iget-object v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 587
    iput v2, p1, Lorg/xbill/DNS/Message;->tsigState:I

    move v0, v1

    .line 588
    goto/16 :goto_0
.end method
