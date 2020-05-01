.class final Lo/px$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/px;->e(Landroid/content/Context;Lo/Af;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Af;

.field final synthetic e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/Af;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lo/px$4;->e:Landroid/content/Context;

    iput-object p2, p0, Lo/px$4;->d:Lo/Af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 43
    const-class v0, Lo/Cn;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Cn;

    iget-object v1, p0, Lo/px$4;->e:Landroid/content/Context;

    invoke-interface {v0, v1}, Lo/Cn;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lo/px$4;->d:Lo/Af;

    new-instance v2, Lo/sZ;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lo/sZ;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-interface {v1, v2}, Lo/Af;->e(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    return-void
.end method
