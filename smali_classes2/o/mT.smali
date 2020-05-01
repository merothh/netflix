.class public Lo/mT;
.super Lo/ahp;
.source ""

# interfaces
.implements Lcom/netflix/android/org/json/JSONString;


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# instance fields
.field private final b:Lo/aho;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 29
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lo/mT;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lo/aho;Lcom/netflix/android/org/json/JSONObject;)V
    .locals 3

    const-string v0, "Invalid JSON object encoding."

    .line 73
    invoke-direct {p0}, Lo/ahp;-><init>()V

    .line 74
    iput-object p1, p0, Lo/mT;->b:Lo/aho;

    .line 76
    :try_start_0
    invoke-virtual {p2}, Lcom/netflix/android/org/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 77
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 79
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/netflix/android/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lo/mT;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    goto :goto_0

    .line 78
    :cond_0
    new-instance p1, Lcom/netflix/msl/io/MslEncoderException;

    invoke-direct {p1, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 84
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Invalid MSL object encoding."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 82
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Lo/aho;Lo/ahp;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Lo/ahp;-><init>()V

    .line 56
    iput-object p1, p0, Lo/mT;->b:Lo/aho;

    .line 58
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

    .line 59
    invoke-virtual {p2, v0}, Lo/ahp;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lo/mT;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 61
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Invalid MSL object encoding."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Lo/aho;[B)V
    .locals 3

    const-string v0, "Invalid JSON object encoding."

    .line 95
    invoke-direct {p0}, Lo/ahp;-><init>()V

    .line 96
    iput-object p1, p0, Lo/mT;->b:Lo/aho;

    .line 98
    :try_start_0
    new-instance p1, Ljava/lang/String;

    sget-object v1, Lo/mT;->a:Ljava/nio/charset/Charset;

    invoke-direct {p1, p2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 99
    new-instance p2, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {p2, p1}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Lcom/netflix/android/org/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 101
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 103
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/netflix/android/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lo/mT;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    goto :goto_0

    .line 102
    :cond_0
    new-instance p1, Lcom/netflix/msl/io/MslEncoderException;

    invoke-direct {p1, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 108
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Invalid MSL object encoding."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 106
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static e(Lo/aho;Lo/ahp;)[B
    .locals 1

    .line 40
    instance-of v0, p1, Lo/mT;

    if-eqz v0, :cond_0

    .line 41
    check-cast p1, Lo/mT;

    invoke-virtual {p1}, Lo/mT;->toJSONString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lo/mT;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0

    .line 43
    :cond_0
    new-instance v0, Lo/mT;

    invoke-direct {v0, p0, p1}, Lo/mT;-><init>(Lo/aho;Lo/ahp;)V

    .line 44
    invoke-virtual {v0}, Lo/mT;->toJSONString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lo/mT;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;[B)[B
    .locals 1

    .line 173
    invoke-virtual {p0, p1}, Lo/mT;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 174
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 175
    check-cast p1, [B

    check-cast p1, [B

    return-object p1

    .line 176
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 178
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

.method public e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;
    .locals 2

    .line 120
    :try_start_0
    instance-of v0, p2, Lcom/netflix/android/org/json/JSONObject;

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Lo/mT;

    iget-object v1, p0, Lo/mT;->b:Lo/aho;

    check-cast p2, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0, v1, p2}, Lo/mT;-><init>(Lo/aho;Lcom/netflix/android/org/json/JSONObject;)V

    goto :goto_0

    .line 123
    :cond_0
    instance-of v0, p2, Lcom/netflix/android/org/json/JSONArray;

    if-eqz v0, :cond_1

    .line 124
    new-instance v0, Lo/mL;

    iget-object v1, p0, Lo/mT;->b:Lo/aho;

    check-cast p2, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v0, v1, p2}, Lo/mL;-><init>(Lo/aho;Lcom/netflix/android/org/json/JSONArray;)V
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 131
    :goto_0
    invoke-super {p0, p1, v0}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 129
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported JSON object or array representation."

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public e(Ljava/lang/String;)[B
    .locals 3

    .line 143
    invoke-virtual {p0, p1}, Lo/mT;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 144
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 145
    check-cast v0, [B

    check-cast v0, [B

    return-object v0

    .line 146
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 148
    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lo/aik;->b(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 153
    :catch_0
    :cond_1
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MslObject["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lo/mQ;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] is not binary data."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 7

    const-string v0, "Error encoding MSL object as JSON."

    .line 192
    :try_start_0
    new-instance v1, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 193
    invoke-virtual {p0}, Lo/mT;->a()Ljava/util/Set;

    move-result-object v2

    .line 194
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 195
    invoke-virtual {p0, v3}, Lo/mT;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 196
    instance-of v5, v4, [B

    if-eqz v5, :cond_0

    .line 197
    check-cast v4, [B

    check-cast v4, [B

    invoke-static {v4}, Lo/aik;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_0

    .line 198
    :cond_0
    instance-of v5, v4, Lo/mT;

    if-nez v5, :cond_5

    instance-of v5, v4, Lo/mL;

    if-eqz v5, :cond_1

    goto :goto_1

    .line 200
    :cond_1
    instance-of v5, v4, Lo/ahp;

    if-eqz v5, :cond_2

    .line 201
    new-instance v5, Lo/mT;

    iget-object v6, p0, Lo/mT;->b:Lo/aho;

    check-cast v4, Lo/ahp;

    invoke-direct {v5, v6, v4}, Lo/mT;-><init>(Lo/aho;Lo/ahp;)V

    .line 202
    invoke-virtual {v1, v3, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_0

    .line 203
    :cond_2
    instance-of v5, v4, Lo/ahm;

    if-eqz v5, :cond_3

    .line 204
    new-instance v5, Lo/mL;

    iget-object v6, p0, Lo/mT;->b:Lo/aho;

    check-cast v4, Lo/ahm;

    invoke-direct {v5, v6, v4}, Lo/mL;-><init>(Lo/aho;Lo/ahm;)V

    .line 205
    invoke-virtual {v1, v3, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_0

    .line 206
    :cond_3
    instance-of v5, v4, Lo/ahr;

    if-eqz v5, :cond_4

    .line 207
    check-cast v4, Lo/ahr;

    iget-object v5, p0, Lo/mT;->b:Lo/aho;

    sget-object v6, Lo/ahn;->a:Lo/ahn;

    invoke-interface {v4, v5, v6}, Lo/ahr;->a(Lo/aho;Lo/ahn;)[B

    move-result-object v4

    .line 208
    new-instance v5, Lo/mT;

    iget-object v6, p0, Lo/mT;->b:Lo/aho;

    invoke-direct {v5, v6, v4}, Lo/mT;-><init>(Lo/aho;[B)V

    .line 209
    invoke-virtual {v1, v3, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_0

    .line 211
    :cond_4
    invoke-virtual {v1, v3, v4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_0

    .line 199
    :cond_5
    :goto_1
    invoke-virtual {v1, v3, v4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_0

    .line 214
    :cond_6
    invoke-virtual {v1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 220
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    invoke-direct {v2, v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 218
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    invoke-direct {v2, v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v1

    .line 216
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    invoke-direct {v2, v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 229
    invoke-virtual {p0}, Lo/mT;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
