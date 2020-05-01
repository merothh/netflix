.class public final Lo/SidePropagation;
.super Lo/ChangeScroll;
.source ""


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/String;

.field private final c:Lo/Cloneable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private final f:Lo/InputBinding;

.field private final g:Lo/Rotate;

.field private final h:Lo/Recolor;

.field private final i:Ljava/lang/String;

.field private final j:Lo/DateTimeKeyListener;

.field private final k:Lo/DateTimeKeyListener;

.field private final m:Lo/DateTimeKeyListener;

.field private final n:Lo/DateTimeKeyListener;

.field private final o:Lo/DateTimeKeyListener;


# direct methods
.method public constructor <init>(Lo/InputBinding;Lo/Rotate;Lo/Recolor;Lo/DateTimeKeyListener;Lo/DateTimeKeyListener;Lo/DateTimeKeyListener;Lo/DateTimeKeyListener;Lo/DateTimeKeyListener;Lo/TextClassifierImpl;Lo/TextClassifierService;)V
    .locals 1

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleData"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupNetworkManager"

    invoke-static {p9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModel"

    invoke-static {p10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p9, p1, p10}, Lo/ChangeScroll;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassifierService;)V

    iput-object p1, p0, Lo/SidePropagation;->f:Lo/InputBinding;

    iput-object p2, p0, Lo/SidePropagation;->g:Lo/Rotate;

    iput-object p3, p0, Lo/SidePropagation;->h:Lo/Recolor;

    iput-object p4, p0, Lo/SidePropagation;->j:Lo/DateTimeKeyListener;

    iput-object p5, p0, Lo/SidePropagation;->o:Lo/DateTimeKeyListener;

    iput-object p6, p0, Lo/SidePropagation;->n:Lo/DateTimeKeyListener;

    iput-object p7, p0, Lo/SidePropagation;->k:Lo/DateTimeKeyListener;

    iput-object p8, p0, Lo/SidePropagation;->m:Lo/DateTimeKeyListener;

    .line 37
    iget-object p1, p0, Lo/SidePropagation;->f:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ji:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/SidePropagation;->b:Ljava/lang/String;

    .line 39
    iget-object p1, p0, Lo/SidePropagation;->f:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->jj:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/SidePropagation;->i:Ljava/lang/String;

    .line 42
    iget-object p1, p0, Lo/SidePropagation;->g:Lo/Rotate;

    invoke-virtual {p1}, Lo/Rotate;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->F:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->A:I

    .line 43
    :goto_0
    iget-object p2, p0, Lo/SidePropagation;->f:Lo/InputBinding;

    invoke-virtual {p2, p1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/SidePropagation;->e:Ljava/lang/String;

    .line 45
    iget-object p1, p0, Lo/SidePropagation;->g:Lo/Rotate;

    invoke-virtual {p1}, Lo/Rotate;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->H:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->C:I

    .line 46
    :goto_1
    iget-object p2, p0, Lo/SidePropagation;->f:Lo/InputBinding;

    invoke-virtual {p2, p1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/SidePropagation;->d:Ljava/util/List;

    .line 48
    iget-object p1, p0, Lo/SidePropagation;->h:Lo/Recolor;

    invoke-virtual {p1}, Lo/Recolor;->e()Lo/Cloneable;

    move-result-object p1

    iput-object p1, p0, Lo/SidePropagation;->c:Lo/Cloneable;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lo/SidePropagation;->a:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/SidePropagation;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lo/SidePropagation;->d:Ljava/util/List;

    return-object v0
.end method

.method public final g()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lo/SidePropagation;->c:Lo/Cloneable;

    return-object v0
.end method

.method public final h()V
    .locals 7

    .line 52
    iget-object v0, p0, Lo/SidePropagation;->g:Lo/Rotate;

    invoke-virtual {v0}, Lo/Rotate;->d()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v2

    iget-object v3, p0, Lo/SidePropagation;->c:Lo/Cloneable;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lo/ChangeScroll;->c(Lo/ChangeScroll;Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;ILjava/lang/Object;)V

    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/SidePropagation;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lo/SidePropagation;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Lo/DateTimeKeyListener;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/SidePropagation;->k:Lo/DateTimeKeyListener;

    return-object v0
.end method

.method public final l()Lo/DateTimeKeyListener;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/SidePropagation;->o:Lo/DateTimeKeyListener;

    return-object v0
.end method

.method public final m()Lo/DateTimeKeyListener;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/SidePropagation;->j:Lo/DateTimeKeyListener;

    return-object v0
.end method

.method public final n()Z
    .locals 4

    .line 57
    iget-object v0, p0, Lo/SidePropagation;->j:Lo/DateTimeKeyListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DateTimeKeyListener;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    .line 63
    iget-object v1, p0, Lo/SidePropagation;->j:Lo/DateTimeKeyListener;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lo/DateTimeKeyListener;->b()Z

    move-result v1

    if-eq v1, v3, :cond_5

    :cond_1
    iget-object v1, p0, Lo/SidePropagation;->o:Lo/DateTimeKeyListener;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lo/DateTimeKeyListener;->b()Z

    move-result v1

    if-eq v1, v3, :cond_5

    :cond_2
    iget-object v1, p0, Lo/SidePropagation;->n:Lo/DateTimeKeyListener;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lo/DateTimeKeyListener;->b()Z

    move-result v1

    if-eq v1, v3, :cond_5

    :cond_3
    iget-object v1, p0, Lo/SidePropagation;->k:Lo/DateTimeKeyListener;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lo/DateTimeKeyListener;->b()Z

    move-result v1

    if-eq v1, v3, :cond_5

    :cond_4
    iget-object v1, p0, Lo/SidePropagation;->m:Lo/DateTimeKeyListener;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lo/DateTimeKeyListener;->b()Z

    move-result v1

    if-ne v1, v3, :cond_6

    :cond_5
    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_7

    if-nez v1, :cond_7

    const/4 v2, 0x1

    :cond_7
    return v2
.end method

.method public final o()Lo/DateTimeKeyListener;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/SidePropagation;->n:Lo/DateTimeKeyListener;

    return-object v0
.end method

.method public final t()Lo/DateTimeKeyListener;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/SidePropagation;->m:Lo/DateTimeKeyListener;

    return-object v0
.end method
