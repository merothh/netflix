.class public final Lo/MutableChar;
.super Lo/ChangeScroll;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/CharSequence;

.field private final f:Lo/MutableInt;

.field private final g:Lo/TextClassificationSessionFactory;

.field private final h:Lcom/netflix/android/moneyball/fields/StringField;

.field private final i:Lo/TextClassificationSessionFactory;

.field private final j:Lo/MutableDouble;

.field private final k:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

.field private final l:Lo/RelativeSizeSpan;

.field private final n:Lo/NotificationStats;

.field private final o:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;


# direct methods
.method public constructor <init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/MutableInt;Lo/MutableDouble;Lo/NotificationStats;Lo/RelativeSizeSpan;Lo/TextClassifierService;Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;)V
    .locals 1

    const-string v0, "signupNetworkManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkRequestResponseListener"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changePlanRequestLogger"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stepsViewModel"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleData"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changePlanViewModel"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upgradeOnUsPlanViewModel"

    invoke-static {p9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModel"

    invoke-static {p10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1, p2, p10}, Lo/ChangeScroll;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassifierService;)V

    iput-object p3, p0, Lo/MutableChar;->g:Lo/TextClassificationSessionFactory;

    iput-object p4, p0, Lo/MutableChar;->i:Lo/TextClassificationSessionFactory;

    iput-object p6, p0, Lo/MutableChar;->f:Lo/MutableInt;

    iput-object p7, p0, Lo/MutableChar;->j:Lo/MutableDouble;

    iput-object p8, p0, Lo/MutableChar;->n:Lo/NotificationStats;

    iput-object p9, p0, Lo/MutableChar;->l:Lo/RelativeSizeSpan;

    iput-object p11, p0, Lo/MutableChar;->k:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    iput-object p12, p0, Lo/MutableChar;->o:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    .line 51
    iget-object p1, p0, Lo/MutableChar;->j:Lo/MutableDouble;

    invoke-virtual {p1}, Lo/MutableDouble;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "giftOptionMode"

    :goto_0
    iput-object p1, p0, Lo/MutableChar;->c:Ljava/lang/String;

    .line 53
    invoke-virtual {p5}, Lo/DynamicDrawableSpan;->b()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/MutableChar;->e:Ljava/lang/CharSequence;

    .line 55
    iget-object p1, p0, Lo/MutableChar;->j:Lo/MutableDouble;

    invoke-virtual {p1}, Lo/MutableDouble;->d()Z

    move-result p1

    iput-boolean p1, p0, Lo/MutableChar;->b:Z

    .line 57
    iget-object p1, p0, Lo/MutableChar;->j:Lo/MutableDouble;

    invoke-virtual {p1}, Lo/MutableDouble;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/MutableChar;->d:Ljava/lang/String;

    .line 65
    iget-object p1, p0, Lo/MutableChar;->j:Lo/MutableDouble;

    invoke-virtual {p1}, Lo/MutableDouble;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/MutableChar;->a:Ljava/lang/String;

    .line 67
    iget-object p1, p0, Lo/MutableChar;->j:Lo/MutableDouble;

    invoke-virtual {p1}, Lo/MutableDouble;->c()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object p1

    iput-object p1, p0, Lo/MutableChar;->h:Lcom/netflix/android/moneyball/fields/StringField;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lo/MutableChar;->b:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lo/MutableChar;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 41
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, v1, :cond_1

    .line 42
    iget-object v0, p0, Lo/MutableChar;->h:Lcom/netflix/android/moneyball/fields/StringField;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/netflix/android/moneyball/fields/StringField;->setValue(Ljava/lang/Object;)V

    .line 44
    :cond_1
    iget-object p1, p0, Lo/MutableChar;->j:Lo/MutableDouble;

    invoke-virtual {p1}, Lo/MutableDouble;->e()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object p1

    invoke-virtual {p0}, Lo/MutableChar;->j()Lo/Cloneable;

    move-result-object v0

    iget-object v1, p0, Lo/MutableChar;->g:Lo/TextClassificationSessionFactory;

    invoke-virtual {p0, p1, v0, v1}, Lo/MutableChar;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public final e()V
    .locals 3

    .line 48
    iget-object v0, p0, Lo/MutableChar;->n:Lo/NotificationStats;

    invoke-virtual {v0}, Lo/NotificationStats;->c()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    invoke-virtual {p0}, Lo/MutableChar;->i()Lo/Cloneable;

    move-result-object v1

    iget-object v2, p0, Lo/MutableChar;->i:Lo/TextClassificationSessionFactory;

    invoke-virtual {p0, v0, v1, v2}, Lo/MutableChar;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lo/MutableChar;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 1

    .line 53
    iget-object v0, p0, Lo/MutableChar;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/MutableChar;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lo/MutableChar;->f:Lo/MutableInt;

    invoke-virtual {v0}, Lo/MutableInt;->a()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lo/MutableChar;->f:Lo/MutableInt;

    invoke-virtual {v0}, Lo/MutableInt;->e()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lo/MutableChar;->k:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lo/MutableChar;->o:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

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

.method public final l()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/MutableChar;->o:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    return-object v0
.end method

.method public final m()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;
    .locals 1

    .line 36
    iget-object v0, p0, Lo/MutableChar;->k:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    return-object v0
.end method

.method public final n()Lo/RelativeSizeSpan;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/MutableChar;->l:Lo/RelativeSizeSpan;

    return-object v0
.end method

.method public final o()Lo/NotificationStats;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/MutableChar;->n:Lo/NotificationStats;

    return-object v0
.end method
