.class public Lo/ahj;
.super Lo/aht;
.source ""


# instance fields
.field private final a:Lo/aho;

.field private final e:Lorg/json/JSONTokener;


# direct methods
.method public constructor <init>(Lo/aho;Ljava/io/InputStream;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lo/aht;-><init>()V

    .line 46
    iput-object p1, p0, Lo/ahj;->a:Lo/aho;

    .line 66
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sget-object v0, Lcom/netflix/msl/MslConstants;->b:Ljava/nio/charset/Charset;

    if-ne p1, v0, :cond_0

    .line 68
    new-instance p1, Lo/ahv;

    invoke-direct {p1, p2}, Lo/ahv;-><init>(Ljava/io/InputStream;)V

    .line 69
    new-instance p2, Lorg/json/JSONTokener;

    invoke-direct {p2, p1}, Lorg/json/JSONTokener;-><init>(Ljava/io/Reader;)V

    iput-object p2, p0, Lo/ahj;->e:Lorg/json/JSONTokener;

    return-void

    .line 67
    :cond_0
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Charset "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/netflix/msl/MslConstants;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " unsupported."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected b(I)Lo/ahp;
    .locals 2

    .line 78
    :try_start_0
    iget-object p1, p0, Lo/ahj;->e:Lorg/json/JSONTokener;

    invoke-virtual {p1}, Lorg/json/JSONTokener;->more()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 80
    :cond_0
    iget-object p1, p0, Lo/ahj;->e:Lorg/json/JSONTokener;

    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    .line 81
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Lo/ahk;

    iget-object v1, p0, Lo/ahj;->a:Lo/aho;

    check-cast p1, Lorg/json/JSONObject;

    invoke-direct {v0, v1, p1}, Lo/ahk;-><init>(Lo/aho;Lorg/json/JSONObject;)V

    return-object v0

    .line 83
    :cond_1
    new-instance p1, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "JSON value is not a JSON object."

    invoke-direct {p1, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 85
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    const-string v1, "JSON syntax error."

    invoke-direct {v0, v1, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
