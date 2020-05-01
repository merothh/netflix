.class Lo/oh$StateListAnimator;
.super Lo/jC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/oh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final a:Z

.field final synthetic e:Lo/oh;


# direct methods
.method constructor <init>(Lo/oh;Z)V
    .locals 0

    .line 172
    iput-object p1, p0, Lo/oh$StateListAnimator;->e:Lo/oh;

    invoke-direct {p0}, Lo/jC;-><init>()V

    .line 173
    iput-boolean p2, p0, Lo/oh$StateListAnimator;->a:Z

    return-void
.end method


# virtual methods
.method b(Lo/oq;Lo/ok;JJJJLcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)V
    .locals 3

    .line 194
    iget-object v0, p0, Lo/oh$StateListAnimator;->j:Lorg/json/JSONObject;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->c:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "offlinedlreport"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    iget-object v0, p0, Lo/oh$StateListAnimator;->j:Lorg/json/JSONObject;

    iget-object v1, p1, Lo/oq;->b:Ljava/lang/String;

    const-string v2, "oxid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    iget-object v0, p0, Lo/oh$StateListAnimator;->j:Lorg/json/JSONObject;

    iget-object v1, p1, Lo/oq;->d:Ljava/lang/String;

    const-string v2, "dxid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    iget-object v0, p0, Lo/oh$StateListAnimator;->j:Lorg/json/JSONObject;

    const-string v1, "downloadstarttime"

    invoke-virtual {v0, v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 198
    iget-object p3, p0, Lo/oh$StateListAnimator;->j:Lorg/json/JSONObject;

    const-string p4, "startbyteoffset"

    invoke-virtual {p3, p4, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 199
    iget-object p3, p0, Lo/oh$StateListAnimator;->j:Lorg/json/JSONObject;

    iget-object p4, p1, Lo/oq;->a:Ljava/lang/String;

    const-string p5, "playbackcontextid"

    invoke-virtual {p3, p5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    iget-object p3, p0, Lo/oh$StateListAnimator;->j:Lorg/json/JSONObject;

    iget-wide p4, p2, Lo/ok;->a:J

    const-string p2, "cdnid"

    invoke-virtual {p3, p2, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 201
    iget-object p2, p0, Lo/oh$StateListAnimator;->j:Lorg/json/JSONObject;

    iget-object p1, p1, Lo/oq;->c:Ljava/lang/String;

    const-string p3, "dlid"

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    iget-object p1, p0, Lo/oh$StateListAnimator;->j:Lorg/json/JSONObject;

    const-string p2, "bytes"

    invoke-virtual {p1, p2, p9, p10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 203
    iget-object p1, p0, Lo/oh$StateListAnimator;->j:Lorg/json/JSONObject;

    const-string p2, "duration"

    invoke-virtual {p1, p2, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 204
    iget-object p1, p0, Lo/oh$StateListAnimator;->j:Lorg/json/JSONObject;

    iget-object p2, p0, Lo/oh$StateListAnimator;->e:Lo/oh;

    invoke-static {p2}, Lo/oh;->d(Lo/oh;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const-string p3, "dlFilePath"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    iget-object p1, p0, Lo/oh$StateListAnimator;->j:Lorg/json/JSONObject;

    iget-object p2, p0, Lo/oh$StateListAnimator;->e:Lo/oh;

    invoke-static {p2}, Lo/oh;->a(Lo/oh;)J

    move-result-wide p2

    const-string p4, "fileSizeAtStart"

    invoke-virtual {p1, p4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 206
    iget-object p1, p0, Lo/oh$StateListAnimator;->j:Lorg/json/JSONObject;

    iget-object p2, p0, Lo/oh$StateListAnimator;->e:Lo/oh;

    invoke-static {p2}, Lo/oh;->d(Lo/oh;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p2

    const-string p4, "fileSizeNow"

    invoke-virtual {p1, p4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 207
    iget-object p1, p0, Lo/oh$StateListAnimator;->j:Lorg/json/JSONObject;

    iget-object p2, p0, Lo/oh$StateListAnimator;->e:Lo/oh;

    invoke-static {p2}, Lo/oh;->c(Lo/oh;)J

    move-result-wide p2

    const-string p4, "birthTime"

    invoke-virtual {p1, p4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 208
    iget-object p1, p0, Lo/oh$StateListAnimator;->j:Lorg/json/JSONObject;

    invoke-static {p1, p11}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->a(Lorg/json/JSONObject;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)Lorg/json/JSONObject;

    return-void
.end method

.method public c()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lo/oh$StateListAnimator;->a:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 183
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->c:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
