.class public final Lo/TextClassifierImplNative;
.super Lo/TextClassifierImpl;
.source ""


# instance fields
.field private final a:Lo/SpellCheckerInfo;

.field private final c:Lo/SystemTextClassifier;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/TextClassificationSessionFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lo/SpellCheckerSubtype;


# direct methods
.method public constructor <init>(Lo/SpellCheckerSubtype;Lo/SystemTextClassifier;Ljava/util/ArrayList;Lo/SpellCheckerInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SpellCheckerSubtype;",
            "Lo/SystemTextClassifier;",
            "Ljava/util/ArrayList<",
            "Lo/TextClassificationSessionFactory;",
            ">;",
            "Lo/SpellCheckerInfo;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "serviceManagerRunner"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupErrorReporter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "genericRequestListeners"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moneyballDataSource"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lo/TextClassifierImpl;-><init>(Lo/SpellCheckerSubtype;Lo/SystemTextClassifier;Ljava/util/ArrayList;Lo/SpellCheckerInfo;)V

    iput-object p1, p0, Lo/TextClassifierImplNative;->e:Lo/SpellCheckerSubtype;

    iput-object p2, p0, Lo/TextClassifierImplNative;->c:Lo/SystemTextClassifier;

    iput-object p3, p0, Lo/TextClassifierImplNative;->d:Ljava/util/ArrayList;

    iput-object p4, p0, Lo/TextClassifierImplNative;->a:Lo/SpellCheckerInfo;

    return-void
.end method


# virtual methods
.method public final varargs b(Lcom/netflix/android/moneyball/fields/ActionField;Ljava/lang/String;[Lo/TextClassificationSessionFactory;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestSpecificListeners"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 23
    invoke-static {p3}, Lo/ako;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    invoke-virtual {p0, p1, p2, v0}, Lo/TextClassifierImplNative;->e(Lcom/netflix/android/moneyball/fields/ActionField;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
