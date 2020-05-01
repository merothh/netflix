.class public final Lo/Range;
.super Lo/ChangeScroll;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lo/InputBinding;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Ljava/lang/String;

.field private final f:Lo/PrintStreamPrinter;

.field private final h:Lo/AllCapsTransformationMethod;

.field private final j:Lo/Pools;


# direct methods
.method public constructor <init>(Lo/InputBinding;Lo/PrintStreamPrinter;Lo/Pools;Lo/TextClassifierImpl;Lo/TextClassifierService;Lo/AllCapsTransformationMethod;)V
    .locals 1

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifeCycledata"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupNetworkManager"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModel"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p4, p1, p5}, Lo/ChangeScroll;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassifierService;)V

    iput-object p1, p0, Lo/Range;->b:Lo/InputBinding;

    iput-object p2, p0, Lo/Range;->f:Lo/PrintStreamPrinter;

    iput-object p3, p0, Lo/Range;->j:Lo/Pools;

    iput-object p6, p0, Lo/Range;->h:Lo/AllCapsTransformationMethod;

    .line 25
    iget-object p1, p0, Lo/Range;->b:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->kY:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p1

    .line 26
    iget-object p2, p0, Lo/Range;->f:Lo/PrintStreamPrinter;

    invoke-virtual {p2}, Lo/PrintStreamPrinter;->b()Ljava/lang/String;

    move-result-object p2

    const-string p3, "age"

    invoke-virtual {p1, p3, p2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "stringProvider.getFormat\u2026ta.age)\n        .format()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/Range;->e:Ljava/lang/String;

    .line 29
    iget-object p1, p0, Lo/Range;->b:Lo/InputBinding;

    sget p4, Lcom/netflix/mediaclient/ui/R$AssistContent;->kX:I

    invoke-virtual {p1, p4}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p1

    .line 30
    iget-object p4, p0, Lo/Range;->f:Lo/PrintStreamPrinter;

    invoke-virtual {p4}, Lo/PrintStreamPrinter;->b()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/Range;->c:Ljava/lang/String;

    .line 33
    iget-object p1, p0, Lo/Range;->b:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->kZ:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p1

    .line 34
    iget-object p2, p0, Lo/Range;->f:Lo/PrintStreamPrinter;

    invoke-virtual {p2}, Lo/PrintStreamPrinter;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, "pinRequiredRating"

    invoke-virtual {p1, p3, p2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "stringProvider.getFormat\u2026Rating)\n        .format()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/Range;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lo/Range;->d:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lo/Range;->e:Ljava/lang/String;

    return-object v0
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
    iget-object v0, p0, Lo/Range;->j:Lo/Pools;

    invoke-virtual {v0}, Lo/Pools;->c()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/Range;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final h()V
    .locals 7

    .line 44
    iget-object v0, p0, Lo/Range;->f:Lo/PrintStreamPrinter;

    invoke-virtual {v0}, Lo/PrintStreamPrinter;->c()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v2

    invoke-virtual {p0}, Lo/Range;->f()Lo/Cloneable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lo/ChangeScroll;->c(Lo/ChangeScroll;Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;ILjava/lang/Object;)V

    return-void
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

    .line 41
    iget-object v0, p0, Lo/Range;->j:Lo/Pools;

    invoke-virtual {v0}, Lo/Pools;->d()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/Range;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Lo/AllCapsTransformationMethod;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/Range;->h:Lo/AllCapsTransformationMethod;

    return-object v0
.end method

.method public final l()V
    .locals 7

    .line 48
    iget-object v0, p0, Lo/Range;->f:Lo/PrintStreamPrinter;

    invoke-virtual {v0}, Lo/PrintStreamPrinter;->d()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v2

    invoke-virtual {p0}, Lo/Range;->i()Lo/Cloneable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lo/ChangeScroll;->c(Lo/ChangeScroll;Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;ILjava/lang/Object;)V

    return-void
.end method
