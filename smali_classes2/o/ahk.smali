.class public Lo/ahk;
.super Lo/ahp;
.source ""

# interfaces
.implements Lorg/json/JSONString;


# static fields
.field private static final b:Ljava/nio/charset/Charset;


# instance fields
.field private final a:Lo/aho;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 38
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lo/ahk;->b:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lo/aho;Lo/ahp;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Lo/ahp;-><init>()V

    .line 65
    iput-object p1, p0, Lo/ahk;->a:Lo/aho;

    .line 67
    :try_start_0
    invoke-virtual {p2}, Lo/ahp;->a()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    invoke-virtual {p2, v0}, Lo/ahp;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lo/ahk;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 70
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Invalid MSL object encoding."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Lo/aho;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "Invalid JSON object encoding."

    .line 82
    invoke-direct {p0}, Lo/ahp;-><init>()V

    .line 83
    iput-object p1, p0, Lo/ahk;->a:Lo/aho;

    .line 85
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 86
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 88
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lo/ahk;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    goto :goto_0

    .line 87
    :cond_0
    new-instance p1, Lcom/netflix/msl/io/MslEncoderException;

    invoke-direct {p1, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 93
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Invalid MSL object encoding."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 91
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Lo/aho;[B)V
    .locals 3

    const-string v0, "Invalid JSON object encoding."

    .line 104
    invoke-direct {p0}, Lo/ahp;-><init>()V

    .line 105
    iput-object p1, p0, Lo/ahk;->a:Lo/aho;

    .line 107
    :try_start_0
    new-instance p1, Ljava/lang/String;

    sget-object v1, Lo/ahk;->b:Ljava/nio/charset/Charset;

    invoke-direct {p1, p2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 108
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Lorg/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 110
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 112
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lo/ahk;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    goto :goto_0

    .line 111
    :cond_0
    new-instance p1, Lcom/netflix/msl/io/MslEncoderException;

    invoke-direct {p1, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 117
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Invalid MSL object encoding."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 115
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static b(Lo/aho;Lo/ahp;)[B
    .locals 1

    .line 49
    instance-of v0, p1, Lo/ahk;

    if-eqz v0, :cond_0

    .line 50
    check-cast p1, Lo/ahk;

    invoke-virtual {p1}, Lo/ahk;->c()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lo/ahk;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0

    .line 52
    :cond_0
    new-instance v0, Lo/ahk;

    invoke-direct {v0, p0, p1}, Lo/ahk;-><init>(Lo/aho;Lo/ahp;)V

    .line 53
    invoke-virtual {v0}, Lo/ahk;->c()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lo/ahk;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;[B)[B
    .locals 1

    .line 182
    invoke-virtual {p0, p1}, Lo/ahk;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 183
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 184
    check-cast p1, [B

    check-cast p1, [B

    return-object p1

    .line 185
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 187
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

.method public c()Ljava/lang/String;
    .locals 7

    const-string v0, "Error encoding MSL object as JSON."

    .line 201
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 202
    invoke-virtual {p0}, Lo/ahk;->a()Ljava/util/Set;

    move-result-object v2

    .line 203
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 204
    invoke-virtual {p0, v3}, Lo/ahk;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 205
    instance-of v5, v4, [B

    if-eqz v5, :cond_0

    .line 206
    check-cast v4, [B

    check-cast v4, [B

    invoke-static {v4}, Lo/aik;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 207
    :cond_0
    instance-of v5, v4, Lo/ahk;

    if-nez v5, :cond_5

    instance-of v5, v4, Lo/ahf;

    if-eqz v5, :cond_1

    goto :goto_1

    .line 209
    :cond_1
    instance-of v5, v4, Lo/ahp;

    if-eqz v5, :cond_2

    .line 210
    new-instance v5, Lo/ahk;

    iget-object v6, p0, Lo/ahk;->a:Lo/aho;

    check-cast v4, Lo/ahp;

    invoke-direct {v5, v6, v4}, Lo/ahk;-><init>(Lo/aho;Lo/ahp;)V

    .line 211
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 212
    :cond_2
    instance-of v5, v4, Lo/ahm;

    if-eqz v5, :cond_3

    .line 213
    new-instance v5, Lo/ahf;

    iget-object v6, p0, Lo/ahk;->a:Lo/aho;

    check-cast v4, Lo/ahm;

    invoke-direct {v5, v6, v4}, Lo/ahf;-><init>(Lo/aho;Lo/ahm;)V

    .line 214
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 215
    :cond_3
    instance-of v5, v4, Lo/ahr;

    if-eqz v5, :cond_4

    .line 216
    check-cast v4, Lo/ahr;

    iget-object v5, p0, Lo/ahk;->a:Lo/aho;

    sget-object v6, Lo/ahn;->a:Lo/ahn;

    invoke-interface {v4, v5, v6}, Lo/ahr;->a(Lo/aho;Lo/ahn;)[B

    move-result-object v4

    .line 217
    new-instance v5, Lo/ahk;

    iget-object v6, p0, Lo/ahk;->a:Lo/aho;

    invoke-direct {v5, v6, v4}, Lo/ahk;-><init>(Lo/aho;[B)V

    .line 218
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 220
    :cond_4
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 208
    :cond_5
    :goto_1
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 223
    :cond_6
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 229
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    invoke-direct {v2, v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 227
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    invoke-direct {v2, v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v1

    .line 225
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    invoke-direct {v2, v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;
    .locals 2

    .line 129
    :try_start_0
    instance-of v0, p2, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Lo/ahk;

    iget-object v1, p0, Lo/ahk;->a:Lo/aho;

    check-cast p2, Lorg/json/JSONObject;

    invoke-direct {v0, v1, p2}, Lo/ahk;-><init>(Lo/aho;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 132
    :cond_0
    instance-of v0, p2, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    .line 133
    new-instance v0, Lo/ahf;

    iget-object v1, p0, Lo/ahk;->a:Lo/aho;

    check-cast p2, Lorg/json/JSONArray;

    invoke-direct {v0, v1, p2}, Lo/ahf;-><init>(Lo/aho;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 140
    :goto_0
    invoke-super {p0, p1, v0}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 138
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported JSON object or array representation."

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public e(Ljava/lang/String;)[B
    .locals 3

    .line 152
    invoke-virtual {p0, p1}, Lo/ahk;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 153
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 154
    check-cast v0, [B

    check-cast v0, [B

    return-object v0

    .line 155
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 157
    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lo/aik;->b(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 162
    :catch_0
    :cond_1
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MslObject["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lo/aho;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] is not binary data."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 238
    invoke-virtual {p0}, Lo/ahk;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
