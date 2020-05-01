.class Lo/HttpAuthHandler$2;
.super Lo/yi;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HttpAuthHandler;->c(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Ljava/lang/Runnable;

.field final synthetic e:Lo/HttpAuthHandler;


# direct methods
.method constructor <init>(Lo/HttpAuthHandler;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lo/HttpAuthHandler$2;->e:Lo/HttpAuthHandler;

    iput-object p2, p0, Lo/HttpAuthHandler$2;->c:Landroid/os/Handler;

    iput-object p3, p0, Lo/HttpAuthHandler$2;->b:Ljava/lang/Runnable;

    iput-object p4, p0, Lo/HttpAuthHandler$2;->a:Landroid/content/Context;

    iput-object p5, p0, Lo/HttpAuthHandler$2;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Lo/yi;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 200
    iget-object v0, p0, Lo/HttpAuthHandler$2;->c:Landroid/os/Handler;

    iget-object v1, p0, Lo/HttpAuthHandler$2;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 202
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    const-string v0, "https://www.netflix.com/changeplan"

    const-string v1, "nf_uiservices"

    if-eqz p2, :cond_0

    const-string p2, "launchSeePlanOptions::created autologin token was success. Start URL with token"

    .line 203
    invoke-static {v1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance p2, Lo/adM;

    iget-object v1, p0, Lo/HttpAuthHandler$2;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lo/Ik;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lo/adM;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "launchSeePlanOptions::created autologin token was failure. Start URL without token"

    .line 206
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance p2, Lo/adM;

    iget-object p1, p0, Lo/HttpAuthHandler$2;->a:Landroid/content/Context;

    invoke-direct {p2, p1, v0}, Lo/adM;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    :goto_0
    iget-object p1, p0, Lo/HttpAuthHandler$2;->c:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    iget-object p1, p0, Lo/HttpAuthHandler$2;->d:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 212
    iget-object p2, p0, Lo/HttpAuthHandler$2;->c:Landroid/os/Handler;

    const-wide/16 v0, 0x1388

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
