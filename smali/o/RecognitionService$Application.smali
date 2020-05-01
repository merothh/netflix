.class public final Lo/RecognitionService$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/netflix/cl/model/AppView;

.field final synthetic d:Lo/RecognitionService;

.field private e:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lo/RecognitionService;Lcom/netflix/cl/model/AppView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/cl/model/AppView;",
            ")V"
        }
    .end annotation

    const-string v0, "viewType"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iput-object p1, p0, Lo/RecognitionService$Application;->d:Lo/RecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/RecognitionService$Application;->a:Lcom/netflix/cl/model/AppView;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 134
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 136
    iget-object p1, p0, Lo/RecognitionService$Application;->d:Lo/RecognitionService;

    invoke-static {p1}, Lo/RecognitionService;->access$getSignupLogger$p(Lo/RecognitionService;)Lo/TextClassificationManager;

    move-result-object p1

    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    iget-object v2, p0, Lo/RecognitionService$Application;->a:Lcom/netflix/cl/model/AppView;

    invoke-direct {v1, v2, v0}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p1, v1}, Lo/TextClassificationManager;->b(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/RecognitionService$Application;->e:Ljava/lang/Long;

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lo/RecognitionService$Application;->e:Ljava/lang/Long;

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 139
    iget-object p1, p0, Lo/RecognitionService$Application;->d:Lo/RecognitionService;

    invoke-static {p1}, Lo/RecognitionService;->access$getSignupLogger$p(Lo/RecognitionService;)Lo/TextClassificationManager;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lo/TextClassificationManager;->b(J)Z

    .line 140
    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lo/RecognitionService$Application;->e:Ljava/lang/Long;

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 130
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lo/RecognitionService$Application;->a(Ljava/lang/Boolean;)V

    return-void
.end method
