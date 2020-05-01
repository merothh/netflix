.class public final Lo/GenerateLinksLogger;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/TextClassificationSessionFactory;


# instance fields
.field private final b:Lo/TextClassificationManager;

.field private final c:Lo/alB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alB<",
            "Lcom/netflix/cl/model/event/session/command/Command;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lo/alB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alB<",
            "Lcom/netflix/cl/model/event/session/action/Action;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TextClassificationManager;",
            "Lo/alB<",
            "+",
            "Lcom/netflix/cl/model/event/session/action/Action;",
            ">;",
            "Lo/alB<",
            "+",
            "Lcom/netflix/cl/model/event/session/command/Command;",
            ">;)V"
        }
    .end annotation

    const-string v0, "signupLogger"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/GenerateLinksLogger;->b:Lo/TextClassificationManager;

    iput-object p2, p0, Lo/GenerateLinksLogger;->d:Lo/alB;

    iput-object p3, p0, Lo/GenerateLinksLogger;->c:Lo/alB;

    return-void
.end method

.method public synthetic constructor <init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;ILo/amc;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 20
    move-object p2, v0

    check-cast p2, Lo/alB;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 21
    move-object p3, v0

    check-cast p3, Lo/alB;

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/GenerateLinksLogger;-><init>(Lo/TextClassificationManager;Lo/alB;Lo/alB;)V

    return-void
.end method

.method private final d(Lo/TextClassifierImpl$Application;)Lcom/netflix/cl/model/Error;
    .locals 3

    .line 45
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 46
    invoke-virtual {p1}, Lo/TextClassifierImpl$Application;->c()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 47
    invoke-virtual {p1}, Lo/TextClassifierImpl$Application;->i()Ljava/lang/String;

    move-result-object p1

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 48
    new-instance v0, Lcom/netflix/cl/model/Error;

    sget-object v1, Lcom/netflix/mediaclient/util/log/RootCause;->r:Lcom/netflix/mediaclient/util/log/RootCause;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/log/RootCause;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netflix/cl/model/Debug;

    invoke-direct {v2, p1}, Lcom/netflix/cl/model/Debug;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/Debug;)V

    return-object v0
.end method


# virtual methods
.method public onAfterNetworkAction(Lo/TextClassifierImpl$Application;)V
    .locals 3

    const-string v0, "response"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lo/GenerateLinksLogger;->e:Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 33
    invoke-virtual {p1}, Lo/TextClassifierImpl$Application;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    iget-object p1, p0, Lo/GenerateLinksLogger;->b:Lo/TextClassificationManager;

    invoke-virtual {p1, v0, v1}, Lo/TextClassificationManager;->b(J)Z

    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {p1}, Lo/TextClassifierImpl$Application;->c()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/cl/model/Error;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 37
    :cond_1
    invoke-direct {p0, p1}, Lo/GenerateLinksLogger;->d(Lo/TextClassifierImpl$Application;)Lcom/netflix/cl/model/Error;

    move-result-object v2

    .line 38
    :goto_0
    iget-object p1, p0, Lo/GenerateLinksLogger;->b:Lo/TextClassificationManager;

    invoke-virtual {p1, v0, v1, v2}, Lo/TextClassificationManager;->c(JLcom/netflix/cl/model/Error;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public onBeforeNetworkAction(Lo/TextClassifierImpl$ActionBar;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lo/GenerateLinksLogger;->d:Lo/alB;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/alB;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/cl/model/event/session/action/Action;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/GenerateLinksLogger;->b:Lo/TextClassificationManager;

    check-cast p1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, p1}, Lo/TextClassificationManager;->b(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lo/GenerateLinksLogger;->e:Ljava/lang/Long;

    .line 28
    iget-object p1, p0, Lo/GenerateLinksLogger;->c:Lo/alB;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lo/alB;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lo/GenerateLinksLogger;->b:Lo/TextClassificationManager;

    invoke-virtual {v0, p1}, Lo/TextClassificationManager;->d(Lcom/netflix/cl/model/event/session/command/Command;)Z

    :cond_1
    return-void
.end method
