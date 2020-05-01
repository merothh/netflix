.class public final Lo/WindowManagerPolicyConstants;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Explode;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Ljava/lang/String;

.field private final g:Z

.field private final h:Ljava/lang/CharSequence;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/InputBinding;Lo/DynamicDrawableSpan;Lo/WindowContentFrameStats;)V
    .locals 2

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stepsViewModel"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p3}, Lo/WindowContentFrameStats;->b()Z

    move-result v0

    iput-boolean v0, p0, Lo/WindowManagerPolicyConstants;->b:Z

    .line 17
    invoke-virtual {p3}, Lo/WindowContentFrameStats;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/WindowManagerPolicyConstants;->a:Ljava/lang/String;

    .line 19
    invoke-virtual {p3}, Lo/WindowContentFrameStats;->a()Z

    move-result v0

    iput-boolean v0, p0, Lo/WindowManagerPolicyConstants;->d:Z

    .line 21
    invoke-virtual {p3}, Lo/WindowContentFrameStats;->c()Z

    move-result v0

    iput-boolean v0, p0, Lo/WindowManagerPolicyConstants;->e:Z

    .line 23
    invoke-virtual {p3}, Lo/WindowContentFrameStats;->d()Z

    move-result v0

    iput-boolean v0, p0, Lo/WindowManagerPolicyConstants;->c:Z

    .line 25
    invoke-virtual {p2}, Lo/DynamicDrawableSpan;->b()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lo/WindowManagerPolicyConstants;->h:Ljava/lang/CharSequence;

    .line 27
    invoke-virtual {p3}, Lo/WindowContentFrameStats;->j()Ljava/lang/String;

    move-result-object p2

    const-string p3, "confirmWithContext"

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    iput-object p2, p0, Lo/WindowManagerPolicyConstants;->f:Ljava/lang/String;

    .line 30
    iget-object p2, p0, Lo/WindowManagerPolicyConstants;->f:Ljava/lang/String;

    invoke-static {p2, p3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lo/WindowManagerPolicyConstants;->g:Z

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    .line 34
    iget-boolean v0, p0, Lo/WindowManagerPolicyConstants;->e:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/WindowManagerPolicyConstants;->c:Z

    if-nez v0, :cond_1

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->hF:I

    invoke-virtual {p1, v0}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 35
    :cond_1
    iget-boolean v0, p0, Lo/WindowManagerPolicyConstants;->g:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lo/WindowManagerPolicyConstants;->d:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->eW:I

    invoke-virtual {p1, v0}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 36
    :cond_2
    iget-boolean v0, p0, Lo/WindowManagerPolicyConstants;->g:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->eX:I

    invoke-virtual {p1, v0}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    .line 37
    iget-boolean v0, p0, Lo/WindowManagerPolicyConstants;->d:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->eq:I

    invoke-virtual {p1, v0}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 38
    :cond_4
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->ep:I

    invoke-virtual {p1, v0}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, p2, p3

    const/4 p3, 0x1

    .line 40
    iget-boolean v0, p0, Lo/WindowManagerPolicyConstants;->d:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/WindowManagerPolicyConstants;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 41
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->hO:I

    invoke-virtual {p1, v0}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p1

    .line 42
    iget-object v0, p0, Lo/WindowManagerPolicyConstants;->a:Ljava/lang/String;

    const-string v1, "date"

    invoke-virtual {p1, v1, v0}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 45
    :cond_5
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->ko:I

    invoke-virtual {p1, v0}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    aput-object p1, p2, p3

    .line 32
    invoke-static {p2}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/WindowManagerPolicyConstants;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lo/WindowManagerPolicyConstants;->b:Z

    return v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lo/WindowManagerPolicyConstants;->i:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/WindowManagerPolicyConstants;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/CharSequence;
    .locals 1

    .line 25
    iget-object v0, p0, Lo/WindowManagerPolicyConstants;->h:Ljava/lang/CharSequence;

    return-object v0
.end method
