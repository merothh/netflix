.class public final Lo/oH;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/oH$Application;
    }
.end annotation


# static fields
.field public static final d:Lo/oH$Application;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lo/oK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/oH$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/oH$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/oH;->d:Lo/oH$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/oH;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic a(Lo/oH;Lo/nU;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lo/oH;->c(Lo/nU;)V

    return-void
.end method

.method private final c(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lo/oH;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/oK;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p2}, Lo/oK;->e(Lcom/netflix/mediaclient/StatusCode;)V

    .line 127
    iget-object p2, p0, Lo/oH;->b:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final c(Lo/nU;)V
    .locals 5

    .line 37
    instance-of v0, p1, Lo/nU$PendingIntent;

    if-eqz v0, :cond_1

    .line 38
    sget-object v0, Lo/oH;->d:Lo/oH$Application;

    check-cast v0, Lo/MessagePdu;

    .line 40
    iget-object v0, p0, Lo/oH;->b:Ljava/util/HashMap;

    check-cast p1, Lo/nU$PendingIntent;

    invoke-virtual {p1}, Lo/nU$PendingIntent;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1}, Lo/nU$PendingIntent;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->c:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v0, v1}, Lo/oH;->c(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V

    .line 43
    :cond_0
    iget-object v0, p0, Lo/oH;->b:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Lo/nU$PendingIntent;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lo/oK;

    .line 44
    invoke-virtual {p1}, Lo/nU$PendingIntent;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lo/nU$PendingIntent;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lo/nU$PendingIntent;->d()Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    move-result-object p1

    invoke-direct {v2, v3, v4, p1}, Lo/oK;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;)V

    .line 43
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 47
    :cond_1
    instance-of v0, p1, Lo/nU$Activity;

    if-eqz v0, :cond_2

    .line 48
    sget-object v0, Lo/oH;->d:Lo/oH$Application;

    check-cast v0, Lo/MessagePdu;

    .line 49
    iget-object v0, p0, Lo/oH;->b:Ljava/util/HashMap;

    check-cast p1, Lo/nU$Activity;

    invoke-virtual {p1}, Lo/nU$Activity;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/oK;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lo/oK;->b()V

    goto/16 :goto_0

    .line 52
    :cond_2
    instance-of v0, p1, Lo/nU$ActionBar;

    if-eqz v0, :cond_3

    .line 53
    sget-object v0, Lo/oH;->d:Lo/oH$Application;

    check-cast v0, Lo/MessagePdu;

    .line 54
    iget-object v0, p0, Lo/oH;->b:Ljava/util/HashMap;

    check-cast p1, Lo/nU$ActionBar;

    invoke-virtual {p1}, Lo/nU$ActionBar;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/oK;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lo/nU$ActionBar;->d()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/oK;->b(Lcom/netflix/mediaclient/StatusCode;)V

    goto/16 :goto_0

    .line 57
    :cond_3
    instance-of v0, p1, Lo/nU$LoaderManager;

    if-eqz v0, :cond_4

    .line 58
    sget-object v0, Lo/oH;->d:Lo/oH$Application;

    check-cast v0, Lo/MessagePdu;

    .line 59
    iget-object v0, p0, Lo/oH;->b:Ljava/util/HashMap;

    check-cast p1, Lo/nU$LoaderManager;

    invoke-virtual {p1}, Lo/nU$LoaderManager;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/oK;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lo/oK;->d()V

    goto/16 :goto_0

    .line 62
    :cond_4
    instance-of v0, p1, Lo/nU$Dialog;

    if-eqz v0, :cond_5

    .line 63
    sget-object v0, Lo/oH;->d:Lo/oH$Application;

    check-cast v0, Lo/MessagePdu;

    .line 64
    iget-object v0, p0, Lo/oH;->b:Ljava/util/HashMap;

    check-cast p1, Lo/nU$Dialog;

    invoke-virtual {p1}, Lo/nU$Dialog;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/oK;

    if-eqz v0, :cond_9

    .line 65
    invoke-virtual {p1}, Lo/nU$Dialog;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/oK;->c(Lcom/netflix/mediaclient/StatusCode;)V

    .line 66
    invoke-virtual {p1}, Lo/nU$Dialog;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/nU$Dialog;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lo/oH;->d(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V

    .line 67
    invoke-virtual {p1}, Lo/nU$Dialog;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    if-ne p1, v1, :cond_9

    .line 68
    invoke-virtual {v0}, Lo/oK;->a()V

    goto/16 :goto_0

    .line 73
    :cond_5
    instance-of v0, p1, Lo/nU$Application;

    if-eqz v0, :cond_6

    .line 74
    sget-object v0, Lo/oH;->d:Lo/oH$Application;

    check-cast v0, Lo/MessagePdu;

    .line 75
    iget-object v0, p0, Lo/oH;->b:Ljava/util/HashMap;

    check-cast p1, Lo/nU$Application;

    invoke-virtual {p1}, Lo/nU$Application;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/oK;

    if-eqz v0, :cond_9

    .line 77
    invoke-virtual {p1}, Lo/nU$Application;->b()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    .line 78
    invoke-virtual {p1}, Lo/nU$Application;->a()Z

    move-result v2

    .line 76
    invoke-virtual {v0, v1, v2}, Lo/oK;->d(Lcom/netflix/mediaclient/StatusCode;Z)V

    .line 80
    invoke-virtual {p1}, Lo/nU$Application;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/nU$Application;->b()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lo/oH;->d(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V

    .line 85
    invoke-virtual {v0}, Lo/oK;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 86
    invoke-virtual {p1}, Lo/nU$Application;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lo/nU$Application;->b()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lo/oH;->c(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V

    goto :goto_0

    .line 91
    :cond_6
    instance-of v0, p1, Lo/nU$TaskDescription;

    if-eqz v0, :cond_7

    .line 92
    sget-object v0, Lo/oH;->d:Lo/oH$Application;

    check-cast v0, Lo/MessagePdu;

    .line 93
    iget-object v0, p0, Lo/oH;->b:Ljava/util/HashMap;

    check-cast p1, Lo/nU$TaskDescription;

    invoke-virtual {p1}, Lo/nU$TaskDescription;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/oK;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lo/nU$TaskDescription;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/oK;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_7
    instance-of v0, p1, Lo/nU$StateListAnimator;

    if-eqz v0, :cond_8

    .line 97
    sget-object v0, Lo/oH;->d:Lo/oH$Application;

    check-cast v0, Lo/MessagePdu;

    .line 98
    iget-object v0, p0, Lo/oH;->b:Ljava/util/HashMap;

    check-cast p1, Lo/nU$StateListAnimator;

    invoke-virtual {p1}, Lo/nU$StateListAnimator;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/oK;

    if-eqz v0, :cond_9

    .line 99
    invoke-virtual {p1}, Lo/nU$StateListAnimator;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/nU$StateListAnimator;->d()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/oK;->c(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V

    .line 104
    invoke-virtual {v0}, Lo/oK;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lo/oK;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 105
    invoke-virtual {p1}, Lo/nU$StateListAnimator;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lo/nU$StateListAnimator;->d()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lo/oH;->c(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V

    goto :goto_0

    .line 110
    :cond_8
    instance-of v0, p1, Lo/nU$FragmentManager;

    if-eqz v0, :cond_9

    .line 111
    sget-object v0, Lo/oH;->d:Lo/oH$Application;

    check-cast v0, Lo/MessagePdu;

    .line 112
    check-cast p1, Lo/nU$FragmentManager;

    invoke-virtual {p1}, Lo/nU$FragmentManager;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lo/nU$FragmentManager;->a()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lo/oH;->c(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V

    :cond_9
    :goto_0
    return-void
.end method

.method private final d(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V
    .locals 1

    .line 119
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    if-eq p2, v0, :cond_0

    .line 120
    invoke-direct {p0, p1, p2}, Lo/oH;->c(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Lo/nU;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lo/gD;->c:Lo/gD$ActionBar;

    invoke-virtual {v0}, Lo/gD$ActionBar;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lo/oH$StateListAnimator;

    invoke-direct {v0, p0, p1}, Lo/oH$StateListAnimator;-><init>(Lo/oH;Lo/nU;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lo/adX;->d(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
