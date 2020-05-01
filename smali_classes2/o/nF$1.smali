.class Lo/nF$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nF;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/nF;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/nF;Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lo/nF$1;->b:Lo/nF;

    iput-object p2, p0, Lo/nF$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 113
    iget-object v0, p0, Lo/nF$1;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x440f891c

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x25cdb25

    if-eq v1, v2, :cond_1

    const v2, 0x2c99b904

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.netflix.mediaclient.intent.action.ACCOUNT_DATA_FETCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const-string v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_DEACTIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_ACTIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    goto :goto_2

    .line 124
    :cond_4
    iget-object v0, p0, Lo/nF$1;->b:Lo/nF;

    invoke-static {v0}, Lo/nF;->b(Lo/nF;)Lo/nF$StateListAnimator;

    move-result-object v0

    invoke-interface {v0}, Lo/nF$StateListAnimator;->a()V

    goto :goto_2

    .line 120
    :cond_5
    iget-object v0, p0, Lo/nF$1;->b:Lo/nF;

    invoke-static {v0}, Lo/nF;->b(Lo/nF;)Lo/nF$StateListAnimator;

    move-result-object v0

    invoke-interface {v0}, Lo/nF$StateListAnimator;->e()V

    goto :goto_2

    .line 117
    :cond_6
    iget-object v0, p0, Lo/nF$1;->b:Lo/nF;

    invoke-static {v0}, Lo/nF;->b(Lo/nF;)Lo/nF$StateListAnimator;

    move-result-object v0

    invoke-interface {v0}, Lo/nF$StateListAnimator;->c()V

    :goto_2
    return-void
.end method
