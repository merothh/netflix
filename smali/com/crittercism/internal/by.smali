.class public final Lcom/crittercism/internal/by;
.super Lcom/crittercism/internal/bo;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/crittercism/internal/bo;-><init>(Ljava/io/File;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/crittercism/internal/by;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-super {p0}, Lcom/crittercism/internal/bo;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0
.end method
