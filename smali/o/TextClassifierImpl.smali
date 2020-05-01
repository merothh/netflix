.class public Lo/TextClassifierImpl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/TextClassifierImpl$Application;,
        Lo/TextClassifierImpl$ActionBar;,
        Lo/TextClassifierImpl$TaskDescription;
    }
.end annotation


# static fields
.field public static final b:Lo/TextClassifierImpl$TaskDescription;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/TextClassificationSessionFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lo/SpellCheckerInfo;

.field private final d:Lo/SpellCheckerSubtype;

.field private final e:Lo/SystemTextClassifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/TextClassifierImpl$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/TextClassifierImpl$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/TextClassifierImpl;->b:Lo/TextClassifierImpl$TaskDescription;

    return-void
.end method

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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/TextClassifierImpl;->d:Lo/SpellCheckerSubtype;

    iput-object p2, p0, Lo/TextClassifierImpl;->e:Lo/SystemTextClassifier;

    iput-object p3, p0, Lo/TextClassifierImpl;->a:Ljava/util/ArrayList;

    iput-object p4, p0, Lo/TextClassifierImpl;->c:Lo/SpellCheckerInfo;

    return-void
.end method

.method public static final synthetic a(Lo/TextClassifierImpl;Lo/TextClassifierImpl$ActionBar;Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lcom/netflix/mediaclient/android/app/Status;ILjava/util/List;)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p5}, Lo/TextClassifierImpl;->d(Lo/TextClassifierImpl$ActionBar;Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lcom/netflix/mediaclient/android/app/Status;ILjava/util/List;)V

    return-void
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 117
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 119
    iget-object v0, p0, Lo/TextClassifierImpl;->e:Lo/SystemTextClassifier;

    const-string v1, "SignupNativeWarnUserMode"

    invoke-virtual {v0, v1, p2, p1}, Lo/SystemTextClassifier;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;Lo/cb;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lo/TextClassifierImpl;->d:Lo/SpellCheckerSubtype;

    new-instance v1, Lo/TextClassifierImpl$StateListAnimator;

    invoke-direct {v1, p1, p2, p3}, Lo/TextClassifierImpl$StateListAnimator;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/cb;)V

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-interface {v0, v1}, Lo/SpellCheckerSubtype;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method private final c(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;Lo/cb;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lo/TextClassifierImpl;->d:Lo/SpellCheckerSubtype;

    new-instance v1, Lo/TextClassifierImpl$Dialog;

    invoke-direct {v1, p1, p2}, Lo/TextClassifierImpl$Dialog;-><init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;Lo/cb;)V

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-interface {v0, v1}, Lo/SpellCheckerSubtype;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method private final d(Ljava/lang/String;Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;)Ljava/lang/String;
    .locals 2

    .line 107
    sget-object v0, Lo/TextClassifierImpl;->b:Lo/TextClassifierImpl$TaskDescription;

    invoke-static {v0, p2}, Lo/TextClassifierImpl$TaskDescription;->b(Lo/TextClassifierImpl$TaskDescription;Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    .line 108
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->getFlowMode()Lcom/netflix/android/moneyball/FlowMode;

    move-result-object p2

    if-eqz p2, :cond_3

    check-cast p2, Lcom/netflix/android/moneyball/GetField;

    iget-object v0, p0, Lo/TextClassifierImpl;->e:Lo/SystemTextClassifier;

    const-string v0, "message"

    .line 172
    invoke-interface {p2, v0}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 179
    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p2

    .line 184
    :goto_1
    check-cast v1, Ljava/lang/String;

    .line 109
    :cond_3
    invoke-direct {p0, p1, v1}, Lo/TextClassifierImpl;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    if-eqz p2, :cond_8

    .line 112
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->getFlowMode()Lcom/netflix/android/moneyball/FlowMode;

    move-result-object p1

    if-eqz p1, :cond_8

    check-cast p1, Lcom/netflix/android/moneyball/GetField;

    iget-object p2, p0, Lo/TextClassifierImpl;->e:Lo/SystemTextClassifier;

    const-string p2, "errorCode"

    .line 186
    invoke-interface {p1, p2}, Lcom/netflix/android/moneyball/GetField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_5
    move-object p1, v1

    :goto_2
    if-nez p1, :cond_6

    goto :goto_3

    .line 193
    :cond_6
    instance-of p2, p1, Ljava/lang/String;

    if-nez p2, :cond_7

    goto :goto_3

    :cond_7
    move-object v1, p1

    .line 198
    :goto_3
    check-cast v1, Ljava/lang/String;

    :cond_8
    :goto_4
    return-object v1
.end method

.method private final d(Ljava/lang/String;Lo/cb;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lo/TextClassifierImpl;->d:Lo/SpellCheckerSubtype;

    new-instance v1, Lo/TextClassifierImpl$Activity;

    invoke-direct {v1, p1, p2}, Lo/TextClassifierImpl$Activity;-><init>(Ljava/lang/String;Lo/cb;)V

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-interface {v0, v1}, Lo/SpellCheckerSubtype;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method private final d(Lo/TextClassifierImpl$ActionBar;Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lcom/netflix/mediaclient/android/app/Status;ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TextClassifierImpl$ActionBar;",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lo/TextClassificationSessionFactory;",
            ">;)V"
        }
    .end annotation

    .line 96
    new-instance v6, Lo/TextClassifierImpl$Application;

    .line 101
    invoke-virtual {p1}, Lo/TextClassifierImpl$ActionBar;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lo/TextClassifierImpl;->d(Ljava/lang/String;Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move-object v1, p3

    move v2, p4

    move-object v3, p2

    move-object v4, p1

    .line 96
    invoke-direct/range {v0 .. v5}, Lo/TextClassifierImpl$Application;-><init>(Lcom/netflix/mediaclient/android/app/Status;ILcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lo/TextClassifierImpl$ActionBar;Ljava/lang/String;)V

    .line 103
    check-cast p5, Ljava/lang/Iterable;

    .line 169
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/TextClassificationSessionFactory;

    .line 103
    invoke-interface {p2, v6}, Lo/TextClassificationSessionFactory;->onAfterNetworkAction(Lo/TextClassifierImpl$Application;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final varargs c(Lcom/netflix/android/moneyball/fields/ActionField;Ljava/lang/String;[Lo/TextClassificationSessionFactory;)V
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestSpecificListeners"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 52
    iget-object v1, p0, Lo/TextClassifierImpl;->a:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    invoke-static {p3}, Lo/ako;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    invoke-virtual {p0, p1, p2, v0}, Lo/TextClassifierImpl;->e(Lcom/netflix/android/moneyball/fields/ActionField;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public final varargs d(Ljava/lang/String;[Lo/TextClassificationSessionFactory;)V
    .locals 3

    const-string v0, "mode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestSpecificListeners"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 38
    iget-object v1, p0, Lo/TextClassifierImpl;->a:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    invoke-static {p2}, Lo/ako;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    new-instance p2, Lo/TextClassifierImpl$ActionBar;

    const/4 v1, 0x0

    const-string v2, "simpleSilverSignUp"

    invoke-direct {p2, v2, p1, v1, v1}, Lo/TextClassifierImpl$ActionBar;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 163
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/TextClassificationSessionFactory;

    .line 42
    invoke-interface {v2, p2}, Lo/TextClassificationSessionFactory;->onBeforeNetworkAction(Lo/TextClassifierImpl$ActionBar;)V

    goto :goto_0

    .line 44
    :cond_0
    new-instance v1, Lo/TextClassifierImpl$Fragment;

    invoke-direct {v1, p0, p2, v0}, Lo/TextClassifierImpl$Fragment;-><init>(Lo/TextClassifierImpl;Lo/TextClassifierImpl$ActionBar;Ljava/util/List;)V

    check-cast v1, Lo/cb;

    invoke-direct {p0, p1, v1}, Lo/TextClassifierImpl;->d(Ljava/lang/String;Lo/cb;)V

    return-void
.end method

.method protected final e(Lcom/netflix/android/moneyball/fields/ActionField;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/android/moneyball/fields/ActionField;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lo/TextClassificationSessionFactory;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestResponseListeners"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lo/TextClassifierImpl;->c:Lo/SpellCheckerInfo;

    invoke-interface {v0}, Lo/SpellCheckerInfo;->getMoneyballData()Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;

    move-result-object v0

    .line 60
    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/ActionField;->getMode()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 62
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/ActionField;->getFlowMode()Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v3

    invoke-direct {v1, v3, p2, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;-><init>(Lcom/netflix/android/moneyball/FlowMode;Ljava/lang/String;Lcom/netflix/android/moneyball/fields/ActionField;)V

    .line 63
    new-instance p2, Lo/TextClassifierImpl$ActionBar;

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->getFlow()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->getMode()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v2

    .line 66
    :goto_2
    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/ActionField;->getId()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_3

    .line 67
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->getContextData()Lcom/netflix/mediaclient/service/webclient/model/leafs/AUIContextData;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AUIContextData;->getMembershipStatus()Ljava/lang/String;

    move-result-object v2

    .line 63
    :cond_3
    invoke-direct {p2, v3, v4, p1, v2}, Lo/TextClassifierImpl$ActionBar;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    move-object p1, p3

    check-cast p1, Ljava/lang/Iterable;

    .line 165
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/TextClassificationSessionFactory;

    .line 69
    invoke-interface {v0, p2}, Lo/TextClassificationSessionFactory;->onBeforeNetworkAction(Lo/TextClassifierImpl$ActionBar;)V

    goto :goto_3

    .line 70
    :cond_4
    new-instance p1, Lo/TextClassifierImpl$FragmentManager;

    invoke-direct {p1, p0, p2, p3}, Lo/TextClassifierImpl$FragmentManager;-><init>(Lo/TextClassifierImpl;Lo/TextClassifierImpl$ActionBar;Ljava/util/List;)V

    check-cast p1, Lo/cb;

    invoke-direct {p0, v1, p1}, Lo/TextClassifierImpl;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;Lo/cb;)V

    goto :goto_5

    .line 76
    :cond_5
    new-instance p2, Lo/TextClassifierImpl$ActionBar;

    .line 77
    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/ActionField;->getFlow()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/ActionField;->getMode()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/ActionField;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_6

    .line 80
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->getContextData()Lcom/netflix/mediaclient/service/webclient/model/leafs/AUIContextData;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AUIContextData;->getMembershipStatus()Ljava/lang/String;

    move-result-object v2

    .line 76
    :cond_6
    invoke-direct {p2, v1, v3, v4, v2}, Lo/TextClassifierImpl$ActionBar;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    .line 167
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/TextClassificationSessionFactory;

    .line 82
    invoke-interface {v1, p2}, Lo/TextClassificationSessionFactory;->onBeforeNetworkAction(Lo/TextClassifierImpl$ActionBar;)V

    goto :goto_4

    .line 83
    :cond_7
    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/ActionField;->getFlowMode()Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/FlowMode;->getFlow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/ActionField;->getMode()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lo/TextClassifierImpl$LoaderManager;

    invoke-direct {v1, p0, p2, p3}, Lo/TextClassifierImpl$LoaderManager;-><init>(Lo/TextClassifierImpl;Lo/TextClassifierImpl$ActionBar;Ljava/util/List;)V

    check-cast v1, Lo/cb;

    invoke-direct {p0, v0, p1, v1}, Lo/TextClassifierImpl;->b(Ljava/lang/String;Ljava/lang/String;Lo/cb;)V

    :goto_5
    return-void
.end method

.method public final e(Lo/cb;)V
    .locals 2

    const-string v0, "moneyballAgentWebCallback"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lo/TextClassifierImpl;->d:Lo/SpellCheckerSubtype;

    new-instance v1, Lo/TextClassifierImpl$PendingIntent;

    invoke-direct {v1, p1}, Lo/TextClassifierImpl$PendingIntent;-><init>(Lo/cb;)V

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-interface {v0, v1}, Lo/SpellCheckerSubtype;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method
