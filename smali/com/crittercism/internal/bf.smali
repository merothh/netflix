.class public final Lcom/crittercism/internal/bf;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Lorg/json/JSONObject;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crittercism/internal/bf;->a:Z

    const/16 v0, 0xa

    iput v0, p0, Lcom/crittercism/internal/bf;->b:I

    const v0, 0x36ee80

    iput v0, p0, Lcom/crittercism/internal/bf;->c:I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/bf;->d:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    const v3, 0x36ee80

    const/16 v2, 0xa

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/crittercism/internal/bf;->a:Z

    iput v2, p0, Lcom/crittercism/internal/bf;->b:I

    iput v3, p0, Lcom/crittercism/internal/bf;->c:I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/bf;->d:Lorg/json/JSONObject;

    const-string/jumbo v0, "enabled"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/crittercism/internal/bf;->a:Z

    const-string/jumbo v0, "interval"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/crittercism/internal/bf;->b:I

    const-string/jumbo v0, "defaultTimeout"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/crittercism/internal/bf;->c:I

    const-string/jumbo v0, "transactions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/bf;->d:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/crittercism/internal/bf;->d:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/bf;->d:Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/crittercism/internal/bf;
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "com.crittercism.txn.config"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/crittercism/internal/bf;

    invoke-direct {v1}, Lcom/crittercism/internal/bf;-><init>()V

    const-string/jumbo v2, "enabled"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/crittercism/internal/bf;->a:Z

    const-string/jumbo v2, "interval"

    const/16 v3, 0xa

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/crittercism/internal/bf;->b:I

    const-string/jumbo v2, "defaultTimeout"

    const v3, 0x36ee80

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/crittercism/internal/bf;->c:I

    const-string/jumbo v2, "transactions"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, v1, Lcom/crittercism/internal/bf;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/crittercism/internal/bf;->d:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .locals 4

    iget-object v0, p0, Lcom/crittercism/internal/bf;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "timeout"

    iget v2, p0, Lcom/crittercism/internal/bf;->c:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lcom/crittercism/internal/bf;->c:I

    int-to-long v0, v0

    goto :goto_0
.end method
