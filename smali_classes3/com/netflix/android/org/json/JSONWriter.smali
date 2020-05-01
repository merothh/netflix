.class public Lcom/netflix/android/org/json/JSONWriter;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final maxdepth:I = 0xc8


# instance fields
.field private comma:Z

.field protected mode:C

.field private final stack:[Lcom/netflix/android/org/json/JSONObject;

.field private top:I

.field protected writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/netflix/android/org/json/JSONWriter;->comma:Z

    const/16 v1, 0x69

    .line 98
    iput-char v1, p0, Lcom/netflix/android/org/json/JSONWriter;->mode:C

    const/16 v1, 0xc8

    new-array v1, v1, [Lcom/netflix/android/org/json/JSONObject;

    .line 99
    iput-object v1, p0, Lcom/netflix/android/org/json/JSONWriter;->stack:[Lcom/netflix/android/org/json/JSONObject;

    .line 100
    iput v0, p0, Lcom/netflix/android/org/json/JSONWriter;->top:I

    .line 101
    iput-object p1, p0, Lcom/netflix/android/org/json/JSONWriter;->writer:Ljava/io/Writer;

    return-void
.end method

.method private append(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONWriter;
    .locals 3

    if-eqz p1, :cond_4

    .line 114
    iget-char v0, p0, Lcom/netflix/android/org/json/JSONWriter;->mode:C

    const/16 v1, 0x61

    const/16 v2, 0x6f

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    new-instance p1, Lcom/netflix/android/org/json/JSONException;

    const-string v0, "Value out of sequence."

    invoke-direct {p1, v0}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_1
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/netflix/android/org/json/JSONWriter;->comma:Z

    if-eqz v0, :cond_2

    iget-char v0, p0, Lcom/netflix/android/org/json/JSONWriter;->mode:C

    if-ne v0, v1, :cond_2

    .line 117
    iget-object v0, p0, Lcom/netflix/android/org/json/JSONWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/netflix/android/org/json/JSONWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    iget-char p1, p0, Lcom/netflix/android/org/json/JSONWriter;->mode:C

    if-ne p1, v2, :cond_3

    const/16 p1, 0x6b

    .line 124
    iput-char p1, p0, Lcom/netflix/android/org/json/JSONWriter;->mode:C

    :cond_3
    const/4 p1, 0x1

    .line 126
    iput-boolean p1, p0, Lcom/netflix/android/org/json/JSONWriter;->comma:Z

    return-object p0

    :catch_0
    move-exception p1

    .line 121
    new-instance v0, Lcom/netflix/android/org/json/JSONException;

    invoke-direct {v0, p1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 112
    :cond_4
    new-instance p1, Lcom/netflix/android/org/json/JSONException;

    const-string v0, "Null pointer"

    invoke-direct {p1, v0}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private end(CC)Lcom/netflix/android/org/json/JSONWriter;
    .locals 1

    .line 159
    iget-char v0, p0, Lcom/netflix/android/org/json/JSONWriter;->mode:C

    if-eq v0, p1, :cond_1

    .line 160
    new-instance p2, Lcom/netflix/android/org/json/JSONException;

    const/16 v0, 0x61

    if-ne p1, v0, :cond_0

    const-string p1, "Misplaced endArray."

    goto :goto_0

    :cond_0
    const-string p1, "Misplaced endObject."

    :goto_0
    invoke-direct {p2, p1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 164
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/android/org/json/JSONWriter;->pop(C)V

    .line 166
    :try_start_0
    iget-object p1, p0, Lcom/netflix/android/org/json/JSONWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    .line 170
    iput-boolean p1, p0, Lcom/netflix/android/org/json/JSONWriter;->comma:Z

    return-object p0

    :catch_0
    move-exception p1

    .line 168
    new-instance p2, Lcom/netflix/android/org/json/JSONException;

    invoke-direct {p2, p1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private pop(C)V
    .locals 4

    .line 255
    iget v0, p0, Lcom/netflix/android/org/json/JSONWriter;->top:I

    const-string v1, "Nesting error."

    if-lez v0, :cond_4

    .line 258
    iget-object v2, p0, Lcom/netflix/android/org/json/JSONWriter;->stack:[Lcom/netflix/android/org/json/JSONObject;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v2, v0

    const/16 v2, 0x61

    const/16 v3, 0x6b

    if-nez v0, :cond_0

    const/16 v0, 0x61

    goto :goto_0

    :cond_0
    const/16 v0, 0x6b

    :goto_0
    if-ne v0, p1, :cond_3

    .line 262
    iget p1, p0, Lcom/netflix/android/org/json/JSONWriter;->top:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/netflix/android/org/json/JSONWriter;->top:I

    .line 263
    iget p1, p0, Lcom/netflix/android/org/json/JSONWriter;->top:I

    if-nez p1, :cond_1

    const/16 v2, 0x64

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/netflix/android/org/json/JSONWriter;->stack:[Lcom/netflix/android/org/json/JSONObject;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x6b

    :goto_1
    iput-char v2, p0, Lcom/netflix/android/org/json/JSONWriter;->mode:C

    return-void

    .line 260
    :cond_3
    new-instance p1, Lcom/netflix/android/org/json/JSONException;

    invoke-direct {p1, v1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 256
    :cond_4
    new-instance p1, Lcom/netflix/android/org/json/JSONException;

    invoke-direct {p1, v1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private push(Lcom/netflix/android/org/json/JSONObject;)V
    .locals 2

    .line 276
    iget v0, p0, Lcom/netflix/android/org/json/JSONWriter;->top:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/netflix/android/org/json/JSONWriter;->stack:[Lcom/netflix/android/org/json/JSONObject;

    aput-object p1, v1, v0

    if-nez p1, :cond_0

    const/16 p1, 0x61

    goto :goto_0

    :cond_0
    const/16 p1, 0x6b

    .line 280
    :goto_0
    iput-char p1, p0, Lcom/netflix/android/org/json/JSONWriter;->mode:C

    .line 281
    iget p1, p0, Lcom/netflix/android/org/json/JSONWriter;->top:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/netflix/android/org/json/JSONWriter;->top:I

    return-void

    .line 277
    :cond_1
    new-instance p1, Lcom/netflix/android/org/json/JSONException;

    const-string v0, "Nesting too deep."

    invoke-direct {p1, v0}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public array()Lcom/netflix/android/org/json/JSONWriter;
    .locals 2

    .line 142
    iget-char v0, p0, Lcom/netflix/android/org/json/JSONWriter;->mode:C

    const/16 v1, 0x69

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x61

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    new-instance v0, Lcom/netflix/android/org/json/JSONException;

    const-string v1, "Misplaced array."

    invoke-direct {v0, v1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 143
    invoke-direct {p0, v0}, Lcom/netflix/android/org/json/JSONWriter;->push(Lcom/netflix/android/org/json/JSONObject;)V

    const-string v0, "["

    .line 144
    invoke-direct {p0, v0}, Lcom/netflix/android/org/json/JSONWriter;->append(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONWriter;

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lcom/netflix/android/org/json/JSONWriter;->comma:Z

    return-object p0
.end method

.method public endArray()Lcom/netflix/android/org/json/JSONWriter;
    .locals 2

    const/16 v0, 0x61

    const/16 v1, 0x5d

    .line 181
    invoke-direct {p0, v0, v1}, Lcom/netflix/android/org/json/JSONWriter;->end(CC)Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lcom/netflix/android/org/json/JSONWriter;
    .locals 2

    const/16 v0, 0x6b

    const/16 v1, 0x7d

    .line 191
    invoke-direct {p0, v0, v1}, Lcom/netflix/android/org/json/JSONWriter;->end(CC)Lcom/netflix/android/org/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public key(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONWriter;
    .locals 2

    if-eqz p1, :cond_2

    .line 206
    iget-char v0, p0, Lcom/netflix/android/org/json/JSONWriter;->mode:C

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_1

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/netflix/android/org/json/JSONWriter;->stack:[Lcom/netflix/android/org/json/JSONObject;

    iget v1, p0, Lcom/netflix/android/org/json/JSONWriter;->top:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Lcom/netflix/android/org/json/JSONObject;->putOnce(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 209
    iget-boolean v0, p0, Lcom/netflix/android/org/json/JSONWriter;->comma:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/netflix/android/org/json/JSONWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/org/json/JSONWriter;->writer:Ljava/io/Writer;

    invoke-static {p1}, Lcom/netflix/android/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 213
    iget-object p1, p0, Lcom/netflix/android/org/json/JSONWriter;->writer:Ljava/io/Writer;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    const/4 p1, 0x0

    .line 214
    iput-boolean p1, p0, Lcom/netflix/android/org/json/JSONWriter;->comma:Z

    const/16 p1, 0x6f

    .line 215
    iput-char p1, p0, Lcom/netflix/android/org/json/JSONWriter;->mode:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 218
    new-instance v0, Lcom/netflix/android/org/json/JSONException;

    invoke-direct {v0, p1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 221
    :cond_1
    new-instance p1, Lcom/netflix/android/org/json/JSONException;

    const-string v0, "Misplaced key."

    invoke-direct {p1, v0}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 204
    :cond_2
    new-instance p1, Lcom/netflix/android/org/json/JSONException;

    const-string v0, "Null key."

    invoke-direct {p1, v0}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public object()Lcom/netflix/android/org/json/JSONWriter;
    .locals 3

    .line 235
    iget-char v0, p0, Lcom/netflix/android/org/json/JSONWriter;->mode:C

    const/16 v1, 0x6f

    const/16 v2, 0x69

    if-ne v0, v2, :cond_0

    .line 236
    iput-char v1, p0, Lcom/netflix/android/org/json/JSONWriter;->mode:C

    .line 238
    :cond_0
    iget-char v0, p0, Lcom/netflix/android/org/json/JSONWriter;->mode:C

    if-eq v0, v1, :cond_2

    const/16 v1, 0x61

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 244
    :cond_1
    new-instance v0, Lcom/netflix/android/org/json/JSONException;

    const-string v1, "Misplaced object."

    invoke-direct {v0, v1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const-string v0, "{"

    .line 239
    invoke-direct {p0, v0}, Lcom/netflix/android/org/json/JSONWriter;->append(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONWriter;

    .line 240
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    invoke-direct {p0, v0}, Lcom/netflix/android/org/json/JSONWriter;->push(Lcom/netflix/android/org/json/JSONObject;)V

    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lcom/netflix/android/org/json/JSONWriter;->comma:Z

    return-object p0
.end method

.method public value(D)Lcom/netflix/android/org/json/JSONWriter;
    .locals 1

    .line 303
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONWriter;

    move-result-object p1

    return-object p1
.end method

.method public value(J)Lcom/netflix/android/org/json/JSONWriter;
    .locals 0

    .line 313
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netflix/android/org/json/JSONWriter;->append(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONWriter;

    move-result-object p1

    return-object p1
.end method

.method public value(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONWriter;
    .locals 0

    .line 325
    invoke-static {p1}, Lcom/netflix/android/org/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netflix/android/org/json/JSONWriter;->append(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONWriter;

    move-result-object p1

    return-object p1
.end method

.method public value(Z)Lcom/netflix/android/org/json/JSONWriter;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    .line 293
    :goto_0
    invoke-direct {p0, p1}, Lcom/netflix/android/org/json/JSONWriter;->append(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONWriter;

    move-result-object p1

    return-object p1
.end method
