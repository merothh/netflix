.class public Lo/kQ;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private e:Lo/ku;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lo/kQ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/kQ;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lo/ku;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lo/kQ;->e:Lo/ku;

    .line 33
    iput-object p2, p0, Lo/kQ;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d(Lorg/json/JSONObject;)V
    .locals 6

    .line 37
    iget-object v0, p0, Lo/kQ;->e:Lo/ku;

    if-eqz v0, :cond_5

    .line 38
    invoke-virtual {v0}, Lo/ku;->d()Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lo/kQ;->e:Lo/ku;

    invoke-virtual {v1}, Lo/ku;->a()Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    move-result-object v1

    .line 40
    iget-object v2, p0, Lo/kQ;->e:Lo/ku;

    invoke-virtual {v2}, Lo/ku;->c()Ljava/lang/String;

    move-result-object v2

    .line 41
    iget-object v3, p0, Lo/kQ;->e:Lo/ku;

    invoke-virtual {v3}, Lo/ku;->e()Ljava/lang/String;

    move-result-object v3

    .line 42
    iget-object v4, p0, Lo/kQ;->e:Lo/ku;

    invoke-virtual {v4}, Lo/ku;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "errorcode"

    invoke-virtual {p1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz v1, :cond_1

    .line 48
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "errorsubcode"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    :cond_1
    invoke-static {v2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "errorextcode"

    .line 51
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    :cond_2
    invoke-static {v3}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "errordisplaycode"

    .line 54
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    :cond_3
    invoke-static {v4}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "errordetails"

    .line 57
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    :cond_4
    iget-object v0, p0, Lo/kQ;->a:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 60
    iget-object v0, p0, Lo/kQ;->a:Ljava/lang/String;

    const-string v1, "timeout"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    return-void
.end method
