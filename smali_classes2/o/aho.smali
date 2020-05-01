.class public abstract Lo/aho;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_9

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 120
    :cond_0
    instance-of v0, p0, Lo/ahp;

    if-nez v0, :cond_8

    instance-of v0, p0, Lo/ahm;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 122
    :cond_1
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 123
    new-instance v0, Lo/ahp;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Lo/ahp;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lo/ahp;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 124
    :cond_2
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 125
    new-instance v0, Lo/ahm;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Lo/ahm;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lo/ahm;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 126
    :cond_3
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 127
    new-instance v0, Lo/ahm;

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-direct {v0, p0}, Lo/ahm;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0}, Lo/ahm;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 128
    :cond_4
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    goto :goto_0

    .line 130
    :cond_5
    instance-of v0, p0, [B

    if-eqz v0, :cond_6

    .line 131
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lo/aik;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 133
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/aho;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 129
    :cond_7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 121
    :cond_8
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_2
    const-string p0, "null"

    return-object p0
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_a

    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 58
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x22

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_9

    .line 63
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xc

    if-eq v6, v7, :cond_8

    const/16 v7, 0xd

    if-eq v6, v7, :cond_7

    const/16 v7, 0x5c

    if-eq v6, v2, :cond_6

    const/16 v8, 0x2f

    if-eq v6, v8, :cond_4

    if-eq v6, v7, :cond_6

    packed-switch v6, :pswitch_data_0

    const/16 v5, 0x20

    if-lt v6, v5, :cond_3

    const/16 v5, 0x80

    if-lt v6, v5, :cond_1

    const/16 v5, 0xa0

    if-lt v6, v5, :cond_3

    :cond_1
    const/16 v5, 0x2000

    if-lt v6, v5, :cond_2

    const/16 v5, 0x2100

    if-ge v6, v5, :cond_2

    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    :goto_1
    const-string v5, "\\u"

    .line 95
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 97
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    rsub-int/lit8 v7, v7, 0x4

    const-string v8, "0000"

    invoke-virtual {v0, v8, v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_0
    const-string v5, "\\n"

    .line 83
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_1
    const-string v5, "\\t"

    .line 80
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_2
    const-string v5, "\\b"

    .line 77
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const/16 v8, 0x3c

    if-ne v5, v8, :cond_5

    .line 72
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    :cond_5
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 67
    :cond_6
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    const-string v5, "\\r"

    .line 89
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    const-string v5, "\\f"

    .line 86
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_0

    .line 104
    :cond_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    :goto_3
    const-string p0, "\"\""

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a([B)Lo/ahn;
    .locals 2

    .line 224
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 228
    invoke-static {p1}, Lo/ahn;->b([B)Lo/ahn;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 230
    :cond_0
    new-instance p1, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Unidentified encoder format."

    invoke-direct {p1, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_1
    new-instance p1, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "No encoding identifier found."

    invoke-direct {p1, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lo/ahp;
    .locals 1

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p0, v0}, Lo/aho;->d(Ljava/util/Map;)Lo/ahp;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/io/InputStream;)Lo/aht;
    .locals 4

    .line 162
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lo/ahw;

    invoke-direct {v0, p1}, Lo/ahw;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    :goto_0
    const/4 v0, 0x3

    new-array v1, v0, [B

    .line 166
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 167
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 170
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 173
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/aho;->a([B)Lo/ahn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p0, p1, v0}, Lo/aho;->b(Ljava/io/InputStream;Lo/ahn;)Lo/aht;

    move-result-object p1

    return-object p1

    .line 175
    :cond_1
    new-instance p1, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Unidentified encoder format"

    invoke-direct {p1, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 169
    :cond_2
    new-instance p1, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "End of stream reached when attempting to read the byte stream identifier sequence."

    invoke-direct {p1, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract b(Ljava/io/InputStream;Lo/ahn;)Lo/aht;
.end method

.method public c()Lo/ahm;
    .locals 1

    const/4 v0, 0x0

    .line 263
    invoke-virtual {p0, v0}, Lo/aho;->e(Ljava/util/Collection;)Lo/ahm;

    move-result-object v0

    return-object v0
.end method

.method public abstract c([B)Lo/ahp;
.end method

.method public abstract c(Lo/ahp;Lo/ahn;)[B
.end method

.method public d(Ljava/util/Map;)Lo/ahp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/ahp;"
        }
    .end annotation

    .line 209
    new-instance v0, Lo/ahp;

    invoke-direct {v0, p1}, Lo/ahp;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public e(Ljava/util/Collection;)Lo/ahm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Lo/ahm;"
        }
    .end annotation

    .line 275
    new-instance v0, Lo/ahm;

    invoke-direct {v0, p1}, Lo/ahm;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public abstract e(Ljava/util/Set;)Lo/ahn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lo/ahn;",
            ">;)",
            "Lo/ahn;"
        }
    .end annotation
.end method
