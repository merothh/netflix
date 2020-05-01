.class final Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;
.super Ljava/lang/Object;
.source "CastPrefetchMessage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CastPrefetchMessage"


# instance fields
.field final BLOCKSIZE_IN_BYTES:I

.field final PROP_CIPHERTEXT:Ljava/lang/String;

.field final PROP_CONTROLLER_ESN:Ljava/lang/String;

.field final PROP_EVENLOP_ID:Ljava/lang/String;

.field final PROP_IV:Ljava/lang/String;

.field final PROP_KEY_ID:Ljava/lang/String;

.field final PROP_MOVIES_ARRAY:Ljava/lang/String;

.field final PROP_MOVIE_ID:Ljava/lang/String;

.field final PROP_PRIORITY:Ljava/lang/String;

.field final PROP_TAGLENGTH:Ljava/lang/String;

.field final TAGLENGHT_IN_BIT:I

.field final evenlopeId:B

.field private mMessageJSON:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .prologue
    const/16 v8, 0x10

    const/16 v7, 0x80

    const/4 v1, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string/jumbo v0, "movieId"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->PROP_MOVIE_ID:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "priority"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->PROP_PRIORITY:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "movies"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->PROP_MOVIES_ARRAY:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "controllerESN"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->PROP_CONTROLLER_ESN:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "evenlopeId"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->PROP_EVENLOP_ID:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "keyId"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->PROP_KEY_ID:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "iv"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->PROP_IV:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "taglength"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->PROP_TAGLENGTH:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "ciphertext"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->PROP_CIPHERTEXT:Ljava/lang/String;

    .line 40
    iput v8, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->BLOCKSIZE_IN_BYTES:I

    .line 41
    iput v7, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->TAGLENGHT_IN_BIT:I

    .line 42
    iput-byte v1, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->evenlopeId:B

    .line 47
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 49
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 51
    :try_start_0
    const-string/jumbo v4, "movieId"

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "priority"

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    const-string/jumbo v4, "CastPrefetchMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ", skip "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "has exception, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 62
    :try_start_1
    const-string/jumbo v1, "movies"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "controllerESN"

    .line 63
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    new-array v1, v8, [B

    .line 73
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 74
    invoke-virtual {v2, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 76
    new-instance v2, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-direct {v2, v7, v1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 78
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v4, "AES"

    invoke-direct {v3, p4, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 81
    :try_start_2
    const-string/jumbo v4, "AES/GCM/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_a

    move-result-object v4

    .line 86
    if-nez v4, :cond_3

    .line 87
    const-string/jumbo v0, "CastPrefetchMessage"

    const-string/jumbo v1, "cipher is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_2
    :goto_1
    return-void

    .line 64
    :catch_1
    move-exception v0

    .line 65
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    const-string/jumbo v1, "CastPrefetchMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception builing prefetchHints "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 82
    :catch_2
    move-exception v0

    .line 83
    :goto_2
    const-string/jumbo v0, "CastPrefetchMessage"

    const-string/jumbo v1, "NoSuchAlgorithmException or NoSuchPaddingException for GCM encryption"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 91
    :cond_3
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 93
    const/4 v5, 0x1

    :try_start_3
    invoke-virtual {v4, v5, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 94
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 95
    invoke-static {v0}, Lcom/netflix/mediaclient/util/Base64;->encodeBytes([B)Ljava/lang/String;
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 115
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->mMessageJSON:Lorg/json/JSONObject;

    .line 117
    :try_start_4
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->mMessageJSON:Lorg/json/JSONObject;

    const-string/jumbo v3, "evenlopeId"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "keyId"

    .line 118
    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "iv"

    .line 119
    invoke-static {v1}, Lcom/netflix/mediaclient/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "taglength"

    const/16 v3, 0x80

    .line 120
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "ciphertext"

    .line 121
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_1

    .line 122
    :catch_3
    move-exception v0

    .line 123
    :goto_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    const-string/jumbo v1, "CastPrefetchMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "construct prefetch message has exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 96
    :catch_4
    move-exception v0

    .line 100
    :goto_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    const-string/jumbo v1, "CastPrefetchMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "encryption exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 104
    :catch_5
    move-exception v0

    .line 105
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    const-string/jumbo v1, "CastPrefetchMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Base64 exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 122
    :catch_6
    move-exception v0

    goto :goto_3

    .line 96
    :catch_7
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v0

    goto :goto_4

    :catch_9
    move-exception v0

    goto :goto_4

    .line 82
    :catch_a
    move-exception v0

    goto/16 :goto_2
.end method


# virtual methods
.method getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->mMessageJSON:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->mMessageJSON:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
