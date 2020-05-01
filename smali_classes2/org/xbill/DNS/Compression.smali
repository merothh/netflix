.class public Lorg/xbill/DNS/Compression;
.super Ljava/lang/Object;
.source "Compression.java"


# static fields
.field private static final MAX_POINTER:I = 0x3fff

.field private static final TABLE_SIZE:I = 0x11


# instance fields
.field private table:[Lorg/xbill/DNS/Compression$Entry;

.field private verbose:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "verbosecompression"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/xbill/DNS/Compression;->verbose:Z

    const/16 v0, 0x11

    new-array v0, v0, [Lorg/xbill/DNS/Compression$Entry;

    iput-object v0, p0, Lorg/xbill/DNS/Compression;->table:[Lorg/xbill/DNS/Compression$Entry;

    return-void
.end method


# virtual methods
.method public add(ILorg/xbill/DNS/Name;)V
    .locals 3

    const/16 v0, 0x3fff

    if-le p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lorg/xbill/DNS/Name;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x11

    new-instance v1, Lorg/xbill/DNS/Compression$Entry;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Compression$Entry;-><init>(Lorg/xbill/DNS/Compression$1;)V

    iput-object p2, v1, Lorg/xbill/DNS/Compression$Entry;->name:Lorg/xbill/DNS/Name;

    iput p1, v1, Lorg/xbill/DNS/Compression$Entry;->pos:I

    iget-object v2, p0, Lorg/xbill/DNS/Compression;->table:[Lorg/xbill/DNS/Compression$Entry;

    aget-object v2, v2, v0

    iput-object v2, v1, Lorg/xbill/DNS/Compression$Entry;->next:Lorg/xbill/DNS/Compression$Entry;

    iget-object v2, p0, Lorg/xbill/DNS/Compression;->table:[Lorg/xbill/DNS/Compression$Entry;

    aput-object v1, v2, v0

    iget-boolean v0, p0, Lorg/xbill/DNS/Compression;->verbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Adding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public get(Lorg/xbill/DNS/Name;)I
    .locals 5

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x11

    const/4 v1, -0x1

    iget-object v2, p0, Lorg/xbill/DNS/Compression;->table:[Lorg/xbill/DNS/Compression$Entry;

    aget-object v0, v2, v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lorg/xbill/DNS/Compression$Entry;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v2, p1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v0, v1, Lorg/xbill/DNS/Compression$Entry;->pos:I

    :cond_0
    iget-object v1, v1, Lorg/xbill/DNS/Compression$Entry;->next:Lorg/xbill/DNS/Compression$Entry;

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lorg/xbill/DNS/Compression;->verbose:Z

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Looking for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    return v0
.end method
