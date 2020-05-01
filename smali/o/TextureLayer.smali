.class public final Lo/TextureLayer;
.super Lo/ChangeScroll;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/CharSequence;

.field private final d:Z

.field private final e:Ljava/lang/String;

.field private final f:Lo/SurfaceSession;

.field private final g:Lo/TextClassificationSessionFactory;

.field private final h:Ljava/lang/String;

.field private final i:Z

.field private final j:Lo/InputBinding;

.field private final k:Lo/Surface;

.field private final l:Lo/SubMenu;

.field private final m:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

.field private final n:Lo/RelativeSizeSpan;

.field private final o:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

.field private final s:Lo/TextClassificationSession;


# direct methods
.method public constructor <init>(Lo/InputBinding;Lo/TextClassifierImpl;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/SurfaceSession;Lo/Surface;Lo/SubMenu;Lo/RelativeSizeSpan;Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;Lo/TextClassifierService;Lo/TextClassificationSession;)V
    .locals 1

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupNetworkManager"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "registrationListener"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stepsViewModel"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleData"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emailPreferenceViewModel"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upgradeOnUsPlanViewModel"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModel"

    invoke-static {p11, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentPlanProvider"

    invoke-static {p12, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p2, p1, p11}, Lo/ChangeScroll;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassifierService;)V

    iput-object p1, p0, Lo/TextureLayer;->j:Lo/InputBinding;

    iput-object p3, p0, Lo/TextureLayer;->g:Lo/TextClassificationSessionFactory;

    iput-object p5, p0, Lo/TextureLayer;->f:Lo/SurfaceSession;

    iput-object p6, p0, Lo/TextureLayer;->k:Lo/Surface;

    iput-object p7, p0, Lo/TextureLayer;->l:Lo/SubMenu;

    iput-object p8, p0, Lo/TextureLayer;->n:Lo/RelativeSizeSpan;

    iput-object p9, p0, Lo/TextureLayer;->m:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    iput-object p10, p0, Lo/TextureLayer;->o:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    iput-object p12, p0, Lo/TextureLayer;->s:Lo/TextClassificationSession;

    .line 33
    iget-object p1, p0, Lo/TextureLayer;->k:Lo/Surface;

    invoke-virtual {p1}, Lo/Surface;->f()Z

    move-result p1

    iput-boolean p1, p0, Lo/TextureLayer;->d:Z

    .line 35
    invoke-virtual {p4}, Lo/DynamicDrawableSpan;->b()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/TextureLayer;->c:Ljava/lang/CharSequence;

    .line 38
    iget-object p1, p0, Lo/TextureLayer;->k:Lo/Surface;

    invoke-virtual {p1}, Lo/Surface;->b()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 39
    iget-object p3, p0, Lo/TextureLayer;->j:Lo/InputBinding;

    invoke-virtual {p3, p1}, Lo/InputBinding;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 38
    :goto_0
    iput-object p1, p0, Lo/TextureLayer;->e:Ljava/lang/String;

    .line 43
    iget-object p1, p0, Lo/TextureLayer;->k:Lo/Surface;

    invoke-virtual {p1}, Lo/Surface;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 44
    iget-object p1, p0, Lo/TextureLayer;->k:Lo/Surface;

    invoke-virtual {p1}, Lo/Surface;->j()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const/4 p3, 0x0

    .line 47
    iget-object p4, p0, Lo/TextureLayer;->k:Lo/Surface;

    invoke-virtual {p4}, Lo/Surface;->g()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p1, p3

    const/4 p3, 0x1

    .line 48
    iget-object p4, p0, Lo/TextureLayer;->k:Lo/Surface;

    invoke-virtual {p4}, Lo/Surface;->h()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p1, p3

    .line 46
    invoke-static {p1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 43
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    .line 51
    invoke-static {p1}, Lo/akz;->j(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 117
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/Collection;

    .line 126
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 125
    check-cast p4, Ljava/lang/String;

    .line 52
    iget-object p5, p0, Lo/TextureLayer;->j:Lo/InputBinding;

    invoke-virtual {p5, p4}, Lo/InputBinding;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 125
    invoke-interface {p3, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 128
    :cond_3
    check-cast p3, Ljava/util/List;

    iput-object p3, p0, Lo/TextureLayer;->b:Ljava/util/List;

    .line 56
    iget-object p1, p0, Lo/TextureLayer;->k:Lo/Surface;

    invoke-virtual {p1}, Lo/Surface;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 57
    iget-object p3, p0, Lo/TextureLayer;->j:Lo/InputBinding;

    invoke-virtual {p3, p1}, Lo/InputBinding;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_3

    .line 58
    :cond_4
    iget-object p1, p0, Lo/TextureLayer;->j:Lo/InputBinding;

    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->ag:I

    invoke-virtual {p1, p3}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lo/TextureLayer;->a:Ljava/lang/String;

    .line 60
    iget-object p1, p0, Lo/TextureLayer;->k:Lo/Surface;

    invoke-virtual {p1}, Lo/Surface;->e()Z

    move-result p1

    iput-boolean p1, p0, Lo/TextureLayer;->i:Z

    .line 63
    iget-boolean p1, p0, Lo/TextureLayer;->i:Z

    if-eqz p1, :cond_5

    .line 64
    iget-object p1, p0, Lo/TextureLayer;->k:Lo/Surface;

    invoke-virtual {p1}, Lo/Surface;->a()Ljava/lang/String;

    move-result-object p2

    .line 63
    :cond_5
    iput-object p2, p0, Lo/TextureLayer;->h:Ljava/lang/String;

    return-void
.end method

.method private final q()Ljava/lang/String;
    .locals 2

    .line 82
    iget-object v0, p0, Lo/TextureLayer;->n:Lo/RelativeSizeSpan;

    iget-object v1, p0, Lo/TextureLayer;->s:Lo/TextClassificationSession;

    invoke-interface {v1}, Lo/TextClassificationSession;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/RelativeSizeSpan;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lo/TextureLayer;->d:Z

    return v0
.end method

.method public final e()Ljava/lang/CharSequence;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/TextureLayer;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lo/TextureLayer;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lo/TextureLayer;->i:Z

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lo/TextureLayer;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lo/TextureLayer;->b:Ljava/util/List;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/TextureLayer;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lo/TextureLayer;->f:Lo/SurfaceSession;

    invoke-virtual {v0}, Lo/SurfaceSession;->c()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 3

    .line 72
    iget-object v0, p0, Lo/TextureLayer;->n:Lo/RelativeSizeSpan;

    invoke-virtual {v0}, Lo/RelativeSizeSpan;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/TextureLayer;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lo/TextureLayer;->j:Lo/InputBinding;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ch:I

    invoke-virtual {v0, v1}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object v0

    .line 74
    invoke-direct {p0}, Lo/TextureLayer;->q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "planName"

    invoke-virtual {v0, v2, v1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lo/TextureLayer;->k:Lo/Surface;

    invoke-virtual {v0}, Lo/Surface;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/TextureLayer;->j:Lo/InputBinding;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->cd:I

    invoke-virtual {v0, v1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final m()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lo/TextureLayer;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/TextureLayer;->m:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lo/TextureLayer;->o:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final n()V
    .locals 3

    .line 88
    iget-object v0, p0, Lo/TextureLayer;->k:Lo/Surface;

    invoke-virtual {v0}, Lo/Surface;->c()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    invoke-virtual {p0}, Lo/TextureLayer;->k()Lo/Cloneable;

    move-result-object v1

    iget-object v2, p0, Lo/TextureLayer;->g:Lo/TextClassificationSessionFactory;

    invoke-virtual {p0, v0, v1, v2}, Lo/TextureLayer;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public final o()Lo/SubMenu;
    .locals 1

    .line 25
    iget-object v0, p0, Lo/TextureLayer;->l:Lo/SubMenu;

    return-object v0
.end method

.method public final s()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/TextureLayer;->m:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    return-object v0
.end method

.method public final t()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;
    .locals 1

    .line 28
    iget-object v0, p0, Lo/TextureLayer;->o:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    return-object v0
.end method
