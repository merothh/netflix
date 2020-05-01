.class Lo/abu$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/abu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/abu;


# direct methods
.method constructor <init>(Lo/abu;)V
    .locals 0

    .line 1001
    iput-object p1, p0, Lo/abu$11;->a:Lo/abu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "SignupActivity"

    const-string v1, "Handling error during signup"

    .line 1004
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-object v0, p0, Lo/abu$11;->a:Lo/abu;

    invoke-virtual {v0}, Lo/abu;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lo/abu$11$1;

    invoke-direct {v1, p0}, Lo/abu$11$1;-><init>(Lo/abu$11;)V

    invoke-static {v0, v1}, Lo/afP;->c(Landroid/content/Context;Landroid/webkit/ValueCallback;)V

    return-void
.end method
