.class public final Lo/Og$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Og;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SOURCE:",
        "Ljava/lang/Object;",
        "DATA:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDATA;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSOURCE;"
        }
    .end annotation
.end field

.field private final e:Lo/alA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alA<",
            "Lo/Og$Application<",
            "TSOURCE;TDATA;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/alA;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/alA<",
            "-",
            "Lo/Og$Application<",
            "TSOURCE;TDATA;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "description"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigate"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Og$Application;->a:Ljava/lang/String;

    iput-object p2, p0, Lo/Og$Application;->e:Lo/alA;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDATA;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lo/Og$Application;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final c(Ljava/lang/Object;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSOURCE;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 105
    invoke-static {v0, v1, v2, v0}, Lo/aeB;->c(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 106
    iput-object p1, p0, Lo/Og$Application;->d:Ljava/lang/Object;

    .line 107
    iget-object p1, p0, Lo/Og$Application;->e:Lo/alA;

    invoke-interface {p1, p0}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Landroid/content/Intent;

    if-nez v1, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Landroid/content/Intent;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "If you register without an activity class you need to call go(...)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lo/Og$Application;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/Object;)Lo/Og$Application;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDATA;)",
            "Lo/Og$Application<",
            "TSOURCE;TDATA;>;"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lo/Og$Application;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public final e()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSOURCE;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lo/Og$Application;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source() should be called from the navigate block"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSOURCE;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 90
    invoke-static {v0, v1, v2, v0}, Lo/aeB;->c(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 91
    iput-object p1, p0, Lo/Og$Application;->d:Ljava/lang/Object;

    .line 92
    iget-object p1, p0, Lo/Og$Application;->e:Lo/alA;

    invoke-interface {p1, p0}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/content/Intent;

    if-nez p1, :cond_0

    return-void

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "If you register with an activity class you need to call createIntent(...)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
