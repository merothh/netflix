.class Lo/Gc$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Gc;->c(Landroid/content/Context;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lo/Gc;

.field final synthetic d:Landroid/content/Context;


# direct methods
.method constructor <init>(Lo/Gc;Ljava/lang/Runnable;Landroid/content/Context;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lo/Gc$2;->b:Lo/Gc;

    iput-object p2, p0, Lo/Gc$2;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lo/Gc$2;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 61
    sget-object v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->c:Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;

    iget-object v1, p0, Lo/Gc$2;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lo/Gc;->e:Ljava/lang/String;

    const-string v1, "Offline content removal is IN PROGRESS, do NOT kill app yet"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_0
    sget-object v0, Lo/Gc;->e:Ljava/lang/String;

    const-string v1, "Offline content removal is not in progress, kill app!"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lo/Gc$2;->d:Landroid/content/Context;

    invoke-static {v0}, Lo/adk;->h(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
