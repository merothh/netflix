.class public final Lo/GhostView;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/HandlerActionQueue;)V
    .locals 1

    const-string v0, "parsedData"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Lo/HandlerActionQueue;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/GhostView;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lo/HandlerActionQueue;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/GhostView;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lo/HandlerActionQueue;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/GhostView;->d:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lo/HandlerActionQueue;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/GhostView;->e:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Lo/HandlerActionQueue;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/GhostView;->c:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lo/HandlerActionQueue;->g()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lo/GhostView;->i:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/GhostView;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/GhostView;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lo/GhostView;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/GhostView;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/GhostView;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lo/GhostView;->i:Ljava/util/Map;

    return-object v0
.end method
