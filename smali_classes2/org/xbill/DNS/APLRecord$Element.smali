.class public Lorg/xbill/DNS/APLRecord$Element;
.super Ljava/lang/Object;
.source "APLRecord.java"


# instance fields
.field public final address:Ljava/lang/Object;

.field public final family:I

.field public final negative:Z

.field public final prefixLength:I


# direct methods
.method private constructor <init>(IZLjava/lang/Object;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/xbill/DNS/APLRecord$Element;->family:I

    iput-boolean p2, p0, Lorg/xbill/DNS/APLRecord$Element;->negative:Z

    iput-object p3, p0, Lorg/xbill/DNS/APLRecord$Element;->address:Ljava/lang/Object;

    iput p4, p0, Lorg/xbill/DNS/APLRecord$Element;->prefixLength:I

    invoke-static {p1, p4}, Lorg/xbill/DNS/APLRecord;->access$000(II)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid prefix length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(IZLjava/lang/Object;ILorg/xbill/DNS/APLRecord$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/xbill/DNS/APLRecord$Element;-><init>(IZLjava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(ZLjava/net/InetAddress;I)V
    .locals 1

    invoke-static {p2}, Lorg/xbill/DNS/Address;->familyOf(Ljava/net/InetAddress;)I

    move-result v0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/xbill/DNS/APLRecord$Element;-><init>(IZLjava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lorg/xbill/DNS/APLRecord$Element;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/xbill/DNS/APLRecord$Element;

    iget v1, p0, Lorg/xbill/DNS/APLRecord$Element;->family:I

    iget v2, p1, Lorg/xbill/DNS/APLRecord$Element;->family:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lorg/xbill/DNS/APLRecord$Element;->negative:Z

    iget-boolean v2, p1, Lorg/xbill/DNS/APLRecord$Element;->negative:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/xbill/DNS/APLRecord$Element;->prefixLength:I

    iget v2, p1, Lorg/xbill/DNS/APLRecord$Element;->prefixLength:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/xbill/DNS/APLRecord$Element;->address:Ljava/lang/Object;

    iget-object v2, p1, Lorg/xbill/DNS/APLRecord$Element;->address:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/APLRecord$Element;->address:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/xbill/DNS/APLRecord$Element;->prefixLength:I

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lorg/xbill/DNS/APLRecord$Element;->negative:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-boolean v0, p0, Lorg/xbill/DNS/APLRecord$Element;->negative:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget v0, p0, Lorg/xbill/DNS/APLRecord$Element;->family:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/xbill/DNS/APLRecord$Element;->family:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget v0, p0, Lorg/xbill/DNS/APLRecord$Element;->family:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/APLRecord$Element;->address:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string/jumbo v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/xbill/DNS/APLRecord$Element;->prefixLength:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/xbill/DNS/APLRecord$Element;->address:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
