.class public final Lo/kG;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/kG$Application;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field c:Lo/kG$Application;

.field private d:Lo/kI;

.field private e:Lo/aeM$Application;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Lo/kI;Lo/kG$Application;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lo/kG;->d:Lo/kI;

    .line 32
    iput-object p2, p0, Lo/kG;->c:Lo/kG$Application;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/String;Lo/aeM$Application;IIZLjava/lang/String;)V
    .locals 2

    .line 35
    iget-boolean v0, p0, Lo/kG;->i:Z

    const-string v1, "nf_mdxSwitchTarget"

    if-eqz v0, :cond_0

    const-string v0, "switching already undergoing"

    .line 36
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "current target is not a mdx target"

    .line 40
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lo/kG;->i:Z

    .line 44
    iput-object p2, p0, Lo/kG;->b:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lo/kG;->e:Lo/aeM$Application;

    .line 46
    iput p4, p0, Lo/kG;->a:I

    .line 47
    iput p5, p0, Lo/kG;->g:I

    .line 49
    iget-object p2, p0, Lo/kG;->d:Lo/kI;

    sget-object p3, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;->g:Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;

    invoke-virtual {p3}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lo/kI;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iput-boolean p6, p0, Lo/kG;->h:Z

    .line 51
    iput-object p7, p0, Lo/kG;->f:Ljava/lang/String;

    return-void
.end method

.method public e()V
    .locals 10

    .line 54
    iget-boolean v0, p0, Lo/kG;->i:Z

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lo/kG;->b:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lo/kG;->c:Lo/kG$Application;

    iget-object v1, p0, Lo/kG;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/kG$Application;->c(Ljava/lang/String;)V

    .line 62
    iget-object v2, p0, Lo/kG;->d:Lo/kI;

    iget-object v3, p0, Lo/kG;->b:Ljava/lang/String;

    iget-object v0, p0, Lo/kG;->e:Lo/aeM$Application;

    iget-object v4, v0, Lo/aeM$Application;->c:Ljava/lang/String;

    iget v5, p0, Lo/kG;->g:I

    iget-object v0, p0, Lo/kG;->e:Lo/aeM$Application;

    iget-object v6, v0, Lo/aeM$Application;->a:Ljava/lang/String;

    iget v7, p0, Lo/kG;->a:I

    iget-boolean v8, p0, Lo/kG;->h:Z

    iget-object v9, p0, Lo/kG;->f:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lo/kI;->e(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lo/kG;->i:Z

    return-void
.end method
