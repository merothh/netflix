.class Lcom/netflix/mediaclient/ui/launch/LaunchActivity$2;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V
    .locals 0

    .line 883
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$2;->c:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "LaunchActivity"

    const-string p2, "handleUserSignUp, mLanguageInstallReceiver onReceive"

    .line 886
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$2;->c:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->a(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V

    return-void
.end method
