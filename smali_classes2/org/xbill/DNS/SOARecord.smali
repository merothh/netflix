.class public Lorg/xbill/DNS/SOARecord;
.super Lorg/xbill/DNS/Record;
.source "SOARecord.java"


# static fields
.field private static final serialVersionUID:J = 0xe916d0ebd70fa7bL


# instance fields
.field private admin:Lorg/xbill/DNS/Name;

.field private expire:J

.field private host:Lorg/xbill/DNS/Name;

.field private minimum:J

.field private refresh:J

.field private retry:J

.field private serial:J


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;JJJJJ)V
    .locals 9

    const/4 v4, 0x6

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    const-string/jumbo v2, "host"

    invoke-static {v2, p5}, Lorg/xbill/DNS/SOARecord;->checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/SOARecord;->host:Lorg/xbill/DNS/Name;

    const-string/jumbo v2, "admin"

    invoke-static {v2, p6}, Lorg/xbill/DNS/SOARecord;->checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/SOARecord;->admin:Lorg/xbill/DNS/Name;

    const-string/jumbo v2, "serial"

    move-wide/from16 v0, p7

    invoke-static {v2, v0, v1}, Lorg/xbill/DNS/SOARecord;->checkU32(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xbill/DNS/SOARecord;->serial:J

    const-string/jumbo v2, "refresh"

    move-wide/from16 v0, p9

    invoke-static {v2, v0, v1}, Lorg/xbill/DNS/SOARecord;->checkU32(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xbill/DNS/SOARecord;->refresh:J

    const-string/jumbo v2, "retry"

    move-wide/from16 v0, p11

    invoke-static {v2, v0, v1}, Lorg/xbill/DNS/SOARecord;->checkU32(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xbill/DNS/SOARecord;->retry:J

    const-string/jumbo v2, "expire"

    move-wide/from16 v0, p13

    invoke-static {v2, v0, v1}, Lorg/xbill/DNS/SOARecord;->checkU32(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xbill/DNS/SOARecord;->expire:J

    const-string/jumbo v2, "minimum"

    move-wide/from16 v0, p15

    invoke-static {v2, v0, v1}, Lorg/xbill/DNS/SOARecord;->checkU32(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xbill/DNS/SOARecord;->minimum:J

    return-void
.end method


# virtual methods
.method public getAdmin()Lorg/xbill/DNS/Name;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/SOARecord;->admin:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public getExpire()J
    .locals 2

    iget-wide v0, p0, Lorg/xbill/DNS/SOARecord;->expire:J

    return-wide v0
.end method

.method public getHost()Lorg/xbill/DNS/Name;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/SOARecord;->host:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public getMinimum()J
    .locals 2

    iget-wide v0, p0, Lorg/xbill/DNS/SOARecord;->minimum:J

    return-wide v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    new-instance v0, Lorg/xbill/DNS/SOARecord;

    invoke-direct {v0}, Lorg/xbill/DNS/SOARecord;-><init>()V

    return-object v0
.end method

.method public getRefresh()J
    .locals 2

    iget-wide v0, p0, Lorg/xbill/DNS/SOARecord;->refresh:J

    return-wide v0
.end method

.method public getRetry()J
    .locals 2

    iget-wide v0, p0, Lorg/xbill/DNS/SOARecord;->retry:J

    return-wide v0
.end method

.method public getSerial()J
    .locals 2

    iget-wide v0, p0, Lorg/xbill/DNS/SOARecord;->serial:J

    return-wide v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 2

    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SOARecord;->host:Lorg/xbill/DNS/Name;

    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SOARecord;->admin:Lorg/xbill/DNS/Name;

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecord;->serial:J

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getTTLLike()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecord;->refresh:J

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getTTLLike()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecord;->retry:J

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getTTLLike()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecord;->expire:J

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getTTLLike()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecord;->minimum:J

    return-void
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 2

    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v0, p0, Lorg/xbill/DNS/SOARecord;->host:Lorg/xbill/DNS/Name;

    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v0, p0, Lorg/xbill/DNS/SOARecord;->admin:Lorg/xbill/DNS/Name;

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecord;->serial:J

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecord;->refresh:J

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecord;->retry:J

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecord;->expire:J

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecord;->minimum:J

    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/xbill/DNS/SOARecord;->host:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/xbill/DNS/SOARecord;->admin:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "multiline"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, " (\n\t\t\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lorg/xbill/DNS/SOARecord;->serial:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\t; serial\n\t\t\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lorg/xbill/DNS/SOARecord;->refresh:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\t; refresh\n\t\t\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lorg/xbill/DNS/SOARecord;->retry:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\t; retry\n\t\t\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lorg/xbill/DNS/SOARecord;->expire:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\t; expire\n\t\t\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lorg/xbill/DNS/SOARecord;->minimum:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " )\t; minimum"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lorg/xbill/DNS/SOARecord;->serial:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lorg/xbill/DNS/SOARecord;->refresh:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lorg/xbill/DNS/SOARecord;->retry:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lorg/xbill/DNS/SOARecord;->expire:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lorg/xbill/DNS/SOARecord;->minimum:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/SOARecord;->host:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    iget-object v0, p0, Lorg/xbill/DNS/SOARecord;->admin:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    iget-wide v0, p0, Lorg/xbill/DNS/SOARecord;->serial:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    iget-wide v0, p0, Lorg/xbill/DNS/SOARecord;->refresh:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    iget-wide v0, p0, Lorg/xbill/DNS/SOARecord;->retry:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    iget-wide v0, p0, Lorg/xbill/DNS/SOARecord;->expire:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    iget-wide v0, p0, Lorg/xbill/DNS/SOARecord;->minimum:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    return-void
.end method
