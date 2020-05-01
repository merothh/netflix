.class public final Lo/Tp;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Tp$Application;
    }
.end annotation


# instance fields
.field private final a:Landroid/hardware/display/DisplayManager;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Tp$Application;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/app/Activity;

.field private e:Z

.field private final h:Lo/Tp$ActionBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SecondaryDisplay"

    .line 31
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lo/Tp;->b:Ljava/util/List;

    const-string v0, "display"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lo/Tp;->a:Landroid/hardware/display/DisplayManager;

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lo/Tp;->c:Ljava/util/List;

    .line 40
    new-instance p1, Lo/Tp$ActionBar;

    invoke-direct {p1, p0}, Lo/Tp$ActionBar;-><init>(Lo/Tp;)V

    iput-object p1, p0, Lo/Tp;->h:Lo/Tp$ActionBar;

    .line 58
    iget-object p1, p0, Lo/Tp;->a:Landroid/hardware/display/DisplayManager;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/Tp;->h:Lo/Tp$ActionBar;

    check-cast v0, Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 59
    :cond_0
    invoke-direct {p0}, Lo/Tp;->a()V

    return-void

    .line 37
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.hardware.display.DisplayManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a()V
    .locals 2

    .line 63
    iget-object v0, p0, Lo/Tp;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    iget-object v0, p0, Lo/Tp;->a:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    const-string v1, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    invoke-static {v0, v1}, Lo/ako;->e([Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lo/Tp;->b:Ljava/util/List;

    .line 71
    :cond_0
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 72
    iget-object v0, p0, Lo/Tp;->b:Ljava/util/List;

    invoke-direct {p0, v0}, Lo/Tp;->a(Ljava/util/List;)V

    return-void
.end method

.method private final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Display;",
            ">;)V"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lo/Tp;->d:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 101
    invoke-direct {p0}, Lo/Tp;->b()V

    const/4 v1, 0x0

    .line 105
    iget-boolean v2, p0, Lo/Tp;->e:Z

    if-eqz v2, :cond_1

    .line 106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    .line 107
    new-instance v3, Lo/Tp$Application;

    invoke-direct {v3, p0, v0, v2}, Lo/Tp$Application;-><init>(Lo/Tp;Landroid/app/Activity;Landroid/view/Display;)V

    .line 108
    invoke-virtual {v3}, Lo/Tp$Application;->show()V

    .line 109
    iget-object v2, p0, Lo/Tp;->c:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 112
    invoke-direct {p0}, Lo/Tp;->e()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final b()V
    .locals 2

    .line 76
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 77
    iget-object v0, p0, Lo/Tp;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Tp$Application;

    .line 78
    invoke-virtual {v1}, Lo/Tp$Application;->dismiss()V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lo/Tp;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static final synthetic b(Lo/Tp;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lo/Tp;->a()V

    return-void
.end method

.method private final e()V
    .locals 3

    .line 120
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "name"

    const-string v2, "mobileOnlySecondayDisplayError"

    .line 122
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/discrete/DebugEvent;

    invoke-direct {v2, v0}, Lcom/netflix/cl/model/event/discrete/DebugEvent;-><init>(Lorg/json/JSONObject;)V

    check-cast v2, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Z)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iput-boolean p2, p0, Lo/Tp;->e:Z

    .line 85
    move-object p2, p0

    check-cast p2, Lo/MessagePdu;

    .line 86
    iput-object p1, p0, Lo/Tp;->d:Landroid/app/Activity;

    .line 87
    iget-object p1, p0, Lo/Tp;->b:Ljava/util/List;

    invoke-direct {p0, p1}, Lo/Tp;->a(Ljava/util/List;)V

    return-void
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 92
    iget-object v0, p0, Lo/Tp;->d:Landroid/app/Activity;

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    invoke-direct {p0}, Lo/Tp;->b()V

    const/4 p1, 0x0

    .line 94
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lo/Tp;->d:Landroid/app/Activity;

    :cond_0
    return-void
.end method
