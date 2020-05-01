.class public Lo/hP;
.super Lo/hS;
.source ""


# instance fields
.field private d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lo/hS;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p1, p0, Lo/hP;->d:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 30
    iget-object v0, p0, Lo/hP;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-string v0, "ErrorManager"

    const-string v1, "Exit"

    .line 31
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lo/hP;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
