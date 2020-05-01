.class Lcom/netflix/mediaclient/ui/launch/LaunchActivity$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->e(Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Am;

.field final synthetic e:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lo/Am;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$1;->e:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$1;->c:Lo/Am;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "LaunchActivity"

    const-string p2, "handleUserSignedIn, mLanguageInstallReceiver onReceive"

    .line 507
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$1;->e:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$1;->c:Lo/Am;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->a(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lo/Am;)V

    return-void
.end method
