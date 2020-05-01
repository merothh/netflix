.class public Lcom/getkeepsafe/relinker/elf/Elf32Header;
.super Lcom/getkeepsafe/relinker/elf/Elf$Header;
.source "Elf32Header.java"


# instance fields
.field private final parser:Lcom/getkeepsafe/relinker/elf/ElfParser;


# direct methods
.method public constructor <init>(ZLcom/getkeepsafe/relinker/elf/ElfParser;)V
    .locals 4

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/getkeepsafe/relinker/elf/Elf$Header;-><init>()V

    .line 26
    iput-boolean p1, p0, Lcom/getkeepsafe/relinker/elf/Elf32Header;->bigEndian:Z

    .line 27
    iput-object p2, p0, Lcom/getkeepsafe/relinker/elf/Elf32Header;->parser:Lcom/getkeepsafe/relinker/elf/ElfParser;

    .line 29
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 30
    if-eqz p1, :cond_0

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 32
    const-wide/16 v2, 0x10

    invoke-virtual {p2, v1, v2, v3}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readHalf(Ljava/nio/ByteBuffer;J)I

    move-result v0

    iput v0, p0, Lcom/getkeepsafe/relinker/elf/Elf32Header;->type:I

    .line 33
    const-wide/16 v2, 0x1c

    invoke-virtual {p2, v1, v2, v3}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readWord(Ljava/nio/ByteBuffer;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/getkeepsafe/relinker/elf/Elf32Header;->phoff:J

    .line 34
    const-wide/16 v2, 0x20

    invoke-virtual {p2, v1, v2, v3}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readWord(Ljava/nio/ByteBuffer;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/getkeepsafe/relinker/elf/Elf32Header;->shoff:J

    .line 35
    const-wide/16 v2, 0x2a

    invoke-virtual {p2, v1, v2, v3}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readHalf(Ljava/nio/ByteBuffer;J)I

    move-result v0

    iput v0, p0, Lcom/getkeepsafe/relinker/elf/Elf32Header;->phentsize:I

    .line 36
    const-wide/16 v2, 0x2c

    invoke-virtual {p2, v1, v2, v3}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readHalf(Ljava/nio/ByteBuffer;J)I

    move-result v0

    iput v0, p0, Lcom/getkeepsafe/relinker/elf/Elf32Header;->phnum:I

    .line 37
    const-wide/16 v2, 0x2e

    invoke-virtual {p2, v1, v2, v3}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readHalf(Ljava/nio/ByteBuffer;J)I

    move-result v0

    iput v0, p0, Lcom/getkeepsafe/relinker/elf/Elf32Header;->shentsize:I

    .line 38
    const-wide/16 v2, 0x30

    invoke-virtual {p2, v1, v2, v3}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readHalf(Ljava/nio/ByteBuffer;J)I

    move-result v0

    iput v0, p0, Lcom/getkeepsafe/relinker/elf/Elf32Header;->shnum:I

    .line 39
    const-wide/16 v2, 0x32

    invoke-virtual {p2, v1, v2, v3}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readHalf(Ljava/nio/ByteBuffer;J)I

    move-result v0

    iput v0, p0, Lcom/getkeepsafe/relinker/elf/Elf32Header;->shstrndx:I

    .line 40
    return-void

    .line 30
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0
.end method


# virtual methods
.method public getDynamicStructure(JI)Lcom/getkeepsafe/relinker/elf/Elf$DynamicStructure;
    .locals 7

    .prologue
    .line 55
    new-instance v1, Lcom/getkeepsafe/relinker/elf/Dynamic32Structure;

    iget-object v2, p0, Lcom/getkeepsafe/relinker/elf/Elf32Header;->parser:Lcom/getkeepsafe/relinker/elf/ElfParser;

    move-object v3, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/getkeepsafe/relinker/elf/Dynamic32Structure;-><init>(Lcom/getkeepsafe/relinker/elf/ElfParser;Lcom/getkeepsafe/relinker/elf/Elf$Header;JI)V

    return-object v1
.end method

.method public getProgramHeader(J)Lcom/getkeepsafe/relinker/elf/Elf$ProgramHeader;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lcom/getkeepsafe/relinker/elf/Program32Header;

    iget-object v1, p0, Lcom/getkeepsafe/relinker/elf/Elf32Header;->parser:Lcom/getkeepsafe/relinker/elf/ElfParser;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/getkeepsafe/relinker/elf/Program32Header;-><init>(Lcom/getkeepsafe/relinker/elf/ElfParser;Lcom/getkeepsafe/relinker/elf/Elf$Header;J)V

    return-object v0
.end method

.method public getSectionHeader(I)Lcom/getkeepsafe/relinker/elf/Elf$SectionHeader;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/getkeepsafe/relinker/elf/Section32Header;

    iget-object v1, p0, Lcom/getkeepsafe/relinker/elf/Elf32Header;->parser:Lcom/getkeepsafe/relinker/elf/ElfParser;

    invoke-direct {v0, v1, p0, p1}, Lcom/getkeepsafe/relinker/elf/Section32Header;-><init>(Lcom/getkeepsafe/relinker/elf/ElfParser;Lcom/getkeepsafe/relinker/elf/Elf$Header;I)V

    return-object v0
.end method
