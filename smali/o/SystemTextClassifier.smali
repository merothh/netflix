.class public final Lo/SystemTextClassifier;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SystemTextClassifier$StateListAnimator;,
        Lo/SystemTextClassifier$TaskDescription;
    }
.end annotation


# static fields
.field public static final e:Lo/SystemTextClassifier$TaskDescription;


# instance fields
.field private final a:Lo/SpellCheckerInfo;

.field private final b:Lo/TextClassificationManager;

.field private final c:Lo/SystemTextClassifier$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/SystemTextClassifier$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/SystemTextClassifier$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/SystemTextClassifier;->e:Lo/SystemTextClassifier$TaskDescription;

    return-void
.end method

.method public constructor <init>(Lo/TextClassificationManager;Lo/SpellCheckerInfo;Lo/SystemTextClassifier$StateListAnimator;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupLogger"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moneyballDataSource"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggedErrorListener"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SystemTextClassifier;->b:Lo/TextClassificationManager;

    iput-object p2, p0, Lo/SystemTextClassifier;->a:Lo/SpellCheckerInfo;

    iput-object p3, p0, Lo/SystemTextClassifier;->c:Lo/SystemTextClassifier$StateListAnimator;

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)Lcom/netflix/cl/model/Error;
    .locals 5

    if-eqz p3, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 48
    :goto_0
    iget-object v0, p0, Lo/SystemTextClassifier;->a:Lo/SpellCheckerInfo;

    invoke-interface {v0}, Lo/SpellCheckerInfo;->getMoneyballData()Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->getFlowMode()Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {v0}, Lcom/netflix/android/moneyball/FlowMode;->getFlow()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    const-string v3, "flow"

    invoke-virtual {p3, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v0, :cond_3

    .line 50
    invoke-virtual {v0}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    const-string v3, "mode"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    sget-object v0, Lo/SystemTextClassifier;->e:Lo/SystemTextClassifier$TaskDescription;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4, v1}, Lo/SystemTextClassifier$TaskDescription;->c(Lo/SystemTextClassifier$TaskDescription;Ljava/lang/Exception;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "key"

    .line 55
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "stackTrace"

    .line 56
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "debugInfo"

    .line 57
    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    .line 58
    new-instance p3, Lcom/netflix/cl/model/Error;

    new-instance v0, Lcom/netflix/cl/model/Debug;

    invoke-direct {v0, p2}, Lcom/netflix/cl/model/Debug;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {p3, p1, v0}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/Debug;)V

    return-object p3
.end method

.method static synthetic c(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;ILjava/lang/Object;)Lcom/netflix/cl/model/Error;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 46
    check-cast p3, Lorg/json/JSONObject;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lo/SystemTextClassifier;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)Lcom/netflix/cl/model/Error;

    move-result-object p0

    return-object p0
.end method

.method private final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SignupErrorLogger"

    .line 63
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lo/SystemTextClassifier;->c:Lo/SystemTextClassifier$StateListAnimator;

    invoke-interface {v0, p1, p2}, Lo/SystemTextClassifier$StateListAnimator;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 32
    check-cast p3, Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keys"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 40
    invoke-static/range {v1 .. v6}, Lo/SystemTextClassifier;->c(Lo/SystemTextClassifier;Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;ILjava/lang/Object;)Lcom/netflix/cl/model/Error;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lo/SystemTextClassifier;->b:Lo/TextClassificationManager;

    invoke-virtual {v1, v0}, Lo/TextClassificationManager;->a(Lcom/netflix/cl/model/Error;)V

    .line 43
    move-object v2, p2

    check-cast v2, Ljava/lang/Iterable;

    const-string p2, ","

    move-object v3, p2

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lo/SystemTextClassifier;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lo/SystemTextClassifier;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)Lcom/netflix/cl/model/Error;

    move-result-object p3

    .line 34
    iget-object v0, p0, Lo/SystemTextClassifier;->b:Lo/TextClassificationManager;

    invoke-virtual {v0, p3}, Lo/TextClassificationManager;->a(Lcom/netflix/cl/model/Error;)V

    .line 36
    invoke-direct {p0, p1, p2}, Lo/SystemTextClassifier;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
