.class public abstract Lo/aj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/cl/model/JsonSerializer;


# instance fields
.field private b:Lo/ag;

.field private c:Z

.field private final e:Lcom/netflix/mediaclient/performance/api/capture/CaptureType;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/performance/api/capture/CaptureType;)V
    .locals 1

    const-string v0, "captureType"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/aj;->e:Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lo/aj;->c:Z

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lo/aj;->c:Z

    return-void
.end method

.method public final b(Lo/ag;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lo/aj;->b:Lo/ag;

    return-void
.end method

.method public abstract c()Z
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lo/aj;->c:Z

    return-void
.end method

.method public e()V
    .locals 1

    .line 40
    iget-object v0, p0, Lo/aj;->b:Lo/ag;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lo/ag;->c(Lo/aj;)V

    :cond_0
    return-void
.end method

.method public final h()Lcom/netflix/mediaclient/performance/api/capture/CaptureType;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/aj;->e:Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    return-object v0
.end method

.method public abstract j()V
.end method
