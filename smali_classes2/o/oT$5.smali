.class Lo/oT$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/oR;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/oT;->a(Lo/or;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lo/oR;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lo/oR;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lo/or;

.field final synthetic f:Lo/oT;

.field final synthetic g:Ljava/lang/String;

.field final synthetic i:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;


# direct methods
.method constructor <init>(Lo/oT;Ljava/lang/String;Lo/oR;Lo/or;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lo/oT$5;->f:Lo/oT;

    iput-object p2, p0, Lo/oT$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lo/oT$5;->b:Lo/oR;

    iput-object p4, p0, Lo/oT$5;->e:Lo/or;

    iput-object p5, p0, Lo/oT$5;->d:Ljava/lang/String;

    iput-object p6, p0, Lo/oT$5;->c:Ljava/lang/String;

    iput-object p7, p0, Lo/oT$5;->i:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    iput-object p8, p0, Lo/oT$5;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/sE;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 9

    .line 138
    iget-object v0, p0, Lo/oT$5;->f:Lo/oT;

    invoke-static {v0}, Lo/oT;->b(Lo/oT;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lo/oT$5;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lo/oT$5;->f:Lo/oT;

    invoke-static {v0}, Lo/oT;->c(Lo/oT;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lo/oT$5;->a:Ljava/lang/String;

    iget-object v2, p0, Lo/oT$5;->b:Lo/oR;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 142
    iget-object p2, p0, Lo/oT$5;->f:Lo/oT;

    invoke-static {p2}, Lo/oT;->e(Lo/oT;)Lo/pM;

    move-result-object v0

    iget-object v1, p0, Lo/oT$5;->a:Ljava/lang/String;

    iget-object p2, p0, Lo/oT$5;->e:Lo/or;

    .line 144
    invoke-interface {p2}, Lo/or;->e()Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Lo/oT$5;->e:Lo/or;

    .line 145
    invoke-interface {p2}, Lo/or;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lo/oT$5;->d:Ljava/lang/String;

    iget-object v5, p0, Lo/oT$5;->c:Ljava/lang/String;

    iget-object v6, p0, Lo/oT$5;->i:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    new-instance v8, Lo/oT$5$2;

    invoke-direct {v8, p0}, Lo/oT$5$2;-><init>(Lo/oT$5;)V

    move-object v7, p1

    .line 142
    invoke-virtual/range {v0 .. v8}, Lo/pM;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lo/sE;Lo/pS;)V

    goto :goto_0

    .line 164
    :cond_0
    iget-object p1, p0, Lo/oT$5;->f:Lo/oT;

    invoke-static {p1}, Lo/oT;->a(Lo/oT;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lo/oT$5$4;

    invoke-direct {v0, p0, p2}, Lo/oT$5$4;-><init>(Lo/oT$5;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
