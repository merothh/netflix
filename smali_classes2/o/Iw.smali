.class public Lo/Iw;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static d:Lo/Iw;


# instance fields
.field private a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lo/IA;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/netflix/mediaclient/ui/home/HomeActivity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lo/Iw;->a:Ljava/util/Queue;

    const-string v0, "DialogManager"

    const-string v1, "DialogManager initialized"

    .line 65
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lo/Iw;->a:Ljava/util/Queue;

    new-instance v1, Lo/ID;

    invoke-direct {v1, p0}, Lo/ID;-><init>(Lo/Iw;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lo/Iw;->a:Ljava/util/Queue;

    new-instance v1, Lo/Iz;

    invoke-direct {v1, p0}, Lo/Iz;-><init>(Lo/Iw;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lo/Iw;->a:Ljava/util/Queue;

    new-instance v1, Lo/IC;

    invoke-direct {v1, p0}, Lo/IC;-><init>(Lo/Iw;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Z
    .locals 3

    .line 84
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->isDialogFragmentVisible()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "DialogManager"

    if-eqz v0, :cond_0

    const-string p1, "a DialogFragment is already visible - can\'t display dialog"

    .line 85
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->isInstanceStateSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Activity has saved instance state - can\'t display dialog"

    .line 90
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 94
    :cond_1
    invoke-static {p1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Activity is destroyed - can\'t display dialog"

    .line 95
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string p1, "Dialog can be safely shown."

    .line 99
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public static c(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lo/Iw;
    .locals 1

    .line 29
    sget-object v0, Lo/Iw;->d:Lo/Iw;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lo/Iw;

    invoke-direct {v0}, Lo/Iw;-><init>()V

    sput-object v0, Lo/Iw;->d:Lo/Iw;

    .line 32
    :cond_0
    sget-object v0, Lo/Iw;->d:Lo/Iw;

    invoke-direct {v0, p0}, Lo/Iw;->e(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    .line 33
    sget-object p0, Lo/Iw;->d:Lo/Iw;

    return-object p0
.end method

.method private e(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V
    .locals 1

    .line 55
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/Iw;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected c()Lcom/netflix/mediaclient/ui/home/HomeActivity;
    .locals 2

    .line 50
    iget-object v0, p0, Lo/Iw;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    .line 51
    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public e()Z
    .locals 4

    const-string v0, "DialogManager"

    const-string v1, "displayDialogsIfNeeded;"

    .line 107
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Lo/Iw;->c()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "Owner is null!"

    .line 110
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 114
    :cond_0
    iget-boolean v3, p0, Lo/Iw;->c:Z

    if-nez v3, :cond_3

    invoke-direct {p0, v1}, Lo/Iw;->b(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 120
    :cond_1
    iget-object v1, p0, Lo/Iw;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 121
    iget-object v1, p0, Lo/Iw;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/IA;

    .line 122
    invoke-virtual {v1}, Lo/IA;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showing something! -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v1}, Lo/IA;->c()Z

    move-result v0

    return v0

    :cond_2
    return v2

    .line 115
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..could display dialog... isLocked: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lo/Iw;->c:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
