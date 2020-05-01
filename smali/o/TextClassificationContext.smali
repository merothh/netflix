.class public abstract Lo/TextClassificationContext;
.super Lo/TextClassificationSessionId;
.source ""


# instance fields
.field private final d:Lo/Voice;


# direct methods
.method public constructor <init>(Lo/SystemTextClassifier;Lo/Voice;)V
    .locals 1

    const-string v0, "signupErrorReporter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formFieldViewModelConverterFactory"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Lo/TextClassificationSessionId;-><init>(Lo/SystemTextClassifier;)V

    iput-object p2, p0, Lo/TextClassificationContext;->d:Lo/Voice;

    return-void
.end method

.method public static synthetic e(Lo/TextClassificationContext;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 15
    check-cast p3, Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lo/TextClassificationContext;->d(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: createFormFields"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;"
        }
    .end annotation

    const-string v0, "pageKey"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupedFormFields"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lo/TextClassificationContext;->d:Lo/Voice;

    invoke-virtual {v0, p1, p3}, Lo/Voice;->d(Ljava/lang/String;Ljava/lang/String;)Lo/SynthesisRequest;

    move-result-object p1

    .line 18
    invoke-virtual {p1, p2}, Lo/SynthesisRequest;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
