.class public Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;
.super Lo/jC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Lo/jC;-><init>()V

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;->j:Lorg/json/JSONObject;

    const-string v1, "event"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "nf_mdxLogblob"

    const-string v1, "MdxLogblob"

    .line 61
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Lo/jC;-><init>()V

    .line 67
    :try_start_0
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;->g:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    .line 68
    iget-object p3, p0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;->j:Lorg/json/JSONObject;

    const-string v0, "event"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    iget-object p1, p0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;->j:Lorg/json/JSONObject;

    const-string p3, "errormsg"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "nf_mdxLogblob"

    const-string p3, "MdxLogblob"

    .line 71
    invoke-static {p2, p3, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->d:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
