.class public Lcom/fasterxml/jackson/core/JsonLocation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final e:Lcom/fasterxml/jackson/core/JsonLocation;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final a:J

.field protected final b:I

.field protected final c:J

.field protected final d:I

.field final transient h:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 36
    new-instance v8, Lcom/fasterxml/jackson/core/JsonLocation;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    sput-object v8, Lcom/fasterxml/jackson/core/JsonLocation;->e:Lcom/fasterxml/jackson/core/JsonLocation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JJII)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->h:Ljava/lang/Object;

    .line 65
    iput-wide p2, p0, Lcom/fasterxml/jackson/core/JsonLocation;->a:J

    .line 66
    iput-wide p4, p0, Lcom/fasterxml/jackson/core/JsonLocation;->c:J

    .line 67
    iput p6, p0, Lcom/fasterxml/jackson/core/JsonLocation;->b:I

    .line 68
    iput p7, p0, Lcom/fasterxml/jackson/core/JsonLocation;->d:I

    return-void
.end method

.method private d(Ljava/lang/StringBuilder;Ljava/lang/String;)I
    .locals 1

    const/16 v0, 0x22

    .line 218
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    return p1
.end method


# virtual methods
.method public c()J
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->a:J

    return-wide v0
.end method

.method protected c(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 6

    .line 171
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->h:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "UNKNOWN"

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1

    .line 178
    :cond_0
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 180
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java."

    .line 182
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 184
    :cond_2
    instance-of v1, v0, [B

    if-eqz v1, :cond_3

    const-string v2, "byte[]"

    goto :goto_1

    .line 186
    :cond_3
    instance-of v1, v0, [C

    if-eqz v1, :cond_4

    const-string v2, "char[]"

    :cond_4
    :goto_1
    const/16 v1, 0x28

    .line 189
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    instance-of v1, v0, Ljava/lang/CharSequence;

    const/16 v2, 0x1f4

    const/4 v3, 0x0

    const-string v4, " chars"

    if-eqz v1, :cond_5

    .line 195
    check-cast v0, Ljava/lang/CharSequence;

    .line 196
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 197
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v0, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonLocation;->d(Ljava/lang/StringBuilder;Ljava/lang/String;)I

    move-result v0

    :goto_2
    sub-int v3, v1, v0

    goto :goto_3

    .line 198
    :cond_5
    instance-of v1, v0, [C

    if-eqz v1, :cond_6

    .line 199
    check-cast v0, [C

    check-cast v0, [C

    .line 200
    array-length v1, v0

    .line 201
    new-instance v5, Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v5, v0, v3, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, p1, v5}, Lcom/fasterxml/jackson/core/JsonLocation;->d(Ljava/lang/StringBuilder;Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 202
    :cond_6
    instance-of v1, v0, [B

    if-eqz v1, :cond_7

    .line 203
    check-cast v0, [B

    check-cast v0, [B

    .line 204
    array-length v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 205
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v0, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-direct {p0, p1, v2}, Lcom/fasterxml/jackson/core/JsonLocation;->d(Ljava/lang/StringBuilder;Ljava/lang/String;)I

    .line 206
    array-length v0, v0

    sub-int v3, v0, v1

    const-string v4, " bytes"

    :cond_7
    :goto_3
    if-lez v3, :cond_8

    const-string v0, "[truncated "

    .line 212
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    return-object p1
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 141
    :cond_1
    instance-of v2, p1, Lcom/fasterxml/jackson/core/JsonLocation;

    if-nez v2, :cond_2

    return v1

    .line 142
    :cond_2
    check-cast p1, Lcom/fasterxml/jackson/core/JsonLocation;

    .line 144
    iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonLocation;->h:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 145
    iget-object v2, p1, Lcom/fasterxml/jackson/core/JsonLocation;->h:Ljava/lang/Object;

    if-eqz v2, :cond_4

    return v1

    .line 146
    :cond_3
    iget-object v3, p1, Lcom/fasterxml/jackson/core/JsonLocation;->h:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 148
    :cond_4
    iget v2, p0, Lcom/fasterxml/jackson/core/JsonLocation;->b:I

    iget v3, p1, Lcom/fasterxml/jackson/core/JsonLocation;->b:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/fasterxml/jackson/core/JsonLocation;->d:I

    iget v3, p1, Lcom/fasterxml/jackson/core/JsonLocation;->d:I

    if-ne v2, v3, :cond_5

    iget-wide v2, p0, Lcom/fasterxml/jackson/core/JsonLocation;->c:J

    iget-wide v4, p1, Lcom/fasterxml/jackson/core/JsonLocation;->c:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_5

    .line 151
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonLocation;->c()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonLocation;->c()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->h:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 129
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->b:I

    xor-int/2addr v0, v1

    .line 130
    iget v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->d:I

    add-int/2addr v0, v1

    .line 131
    iget-wide v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->c:J

    long-to-int v2, v1

    xor-int/2addr v0, v2

    .line 132
    iget-wide v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->a:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "[Source: "

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonLocation;->c(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const-string v1, "; line: "

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", column: "

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
