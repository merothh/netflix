.class final Lo/Fm$Activity$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Fm$Activity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic d:Lo/Fm$Activity;


# direct methods
.method constructor <init>(Lo/Fm$Activity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lo/Fm$Activity$3;->d:Lo/Fm$Activity;

    iput-object p2, p0, Lo/Fm$Activity$3;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 54
    iget-object p1, p0, Lo/Fm$Activity$3;->b:Landroid/content/Context;

    .line 55
    const-class p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 53
    invoke-static {p1, p2}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p1, :cond_0

    .line 57
    new-instance p2, Lo/adM;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lo/Fm$Activity$3;->d:Lo/Fm$Activity;

    iget-object v1, v1, Lo/Fm$Activity;->b:Ljava/lang/String;

    invoke-direct {p2, v0, v1}, Lo/adM;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "netflixActivity"

    .line 58
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object p1

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
