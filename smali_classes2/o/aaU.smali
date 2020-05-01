.class public final Lo/aaU;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aaU$TaskDescription;,
        Lo/aaU$Activity;
    }
.end annotation


# static fields
.field public static final d:Lo/aaU$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/aaU$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/aaU$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/aaU;->d:Lo/aaU$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c()Ljava/lang/String;
    .locals 6

    .line 66
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "attributions.json"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "Lookup.get(Context::clas\u2026open(\"attributions.json\")"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Throwable;

    :try_start_0
    move-object v3, v1

    check-cast v3, Ljava/io/InputStream;

    .line 68
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    const/4 v4, 0x0

    .line 69
    array-length v5, v3

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    .line 70
    new-instance v0, Ljava/lang/String;

    sget-object v4, Lo/anm;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 67
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v1, v0}, Lo/aly;->e(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public final b(Z)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lo/aaU$TaskDescription;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {p0}, Lo/aaU;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 29
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    .line 30
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "display"

    .line 31
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "yes"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lo/anv;->e(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    const-string v6, "licenseType"

    if-eqz v5, :cond_1

    .line 37
    :try_start_1
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object v11, v5

    .line 39
    new-instance v5, Lo/aaU$TaskDescription;

    const-string v6, "id"

    .line 40
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v6, "entry.getString(ID)"

    invoke-static {v7, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "name"

    .line 41
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v6, "entry.getString(NAME)"

    invoke-static {v8, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "copyright"

    .line 42
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "entry.optString(COPYRIGHT)"

    invoke-static {v9, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "website"

    .line 43
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v6, "entry.optString(WEBSITE)"

    invoke-static {v10, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "licenseText"

    .line 45
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v6, v5

    .line 39
    invoke-direct/range {v6 .. v12}, Lo/aaU$TaskDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :catch_0
    sget-object p1, Lo/aaU;->d:Lo/aaU$Activity;

    check-cast p1, Lo/MessagePdu;

    goto :goto_3

    .line 50
    :catch_1
    sget-object p1, Lo/aaU;->d:Lo/aaU$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 61
    :cond_2
    :goto_3
    check-cast v0, Ljava/util/List;

    return-object v0
.end method
