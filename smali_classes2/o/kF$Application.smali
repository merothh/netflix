.class public Lo/kF$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/kF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Application"
.end annotation


# instance fields
.field final synthetic a:Lo/kF;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/kF;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lo/kF$Application;->a:Lo/kF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/kF;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lo/kF$Application;->a:Lo/kF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p2, p0, Lo/kF$Application;->e:Ljava/lang/String;

    .line 182
    iput-object p3, p0, Lo/kF$Application;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;)Lo/kF$Application;
    .locals 6

    const/4 v0, 0x0

    const-string v1, "mdx_target_extra_info"

    .line 202
    invoke-static {p1, v1, v0}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 210
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 211
    new-instance v2, Lo/kF$Application;

    iget-object v3, p0, Lo/kF$Application;->a:Lo/kF;

    const-string v4, "uuid"

    .line 212
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "fName"

    .line 213
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lo/kF$Application;-><init>(Lo/kF;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "nf_mdxTargetSelector"

    const-string v2, "couldn\'t create json obj for %s"

    .line 216
    invoke-static {p1, v2, v1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    if-nez v0, :cond_1

    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method public d()Lorg/json/JSONObject;
    .locals 4

    .line 186
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "uuid"

    .line 188
    iget-object v2, p0, Lo/kF$Application;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "fName"

    .line 189
    iget-object v2, p0, Lo/kF$Application;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "nf_mdxTargetSelector"

    const-string v3, "could not write target extra"

    .line 191
    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public e(Landroid/content/Context;)V
    .locals 2

    .line 197
    invoke-virtual {p0}, Lo/kF$Application;->d()Lorg/json/JSONObject;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mdx_target_extra_info"

    invoke-static {p1, v1, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
