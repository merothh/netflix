.class Lo/iN$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/iN;->e(Ljava/util/concurrent/ScheduledExecutorService;Lo/zS;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/zS;

.field final synthetic e:Lo/iN;


# direct methods
.method constructor <init>(Lo/iN;Lo/zS;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lo/iN$3;->e:Lo/iN;

    iput-object p2, p0, Lo/iN$3;->b:Lo/zS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "nf_clientstats"

    .line 40
    :try_start_0
    invoke-static {}, Lo/PidHealthStats;->b()Lo/PidHealthStats;

    move-result-object v1

    invoke-virtual {v1}, Lo/PidHealthStats;->a()V

    .line 42
    iget-object v1, p0, Lo/iN$3;->e:Lo/iN;

    invoke-static {v1}, Lo/iN;->c(Lo/iN;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->a:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    if-ne v1, v2, :cond_0

    .line 43
    invoke-static {}, Lo/PidHealthStats;->b()Lo/PidHealthStats;

    move-result-object v1

    invoke-virtual {v1}, Lo/PidHealthStats;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sending log"

    .line 45
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v2, Lo/jH;

    invoke-direct {v2, v1}, Lo/jH;-><init>(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lo/iN$3;->b:Lo/zS;

    invoke-interface {v1, v2}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 49
    invoke-static {}, Lo/PidHealthStats;->b()Lo/PidHealthStats;

    move-result-object v1

    invoke-virtual {v1}, Lo/PidHealthStats;->c()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "problem sending log"

    .line 52
    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
