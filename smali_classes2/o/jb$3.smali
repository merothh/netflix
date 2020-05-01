.class Lo/jb$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/jb;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lorg/json/JSONObject;

.field final synthetic d:Lorg/json/JSONObject;

.field final synthetic e:Lo/jb;


# direct methods
.method constructor <init>(Lo/jb;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lo/jb$3;->e:Lo/jb;

    iput-object p2, p0, Lo/jb$3;->b:Lorg/json/JSONObject;

    iput-object p3, p0, Lo/jb$3;->a:Lorg/json/JSONObject;

    iput-object p4, p0, Lo/jb$3;->c:Lorg/json/JSONObject;

    iput-object p5, p0, Lo/jb$3;->d:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 229
    new-instance v9, Lo/jO;

    iget-object v0, p0, Lo/jb$3;->e:Lo/jb;

    invoke-static {v0}, Lo/jb;->b(Lo/jb;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lo/jb$3;->e:Lo/jb;

    invoke-static {v0}, Lo/jb;->d(Lo/jb;)Lo/cz;

    move-result-object v2

    iget-object v0, p0, Lo/jb$3;->e:Lo/jb;

    invoke-static {v0}, Lo/jb;->e(Lo/jb;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v3

    iget-object v0, p0, Lo/jb$3;->e:Lo/jb;

    invoke-static {v0}, Lo/jb;->a(Lo/jb;)Lo/zE;

    move-result-object v4

    iget-object v5, p0, Lo/jb$3;->b:Lorg/json/JSONObject;

    iget-object v6, p0, Lo/jb$3;->a:Lorg/json/JSONObject;

    iget-object v7, p0, Lo/jb$3;->c:Lorg/json/JSONObject;

    iget-object v8, p0, Lo/jb$3;->d:Lorg/json/JSONObject;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lo/jO;-><init>(Landroid/content/Context;Lo/cz;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/zE;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 230
    iget-object v0, p0, Lo/jb$3;->e:Lo/jb;

    invoke-virtual {v0}, Lo/jb;->l()Lo/zS;

    move-result-object v0

    invoke-interface {v0, v9}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    return-void
.end method
