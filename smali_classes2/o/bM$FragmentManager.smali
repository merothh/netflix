.class Lo/bM$FragmentManager;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/bM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FragmentManager"
.end annotation


# instance fields
.field final synthetic b:Lo/bM;


# direct methods
.method private constructor <init>(Lo/bM;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lo/bM$FragmentManager;->b:Lo/bM;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/bM;Lcom/netflix/mediaclient/service/NetflixService$1;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lo/bM$FragmentManager;-><init>(Lo/bM;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 285
    invoke-static {p2}, Lo/adG;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 289
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, -0x1

    .line 290
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x2c99b904

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.netflix.mediaclient.intent.action.ACCOUNT_DATA_FETCHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    .line 292
    :cond_2
    iget-object p1, p0, Lo/bM$FragmentManager;->b:Lo/bM;

    invoke-static {p1}, Lo/bM;->e(Lo/bM;)Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->s()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 293
    iget-object p1, p0, Lo/bM$FragmentManager;->b:Lo/bM;

    invoke-static {p1}, Lo/bM;->d(Lo/bM;)V

    :cond_3
    :goto_1
    return-void
.end method
