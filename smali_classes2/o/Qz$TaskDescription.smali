.class public final Lo/Qz$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Qz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lo/Qz$TaskDescription;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lo/nS;Lcom/netflix/mediaclient/service/user/UserAgent;)Lo/nK;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineAgent"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgent"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lo/fo;->c:Lo/fo$ActionBar;

    invoke-virtual {v0}, Lo/fo$ActionBar;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lo/Qz;

    invoke-direct {v0, p1, p2, p3}, Lo/Qz;-><init>(Landroid/content/Context;Lo/nS;Lcom/netflix/mediaclient/service/user/UserAgent;)V

    check-cast v0, Lo/nK;

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Lo/Qw;

    invoke-direct {v0, p1, p2, p3}, Lo/Qw;-><init>(Landroid/content/Context;Lo/nS;Lcom/netflix/mediaclient/service/user/UserAgent;)V

    check-cast v0, Lo/nK;

    return-object v0
.end method
