.class Lo/abu$Application$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abu$Application;->loginToApp(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/abu$Application;


# direct methods
.method constructor <init>(Lo/abu$Application;)V
    .locals 0

    .line 784
    iput-object p1, p0, Lo/abu$Application$3;->d:Lo/abu$Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "SignupActivity"

    const-string v1, "Disabling webview visibility"

    .line 787
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v0, p0, Lo/abu$Application$3;->d:Lo/abu$Application;

    iget-object v0, v0, Lo/abu$Application;->b:Lo/abu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/abu;->c(Z)V

    return-void
.end method
