.class public Lo/mL;
.super Lo/ahm;
.source ""

# interfaces
.implements Lcom/netflix/android/org/json/JSONString;


# static fields
.field private static final d:Ljava/nio/charset/Charset;


# instance fields
.field private final c:Lo/aho;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 28
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lo/mL;->d:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lo/aho;Lcom/netflix/android/org/json/JSONArray;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Lo/ahm;-><init>()V

    .line 56
    iput-object p1, p0, Lo/mL;->c:Lo/aho;

    const/4 p1, 0x0

    .line 58
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, -0x1

    .line 59
    invoke-virtual {p2, p1}, Lcom/netflix/android/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lo/mL;->a(ILjava/lang/Object;)Lo/ahm;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 63
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Invalid MSL array encoding."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 61
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Invalid JSON array encoding."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Lo/aho;Lo/ahm;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lo/ahm;-><init>()V

    .line 39
    iput-object p1, p0, Lo/mL;->c:Lo/aho;

    const/4 p1, 0x0

    .line 41
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lo/ahm;->c()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 42
    invoke-virtual {p2, p1}, Lo/ahm;->c(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lo/mL;->a(ILjava/lang/Object;)Lo/ahm;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 44
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Invalid MSL array encoding."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public a(ILjava/lang/Object;)Lo/ahm;
    .locals 2

    .line 95
    :try_start_0
    instance-of v0, p2, Lcom/netflix/android/org/json/JSONObject;

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lo/mT;

    iget-object v1, p0, Lo/mL;->c:Lo/aho;

    check-cast p2, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0, v1, p2}, Lo/mT;-><init>(Lo/aho;Lcom/netflix/android/org/json/JSONObject;)V

    goto :goto_0

    .line 98
    :cond_0
    instance-of v0, p2, Lcom/netflix/android/org/json/JSONArray;

    if-eqz v0, :cond_1

    .line 99
    new-instance v0, Lo/mL;

    iget-object v1, p0, Lo/mL;->c:Lo/aho;

    check-cast p2, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v0, v1, p2}, Lo/mL;-><init>(Lo/aho;Lcom/netflix/android/org/json/JSONArray;)V
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 106
    :goto_0
    invoke-super {p0, p1, v0}, Lo/ahm;->a(ILjava/lang/Object;)Lo/ahm;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 104
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported JSON object or array representation."

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public b(I)[B
    .locals 3

    .line 118
    invoke-virtual {p0, p1}, Lo/mL;->e(I)Ljava/lang/Object;

    move-result-object v0

    .line 119
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 120
    check-cast v0, [B

    check-cast v0, [B

    return-object v0

    .line 121
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 123
    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lo/aik;->b(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 128
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

    .line 144
    invoke-virtual {p0, p1}, Lo/mL;->c(I)Ljava/lang/Object;

    move-result-object p1

    .line 145
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 146
    check-cast p1, [B

    check-cast p1, [B

    return-object p1

    .line 147
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 149
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

.method public toJSONString()Ljava/lang/String;
    .locals 7

    const-string v0, "Error encoding MSL object as JSON."

    .line 163
    :try_start_0
    new-instance v1, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 164
    invoke-virtual {p0}, Lo/mL;->c()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    .line 166
    invoke-virtual {p0, v3}, Lo/mL;->c(I)Ljava/lang/Object;

    move-result-object v4

    .line 167
    instance-of v5, v4, [B

    if-eqz v5, :cond_0

    .line 168
    check-cast v4, [B

    check-cast v4, [B

    invoke-static {v4}, Lo/aik;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/netflix/android/org/json/JSONArray;->put(ILjava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto :goto_2

    .line 169
    :cond_0
    instance-of v5, v4, Lo/mT;

    if-nez v5, :cond_5

    instance-of v5, v4, Lo/mL;

    if-eqz v5, :cond_1

    goto :goto_1

    .line 171
    :cond_1
    instance-of v5, v4, Lo/ahp;

    if-eqz v5, :cond_2

    .line 172
    new-instance v5, Lo/mT;

    iget-object v6, p0, Lo/mL;->c:Lo/aho;

    check-cast v4, Lo/ahp;

    invoke-direct {v5, v6, v4}, Lo/mT;-><init>(Lo/aho;Lo/ahp;)V

    .line 173
    invoke-virtual {v1, v3, v5}, Lcom/netflix/android/org/json/JSONArray;->put(ILjava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto :goto_2

    .line 174
    :cond_2
    instance-of v5, v4, Lo/ahm;

    if-eqz v5, :cond_3

    .line 175
    new-instance v5, Lo/mL;

    iget-object v6, p0, Lo/mL;->c:Lo/aho;

    check-cast v4, Lo/ahm;

    invoke-direct {v5, v6, v4}, Lo/mL;-><init>(Lo/aho;Lo/ahm;)V

    .line 176
    invoke-virtual {v1, v3, v5}, Lcom/netflix/android/org/json/JSONArray;->put(ILjava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto :goto_2

    .line 177
    :cond_3
    instance-of v5, v4, Lo/ahr;

    if-eqz v5, :cond_4

    .line 178
    check-cast v4, Lo/ahr;

    iget-object v5, p0, Lo/mL;->c:Lo/aho;

    sget-object v6, Lo/ahn;->a:Lo/ahn;

    invoke-interface {v4, v5, v6}, Lo/ahr;->a(Lo/aho;Lo/ahn;)[B

    move-result-object v4

    .line 179
    new-instance v5, Lo/mT;

    iget-object v6, p0, Lo/mL;->c:Lo/aho;

    invoke-direct {v5, v6, v4}, Lo/mT;-><init>(Lo/aho;[B)V

    .line 180
    invoke-virtual {v1, v3, v5}, Lcom/netflix/android/org/json/JSONArray;->put(ILjava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto :goto_2

    .line 182
    :cond_4
    invoke-virtual {v1, v3, v4}, Lcom/netflix/android/org/json/JSONArray;->put(ILjava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto :goto_2

    .line 170
    :cond_5
    :goto_1
    invoke-virtual {v1, v3, v4}, Lcom/netflix/android/org/json/JSONArray;->put(ILjava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    :cond_6
    invoke-virtual {v1}, Lcom/netflix/android/org/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 191
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    invoke-direct {v2, v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 189
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    invoke-direct {v2, v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v1

    .line 187
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    invoke-direct {v2, v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 200
    invoke-virtual {p0}, Lo/mL;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
