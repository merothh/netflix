.class public final Lo/TransitionListenerAdapter;
.super Lo/ChangeScroll;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Ljava/lang/String;

.field private final f:Lo/InputBinding;

.field private final h:Ljava/lang/String;

.field private final i:Lo/TransitionSet;

.field private final j:Lo/TransitionPropagation;


# direct methods
.method public constructor <init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TransitionPropagation;Lo/TextClassifierService;Lo/TransitionSet;)V
    .locals 1

    const-string v0, "signupNetworkManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleData"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModel"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2, p4}, Lo/ChangeScroll;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassifierService;)V

    iput-object p2, p0, Lo/TransitionListenerAdapter;->f:Lo/InputBinding;

    iput-object p3, p0, Lo/TransitionListenerAdapter;->j:Lo/TransitionPropagation;

    iput-object p5, p0, Lo/TransitionListenerAdapter;->i:Lo/TransitionSet;

    .line 21
    iget-object p1, p0, Lo/TransitionListenerAdapter;->i:Lo/TransitionSet;

    invoke-virtual {p1}, Lo/TransitionSet;->c()Z

    move-result p1

    iput-boolean p1, p0, Lo/TransitionListenerAdapter;->b:Z

    .line 23
    iget-object p1, p0, Lo/TransitionListenerAdapter;->i:Lo/TransitionSet;

    invoke-virtual {p1}, Lo/TransitionSet;->e()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CC"

    invoke-static {p1, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lo/TransitionListenerAdapter;->d:Z

    .line 25
    iget-boolean p1, p0, Lo/TransitionListenerAdapter;->d:Z

    if-eqz p1, :cond_0

    .line 26
    iget-object p1, p0, Lo/TransitionListenerAdapter;->f:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->qB:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lo/TransitionListenerAdapter;->f:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->qA:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    .line 25
    :goto_0
    iput-object p1, p0, Lo/TransitionListenerAdapter;->a:Ljava/lang/String;

    .line 29
    iget-boolean p1, p0, Lo/TransitionListenerAdapter;->d:Z

    if-eqz p1, :cond_1

    .line 30
    iget-object p1, p0, Lo/TransitionListenerAdapter;->f:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->bj:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 31
    :cond_1
    iget-object p1, p0, Lo/TransitionListenerAdapter;->f:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->bg:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    .line 29
    :goto_1
    iput-object p1, p0, Lo/TransitionListenerAdapter;->e:Ljava/lang/String;

    .line 33
    iget-boolean p1, p0, Lo/TransitionListenerAdapter;->d:Z

    if-eqz p1, :cond_2

    .line 34
    iget-object p1, p0, Lo/TransitionListenerAdapter;->f:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ah:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 35
    :cond_2
    iget-object p1, p0, Lo/TransitionListenerAdapter;->f:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ae:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    .line 33
    :goto_2
    iput-object p1, p0, Lo/TransitionListenerAdapter;->c:Ljava/lang/String;

    .line 37
    iget-object p1, p0, Lo/TransitionListenerAdapter;->f:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->af:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/TransitionListenerAdapter;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lo/TransitionListenerAdapter;->b:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lo/TransitionListenerAdapter;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/TransitionListenerAdapter;->c:Ljava/lang/String;

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

    .line 40
    iget-object v0, p0, Lo/TransitionListenerAdapter;->j:Lo/TransitionPropagation;

    invoke-virtual {v0}, Lo/TransitionPropagation;->e()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/TransitionListenerAdapter;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final i()V
    .locals 7

    .line 43
    iget-object v0, p0, Lo/TransitionListenerAdapter;->i:Lo/TransitionSet;

    invoke-virtual {v0}, Lo/TransitionSet;->a()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v2

    invoke-virtual {p0}, Lo/TransitionListenerAdapter;->g()Lo/Cloneable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lo/ChangeScroll;->c(Lo/ChangeScroll;Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;ILjava/lang/Object;)V

    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/TransitionListenerAdapter;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final n()V
    .locals 7

    .line 47
    iget-object v0, p0, Lo/TransitionListenerAdapter;->i:Lo/TransitionSet;

    invoke-virtual {v0}, Lo/TransitionSet;->b()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v2

    invoke-virtual {p0}, Lo/TransitionListenerAdapter;->g()Lo/Cloneable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lo/ChangeScroll;->c(Lo/ChangeScroll;Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;ILjava/lang/Object;)V

    return-void
.end method
