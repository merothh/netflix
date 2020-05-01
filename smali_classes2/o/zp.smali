.class Lo/zp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/zp$StateListAnimator;
    }
.end annotation


# static fields
.field private static a:Lo/zp;


# instance fields
.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lo/zp$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lo/zp;

    invoke-direct {v0}, Lo/zp;-><init>()V

    sput-object v0, Lo/zp;->a:Lo/zp;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/zp;->c:Ljava/util/HashMap;

    return-void
.end method

.method static e()Lo/zp;
    .locals 1

    .line 22
    sget-object v0, Lo/zp;->a:Lo/zp;

    return-object v0
.end method

.method private e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;)V
    .locals 4

    .line 81
    iget-object v0, p0, Lo/zp;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zp$StateListAnimator;

    const-string v1, "AddToMyListWrapper"

    if-nez v0, :cond_0

    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No listeners for video: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 87
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating state for video: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {v0, p2}, Lo/zp$StateListAnimator;->d(Lo/zp$StateListAnimator;Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener;)V
    .locals 4

    .line 29
    iget-object v0, p0, Lo/zp;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zp$StateListAnimator;

    const-string v1, "AddToMyListWrapper"

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating new state data for video: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v0, Lo/zp$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lo/zp$StateListAnimator;-><init>(Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener;Lo/zp$2;)V

    .line 33
    iget-object v1, p0, Lo/zp;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {v0, p2}, Lo/zp$StateListAnimator;->c(Lo/zp$StateListAnimator;Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener;)V

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found state data for video: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", state: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lo/zp$StateListAnimator;->b(Lo/zp$StateListAnimator;)Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_0
    invoke-static {v0}, Lo/zp$StateListAnimator;->b(Lo/zp$StateListAnimator;)Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener;->e(Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;)V

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 1

    .line 77
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;->c:Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;

    invoke-direct {p0, p1, v0}, Lo/zp;->e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;)V

    return-void
.end method

.method d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener;)V
    .locals 4

    .line 42
    iget-object v0, p0, Lo/zp;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zp$StateListAnimator;

    const-string v1, "AddToMyListWrapper"

    if-nez v0, :cond_0

    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected case - can\'t find listener for video: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 48
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing listener for video: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {v0, p2}, Lo/zp$StateListAnimator;->d(Lo/zp$StateListAnimator;Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener;)V

    .line 50
    invoke-static {v0}, Lo/zp$StateListAnimator;->a(Lo/zp$StateListAnimator;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 51
    iget-object p2, p0, Lo/zp;->c:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method d(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 56
    sget-object p2, Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;->d:Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;->a:Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;

    :goto_0
    invoke-direct {p0, p1, p2}, Lo/zp;->e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToMyListStateListener$AddToMyListState;)V

    return-void
.end method

.method e(Ljava/lang/String;ZZ)V
    .locals 4

    .line 60
    iget-object v0, p0, Lo/zp;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zp$StateListAnimator;

    const-string v1, "AddToMyListWrapper"

    if-nez v0, :cond_0

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not revert state for video: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 66
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reverting state for video: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {v0}, Lo/zp$StateListAnimator;->c(Lo/zp$StateListAnimator;)V

    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    .line 70
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gF:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gL:I

    :goto_0
    const/4 p2, 0x1

    .line 72
    invoke-static {p1, p2}, Lo/adk;->c(II)V

    :cond_2
    return-void
.end method
