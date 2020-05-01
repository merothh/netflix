.class final Lo/YM$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YM;->c(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lo/YM;


# direct methods
.method constructor <init>(Lo/YM;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/YM$Activity;->c:Lo/YM;

    iput-object p2, p0, Lo/YM$Activity;->a:Ljava/lang/String;

    iput-object p3, p0, Lo/YM$Activity;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 2

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Selecting profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/YM$Activity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/YM$Activity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    sget-object v1, Lo/YM;->c:Lo/YM$TaskDescription;

    check-cast v1, Lo/MessagePdu;

    .line 89
    invoke-static {v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lo/YM$Activity;->c:Lo/YM;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object p1, p0, Lo/YM$Activity;->c:Lo/YM;

    invoke-static {p1}, Lo/YM;->a(Lo/YM;)V

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lo/YM$Activity;->c:Lo/YM;

    invoke-static {v0}, Lo/YM;->c(Lo/YM;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lo/YM$Activity;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/Am;->b(Ljava/lang/String;)V

    return-void
.end method
