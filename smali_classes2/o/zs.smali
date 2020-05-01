.class public final Lo/zs;
.super Lo/JsPromptResult;
.source ""


# static fields
.field public static final b:Lo/zs;

.field private static d:Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lo/zs;

    invoke-direct {v0}, Lo/zs;-><init>()V

    sput-object v0, Lo/zs;->b:Lo/zs;

    .line 48
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;->e:Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

    sput-object v0, Lo/zs;->d:Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lo/JsPromptResult;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/Plugin;Landroid/content/Intent;)V
    .locals 0

    const-string p2, "userInputManager"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object p1, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;->a:Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

    sput-object p1, Lo/zs;->d:Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

    return-void
.end method

.method public b(Lo/Plugin;)V
    .locals 1

    const-string v0, "userInputManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object p1, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;->b:Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

    sput-object p1, Lo/zs;->d:Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

    return-void
.end method

.method public final d()Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;
    .locals 1

    .line 48
    sget-object v0, Lo/zs;->d:Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

    return-object v0
.end method

.method public e(Lo/Plugin;)V
    .locals 1

    const-string v0, "userInputManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object p1, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;->a:Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

    sput-object p1, Lo/zs;->d:Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

    return-void
.end method
