.class Lo/nA;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/nA$TaskDescription;
    }
.end annotation


# instance fields
.field private a:Lo/nA$TaskDescription;

.field private transient c:Z

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private pulses:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/nA$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/nA;->pulses:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$ActionBar;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/nA;->pulses:Ljava/util/List;

    .line 56
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$ActionBar;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/nA;->name:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse$ActionBar;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/nA;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 115
    iget-object v0, p0, Lo/nA;->pulses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lo/nA;->c:Z

    return v0
.end method

.method public c(Lo/ny$Application;)V
    .locals 3

    .line 81
    iget-boolean v0, p0, Lo/nA;->c:Z

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lo/nA;->a:Lo/nA$TaskDescription;

    iget v1, p1, Lo/ny$Application;->a:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lo/nA$TaskDescription;->a(J)V

    .line 83
    iget-object v0, p0, Lo/nA;->a:Lo/nA$TaskDescription;

    iget-object v1, p1, Lo/ny$Application;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/nA$TaskDescription;->b(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lo/nA;->a:Lo/nA$TaskDescription;

    iget-object p1, p1, Lo/ny$Application;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lo/nA$TaskDescription;->c(Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lo/nA;->a:Lo/nA$TaskDescription;

    invoke-virtual {p1}, Lo/nA$TaskDescription;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lo/nA;->pulses:Ljava/util/List;

    iget-object v0, p0, Lo/nA;->a:Lo/nA$TaskDescription;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lo/nA;->a:Lo/nA$TaskDescription;

    const/4 p1, 0x1

    .line 88
    iput-boolean p1, p0, Lo/nA;->c:Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lo/nA;->c:Z

    .line 99
    new-instance v0, Lo/nA$TaskDescription;

    invoke-direct {v0}, Lo/nA$TaskDescription;-><init>()V

    iput-object v0, p0, Lo/nA;->a:Lo/nA$TaskDescription;

    return-void
.end method

.method public e(Lo/D;Ljava/lang/String;)V
    .locals 1

    .line 69
    iget-boolean v0, p0, Lo/nA;->c:Z

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lo/nA;->a:Lo/nA$TaskDescription;

    invoke-virtual {v0, p2}, Lo/nA$TaskDescription;->e(Ljava/lang/String;)V

    .line 71
    iget-object p2, p0, Lo/nA;->a:Lo/nA$TaskDescription;

    invoke-virtual {p2, p1}, Lo/nA$TaskDescription;->e(Lo/D;)V

    .line 72
    iget-object p1, p0, Lo/nA;->a:Lo/nA$TaskDescription;

    invoke-virtual {p1}, Lo/nA$TaskDescription;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lo/nA;->pulses:Ljava/util/List;

    iget-object p2, p0, Lo/nA;->a:Lo/nA$TaskDescription;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lo/nA;->a:Lo/nA$TaskDescription;

    const/4 p1, 0x1

    .line 75
    iput-boolean p1, p0, Lo/nA;->c:Z

    :cond_0
    return-void
.end method
