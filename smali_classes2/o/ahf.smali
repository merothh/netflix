.class public Lo/ahf;
.super Lo/ahm;
.source ""


# static fields
.field private static final d:Ljava/nio/charset/Charset;


# instance fields
.field private final b:Lo/aho;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 37
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lo/ahf;->d:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lo/aho;Lo/ahm;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Lo/ahm;-><init>()V

    .line 48
    iput-object p1, p0, Lo/ahf;->b:Lo/aho;

    const/4 p1, 0x0

    .line 50
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lo/ahm;->c()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 51
    invoke-virtual {p2, p1}, Lo/ahm;->c(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lo/ahf;->a(ILjava/lang/Object;)Lo/ahm;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 53
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Invalid MSL array encoding."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Lo/aho;Lorg/json/JSONArray;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Lo/ahm;-><init>()V

    .line 66
    iput-object p1, p0, Lo/ahf;->b:Lo/aho;

    const/4 p1, 0x0

    .line 68
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, -0x1

    .line 69
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lo/ahf;->a(ILjava/lang/Object;)Lo/ahm;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 73
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Invalid MSL array encoding."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 71
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Invalid JSON array encoding."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 7

    const-string v0, "Error encoding MSL object as JSON."

    .line 173
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 174
    invoke-virtual {p0}, Lo/ahf;->c()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    .line 176
    invoke-virtual {p0, v3}, Lo/ahf;->c(I)Ljava/lang/Object;

    move-result-object v4

    .line 177
    instance-of v5, v4, [B

    if-eqz v5, :cond_0

    .line 178
    check-cast v4, [B

    check-cast v4, [B

    invoke-static {v4}, Lo/aik;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 179
    :cond_0
    instance-of v5, v4, Lo/ahk;

    if-nez v5, :cond_5

    instance-of v5, v4, Lo/ahf;

    if-eqz v5, :cond_1

    goto :goto_1

    .line 181
    :cond_1
    instance-of v5, v4, Lo/ahp;

    if-eqz v5, :cond_2

    .line 182
    new-instance v5, Lo/ahk;

    iget-object v6, p0, Lo/ahf;->b:Lo/aho;

    check-cast v4, Lo/ahp;

    invoke-direct {v5, v6, v4}, Lo/ahk;-><init>(Lo/aho;Lo/ahp;)V

    .line 183
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 184
    :cond_2
    instance-of v5, v4, Lo/ahm;

    if-eqz v5, :cond_3

    .line 185
    new-instance v5, Lo/ahf;

    iget-object v6, p0, Lo/ahf;->b:Lo/aho;

    check-cast v4, Lo/ahm;

    invoke-direct {v5, v6, v4}, Lo/ahf;-><init>(Lo/aho;Lo/ahm;)V

    .line 186
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 187
    :cond_3
    instance-of v5, v4, Lo/ahr;

    if-eqz v5, :cond_4

    .line 188
    check-cast v4, Lo/ahr;

    iget-object v5, p0, Lo/ahf;->b:Lo/aho;

    sget-object v6, Lo/ahn;->a:Lo/ahn;

    invoke-interface {v4, v5, v6}, Lo/ahr;->a(Lo/aho;Lo/ahn;)[B

    move-result-object v4

    .line 189
    new-instance v5, Lo/ahk;

    iget-object v6, p0, Lo/ahf;->b:Lo/aho;

    invoke-direct {v5, v6, v4}, Lo/ahk;-><init>(Lo/aho;[B)V

    .line 190
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 192
    :cond_4
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 180
    :cond_5
    :goto_1
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 195
    :cond_6
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 201
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    invoke-direct {v2, v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 199
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    invoke-direct {v2, v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v1

    .line 197
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    invoke-direct {v2, v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public a(ILjava/lang/Object;)Lo/ahm;
    .locals 2

    .line 105
    :try_start_0
    instance-of v0, p2, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Lo/ahk;

    iget-object v1, p0, Lo/ahf;->b:Lo/aho;

    check-cast p2, Lorg/json/JSONObject;

    invoke-direct {v0, v1, p2}, Lo/ahk;-><init>(Lo/aho;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 108
    :cond_0
    instance-of v0, p2, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    .line 109
    new-instance v0, Lo/ahf;

    iget-object v1, p0, Lo/ahf;->b:Lo/aho;

    check-cast p2, Lorg/json/JSONArray;

    invoke-direct {v0, v1, p2}, Lo/ahf;-><init>(Lo/aho;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 116
    :goto_0
    invoke-super {p0, p1, v0}, Lo/ahm;->a(ILjava/lang/Object;)Lo/ahm;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 114
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported JSON object or array representation."

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public b(I)[B
    .locals 3

    .line 128
    invoke-virtual {p0, p1}, Lo/ahf;->e(I)Ljava/lang/Object;

    move-result-object v0

    .line 129
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 130
    check-cast v0, [B

    check-cast v0, [B

    return-object v0

    .line 131
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 133
    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lo/aik;->b(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 138
    :catch_0
    :cond_1
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MslArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] is not binary data."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(I[B)[B
    .locals 1

    .line 154
    invoke-virtual {p0, p1}, Lo/ahf;->c(I)Ljava/lang/Object;

    move-result-object p1

    .line 155
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 156
    check-cast p1, [B

    check-cast p1, [B

    return-object p1

    .line 157
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 159
    :try_start_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lo/aik;->b(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 210
    invoke-virtual {p0}, Lo/ahf;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
