.class public final Lo/Selection;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$ActionBar;


# instance fields
.field private a:Ljava/lang/Long;

.field private final b:Lo/TextClassificationManager;

.field private c:Ljava/lang/Long;

.field private final d:Lcom/netflix/cl/model/AppView;

.field private final e:Lcom/netflix/cl/model/InputKind;


# direct methods
.method public constructor <init>(Lo/TextClassificationManager;Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/InputKind;)V
    .locals 1

    const-string v0, "signupLogger"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Selection;->b:Lo/TextClassificationManager;

    iput-object p2, p0, Lo/Selection;->d:Lcom/netflix/cl/model/AppView;

    iput-object p3, p0, Lo/Selection;->e:Lcom/netflix/cl/model/InputKind;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 38
    iget-object v0, p0, Lo/Selection;->a:Ljava/lang/Long;

    .line 39
    iget-object v1, p0, Lo/Selection;->e:Lcom/netflix/cl/model/InputKind;

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 42
    iget-object p1, p0, Lo/Selection;->b:Lo/TextClassificationManager;

    invoke-virtual {p1, v0}, Lo/TextClassificationManager;->c(Ljava/lang/Long;)Lcom/netflix/cl/model/event/session/ValidateInputRejected;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 43
    iget-object v0, p0, Lo/Selection;->b:Lo/TextClassificationManager;

    check-cast p1, Lcom/netflix/cl/model/event/session/SessionEnded;

    invoke-virtual {v0, p1}, Lo/TextClassificationManager;->a(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lo/Selection;->b:Lo/TextClassificationManager;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo/TextClassificationManager;->b(J)Z

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 48
    check-cast p1, Ljava/lang/Long;

    iput-object p1, p0, Lo/Selection;->a:Ljava/lang/Long;

    :cond_3
    :goto_1
    return-void
.end method

.method public c()V
    .locals 3

    .line 32
    iget-object v0, p0, Lo/Selection;->e:Lcom/netflix/cl/model/InputKind;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lo/Selection;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, p0, Lo/Selection;->b:Lo/TextClassificationManager;

    new-instance v2, Lcom/netflix/cl/model/event/session/action/ValidateInput;

    invoke-direct {v2, v0}, Lcom/netflix/cl/model/event/session/action/ValidateInput;-><init>(Lcom/netflix/cl/model/InputKind;)V

    check-cast v2, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v1, v2}, Lo/TextClassificationManager;->b(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/Selection;->a:Ljava/lang/Long;

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 4

    .line 19
    iget-object v0, p0, Lo/Selection;->d:Lcom/netflix/cl/model/AppView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 22
    iget-object p1, p0, Lo/Selection;->b:Lo/TextClassificationManager;

    new-instance v2, Lcom/netflix/cl/model/event/session/Focus;

    invoke-direct {v2, v0, v1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v2, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p1, v2}, Lo/TextClassificationManager;->b(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/Selection;->c:Ljava/lang/Long;

    goto :goto_0

    .line 24
    :cond_1
    iget-object p1, p0, Lo/Selection;->c:Ljava/lang/Long;

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 25
    iget-object p1, p0, Lo/Selection;->b:Lo/TextClassificationManager;

    invoke-virtual {p1, v2, v3}, Lo/TextClassificationManager;->b(J)Z

    .line 26
    check-cast v1, Ljava/lang/Long;

    iput-object v1, p0, Lo/Selection;->c:Ljava/lang/Long;

    :cond_2
    :goto_0
    return-void
.end method
