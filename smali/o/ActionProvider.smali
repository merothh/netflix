.class public final Lo/ActionProvider;
.super Lo/ChangeScroll;
.source ""


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lo/ProtoOutputStream;

.field private final g:Lo/AppTransitionAnimationSpec;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lo/TextClassificationSessionFactory;


# direct methods
.method public constructor <init>(Lo/TextClassifierImpl;Lo/TextClassifierService;Lo/InputBinding;Ljava/util/List;Lo/AppTransitionAnimationSpec;Lo/ProtoOutputStream;Lo/TextClassificationSessionFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TextClassifierImpl;",
            "Lo/TextClassifierService;",
            "Lo/InputBinding;",
            "Ljava/util/List<",
            "+",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;",
            "Lo/AppTransitionAnimationSpec;",
            "Lo/ProtoOutputStream;",
            "Lo/TextClassificationSessionFactory;",
            ")V"
        }
    .end annotation

    const-string v0, "signupNetworkManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModel"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formFields"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneLifecycleData"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textMeRequestLogger"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p3, p2}, Lo/ChangeScroll;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassifierService;)V

    iput-object p4, p0, Lo/ActionProvider;->h:Ljava/util/List;

    iput-object p5, p0, Lo/ActionProvider;->g:Lo/AppTransitionAnimationSpec;

    iput-object p6, p0, Lo/ActionProvider;->f:Lo/ProtoOutputStream;

    iput-object p7, p0, Lo/ActionProvider;->j:Lo/TextClassificationSessionFactory;

    .line 32
    iget-object p1, p0, Lo/ActionProvider;->g:Lo/AppTransitionAnimationSpec;

    invoke-virtual {p1}, Lo/AppTransitionAnimationSpec;->d()Z

    move-result p1

    iput-boolean p1, p0, Lo/ActionProvider;->c:Z

    .line 40
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->aq:I

    invoke-virtual {p3, p1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ActionProvider;->d:Ljava/lang/String;

    .line 42
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ai:I

    invoke-virtual {p3, p1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ActionProvider;->b:Ljava/lang/String;

    .line 44
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ol:I

    invoke-virtual {p3, p1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ActionProvider;->e:Ljava/lang/String;

    .line 46
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->oo:I

    invoke-virtual {p3, p1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/ActionProvider;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lo/ActionProvider;->c:Z

    return v0
.end method

.method public final e()V
    .locals 3

    .line 25
    iget-object v0, p0, Lo/ActionProvider;->g:Lo/AppTransitionAnimationSpec;

    invoke-virtual {v0}, Lo/AppTransitionAnimationSpec;->a()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    invoke-virtual {p0}, Lo/ActionProvider;->g()Lo/Cloneable;

    move-result-object v1

    iget-object v2, p0, Lo/ActionProvider;->j:Lo/TextClassificationSessionFactory;

    invoke-virtual {p0, v0, v1, v2}, Lo/ActionProvider;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public final f()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lo/ActionProvider;->f:Lo/ProtoOutputStream;

    invoke-virtual {v0}, Lo/ProtoOutputStream;->a()Lo/Cloneable;

    move-result-object v0

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
    iget-object v0, p0, Lo/ActionProvider;->f:Lo/ProtoOutputStream;

    invoke-virtual {v0}, Lo/ProtoOutputStream;->d()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lo/ActionProvider;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final i()V
    .locals 3

    .line 29
    iget-object v0, p0, Lo/ActionProvider;->g:Lo/AppTransitionAnimationSpec;

    invoke-virtual {v0}, Lo/AppTransitionAnimationSpec;->e()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    invoke-virtual {p0}, Lo/ActionProvider;->f()Lo/Cloneable;

    move-result-object v1

    iget-object v2, p0, Lo/ActionProvider;->j:Lo/TextClassificationSessionFactory;

    invoke-virtual {p0, v0, v1, v2}, Lo/ActionProvider;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/ActionProvider;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lo/ActionProvider;->h:Ljava/util/List;

    return-object v0
.end method

.method public final n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lo/ActionProvider;->a:Ljava/util/List;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lo/ActionProvider;->e:Ljava/lang/String;

    return-object v0
.end method
