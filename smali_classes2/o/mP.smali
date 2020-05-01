.class public Lo/mP;
.super Lo/aht;
.source ""


# instance fields
.field private final b:Lcom/netflix/android/org/json/JSONTokener;

.field private final c:Lo/aho;


# direct methods
.method public constructor <init>(Lo/aho;Ljava/io/InputStream;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lo/aht;-><init>()V

    .line 40
    iput-object p1, p0, Lo/mP;->c:Lo/aho;

    .line 41
    new-instance p1, Ljava/io/InputStreamReader;

    sget-object v0, Lcom/netflix/msl/MslConstants;->b:Ljava/nio/charset/Charset;

    invoke-direct {p1, p2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 42
    new-instance p2, Lcom/netflix/android/org/json/JSONTokener;

    invoke-direct {p2, p1}, Lcom/netflix/android/org/json/JSONTokener;-><init>(Ljava/io/Reader;)V

    iput-object p2, p0, Lo/mP;->b:Lcom/netflix/android/org/json/JSONTokener;

    return-void
.end method


# virtual methods
.method protected b(I)Lo/ahp;
    .locals 2

    .line 51
    :try_start_0
    iget-object p1, p0, Lo/mP;->b:Lcom/netflix/android/org/json/JSONTokener;

    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONTokener;->more()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 53
    :cond_0
    iget-object p1, p0, Lo/mP;->b:Lcom/netflix/android/org/json/JSONTokener;

    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    .line 54
    instance-of v0, p1, Lcom/netflix/android/org/json/JSONObject;

    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Lo/mT;

    iget-object v1, p0, Lo/mP;->c:Lo/aho;

    check-cast p1, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0, v1, p1}, Lo/mT;-><init>(Lo/aho;Lcom/netflix/android/org/json/JSONObject;)V

    return-object v0

    .line 56
    :cond_1
    new-instance p1, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "JSON value is not a JSON object."

    invoke-direct {p1, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 58
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    const-string v1, "JSON syntax error."

    invoke-direct {v0, v1, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
