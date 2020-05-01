.class public final Lo/TextClassificationConstants;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final d:Lo/TextClassificationManager;

.field private e:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lo/TextClassificationManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupLogger"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/TextClassificationConstants;->d:Lo/TextClassificationManager;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    .line 23
    iget-object v0, p0, Lo/TextClassificationConstants;->e:Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 24
    iget-object v2, p0, Lo/TextClassificationConstants;->d:Lo/TextClassificationManager;

    invoke-virtual {v2, v0, v1}, Lo/TextClassificationManager;->b(J)Z

    :cond_0
    return-void
.end method

.method public final d(Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/cl/model/AppView;)V
    .locals 1

    const-string v0, "appView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/netflix/cl/model/event/session/Presentation;

    invoke-direct {v0, p2, p1}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 19
    iget-object p1, p0, Lo/TextClassificationConstants;->d:Lo/TextClassificationManager;

    check-cast v0, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p1, v0}, Lo/TextClassificationManager;->b(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/TextClassificationConstants;->e:Ljava/lang/Long;

    return-void
.end method
