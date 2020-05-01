.class public abstract Lo/FillContext;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DateTransformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/DateTransformation<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

.field private d:Lo/TableLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TableLayout<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;)V
    .locals 1

    const-string v0, "taskName"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskMode"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/FillContext;->b:Ljava/lang/String;

    iput-object p2, p0, Lo/FillContext;->c:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;ILo/amc;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 27
    sget-object p2, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    :cond_0
    invoke-direct {p0, p1, p2}, Lo/FillContext;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;)V

    return-void
.end method


# virtual methods
.method public abstract a(Lo/TableLayout;Lo/TextClock;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TableLayout<",
            "*>;",
            "Lo/TextClock;",
            ")TT;"
        }
    .end annotation
.end method

.method public final a(Lo/TableLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TableLayout<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "modelProxy"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lo/FillContext;->d:Lo/TableLayout;

    return-void
.end method

.method public a()Z
    .locals 2

    .line 87
    iget-object v0, p0, Lo/FillContext;->c:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->b:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b(Landroid/os/Handler;Lo/cm;Lo/TextClock;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lo/cm<",
            "TT;>;",
            "Lo/TextClock;",
            ")V"
        }
    .end annotation

    const-string v0, "mainHandler"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackOnMain"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lo/FillContext;->d:Lo/TableLayout;

    if-nez v0, :cond_0

    const-string v1, "modelProxy"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0, p3}, Lo/FillContext;->a(Lo/TableLayout;Lo/TextClock;)Ljava/lang/Object;

    move-result-object p3

    .line 45
    new-instance v0, Lo/FillContext$TaskDescription;

    invoke-direct {v0, p2, p3}, Lo/FillContext$TaskDescription;-><init>(Lo/cm;Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Lo/RecommendationInfo;)V
    .locals 1

    const-string v0, "jsonGraph"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 2

    .line 89
    iget-object v0, p0, Lo/FillContext;->c:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public d(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/TextInputTimePickerView;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "queries"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/adt$Activity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Landroid/os/Handler;Lo/cm;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lo/cm<",
            "TT;>;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const-string v0, "mainHandler"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackOnMain"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lo/FillContext$Application;

    invoke-direct {v0, p2, p3}, Lo/FillContext$Application;-><init>(Lo/cm;Lcom/netflix/mediaclient/android/app/Status;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lo/FillContext;->b:Ljava/lang/String;

    return-object v0
.end method
