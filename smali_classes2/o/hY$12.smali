.class Lo/hY$12;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/hY;->a(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lo/hY;


# direct methods
.method constructor <init>(Lo/hY;Ljava/lang/String;Z)V
    .locals 0

    .line 934
    iput-object p1, p0, Lo/hY$12;->c:Lo/hY;

    iput-object p2, p0, Lo/hY$12;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lo/hY$12;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 937
    iget-object v0, p0, Lo/hY$12;->c:Lo/hY;

    invoke-static {v0}, Lo/hY;->d(Lo/hY;)Lo/FontRequest;

    move-result-object v0

    invoke-virtual {v0}, Lo/FontRequest;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lo/hY$12;->c:Lo/hY;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo/hY$12;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Lo/hY;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 939
    :cond_0
    iget-boolean v0, p0, Lo/hY$12;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/hY$12;->c:Lo/hY;

    invoke-virtual {v0}, Lo/hY;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 942
    iget-object v0, p0, Lo/hY$12;->c:Lo/hY;

    invoke-virtual {v0, v1}, Lo/hY;->c(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
