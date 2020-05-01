.class Lo/afD$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/cl/Platform$LocalLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/afD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/afD;


# direct methods
.method constructor <init>(Lo/afD;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lo/afD$2;->c:Lo/afD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1

    const-string v0, "nf_log_clv2"

    .line 48
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "nf_log_clv2"

    .line 53
    invoke-static {v0, p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    const-string v0, "nf_log_clv2"

    .line 58
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "nf_log_clv2"

    .line 73
    invoke-static {v0, p1, p2}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public isDebug()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
