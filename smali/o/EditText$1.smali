.class Lo/EditText$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/EditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/EditText;


# direct methods
.method constructor <init>(Lo/EditText;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lo/EditText$1;->c:Lo/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 114
    invoke-static {}, Lo/aeB;->a()Z

    .line 115
    iget-object v0, p0, Lo/EditText$1;->c:Lo/EditText;

    iget-object v0, v0, Lo/EditText;->i:Landroid/view/View;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "LoadingAndErrorWrapper"

    const-string v1, "Showing loading view with animation (via runnable)"

    .line 118
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lo/EditText$1;->c:Lo/EditText;

    iget-object v0, v0, Lo/EditText;->i:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/aeV;->d(Landroid/view/View;Z)V

    return-void
.end method