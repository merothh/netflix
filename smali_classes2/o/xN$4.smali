.class Lo/xN$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/xN;->c(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lo/cq;Lo/cq;Lo/cq;Lo/cq;Lo/cq;Lo/cq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/cq;

.field final synthetic b:Lo/cq;

.field final synthetic c:Lo/hW;

.field final synthetic d:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

.field final synthetic e:Lo/cq;

.field final synthetic f:Lo/cq;

.field final synthetic g:Lo/cq;

.field final synthetic h:Lo/xN;

.field final synthetic i:Lo/cq;


# direct methods
.method constructor <init>(Lo/xN;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lo/hW;Lo/cq;Lo/cq;Lo/cq;Lo/cq;Lo/cq;Lo/cq;)V
    .locals 0

    .line 673
    iput-object p1, p0, Lo/xN$4;->h:Lo/xN;

    iput-object p2, p0, Lo/xN$4;->d:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    iput-object p3, p0, Lo/xN$4;->c:Lo/hW;

    iput-object p4, p0, Lo/xN$4;->e:Lo/cq;

    iput-object p5, p0, Lo/xN$4;->a:Lo/cq;

    iput-object p6, p0, Lo/xN$4;->b:Lo/cq;

    iput-object p7, p0, Lo/xN$4;->f:Lo/cq;

    iput-object p8, p0, Lo/xN$4;->i:Lo/cq;

    iput-object p9, p0, Lo/xN$4;->g:Lo/cq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 676
    iget-object v0, p0, Lo/xN$4;->d:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->c(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/xN$4;->h:Lo/xN;

    invoke-static {v0}, Lo/xN;->b(Lo/xN;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 677
    iget-object v0, p0, Lo/xN$4;->c:Lo/hW;

    new-instance v7, Lo/CertificatesEntryRef;

    const/4 v2, 0x0

    const/16 v3, 0x32

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v4, ""

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lo/CertificatesEntryRef;-><init>(IILjava/lang/String;ZZ)V

    iget-object v1, p0, Lo/xN$4;->e:Lo/cq;

    invoke-interface {v0, v7, v1}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    .line 680
    :cond_0
    iget-object v0, p0, Lo/xN$4;->d:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->e(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lo/xN$4;->c:Lo/hW;

    iget-object v3, p0, Lo/xN$4;->a:Lo/cq;

    invoke-interface {v0, v2, v1, v3}, Lo/hW;->c(IZLo/ci;)V

    .line 684
    :cond_1
    iget-object v0, p0, Lo/xN$4;->d:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->h(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 685
    iget-object v0, p0, Lo/xN$4;->c:Lo/hW;

    iget-object v4, p0, Lo/xN$4;->a:Lo/cq;

    invoke-interface {v0, v2, v1, v3, v4}, Lo/hW;->d(IZZLo/ci;)V

    .line 688
    :cond_2
    iget-object v0, p0, Lo/xN$4;->d:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->i(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 689
    iget-object v0, p0, Lo/xN$4;->c:Lo/hW;

    iget-object v4, p0, Lo/xN$4;->b:Lo/cq;

    invoke-interface {v0, v2, v1, v3, v4}, Lo/hW;->e(IZZLo/ci;)V

    .line 692
    :cond_3
    iget-object v0, p0, Lo/xN$4;->d:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->d(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 693
    iget-object v4, p0, Lo/xN$4;->c:Lo/hW;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lo/xN$4;->h:Lo/xN;

    invoke-static {v0}, Lo/xN;->d(Lo/xN;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/xN;->c(Landroid/content/Context;)I

    move-result v7

    const/4 v8, 0x0

    iget-object v9, p0, Lo/xN$4;->f:Lo/cq;

    invoke-interface/range {v4 .. v9}, Lo/hW;->a(Ljava/lang/String;IIZLo/ci;)V

    .line 696
    :cond_4
    iget-object v0, p0, Lo/xN$4;->d:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->b(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 697
    iget-object v4, p0, Lo/xN$4;->c:Lo/hW;

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lo/xN$4;->h:Lo/xN;

    invoke-static {v0}, Lo/xN;->d(Lo/xN;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/xN;->c(Landroid/content/Context;)I

    move-result v7

    const/4 v8, 0x0

    iget-object v9, p0, Lo/xN$4;->i:Lo/cq;

    invoke-interface/range {v4 .. v9}, Lo/hW;->a(Ljava/lang/String;IIZLo/ci;)V

    .line 700
    :cond_5
    iget-object v0, p0, Lo/xN$4;->d:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->a(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 701
    iget-object v0, p0, Lo/xN$4;->c:Lo/hW;

    iget-object v1, p0, Lo/xN$4;->h:Lo/xN;

    invoke-static {v1}, Lo/xN;->d(Lo/xN;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/xN;->e(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lo/xN$4;->g:Lo/cq;

    invoke-interface {v0, v1, v3, v2}, Lo/hW;->d(IZLo/ci;)V

    :cond_6
    return-void
.end method
