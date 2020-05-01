.class Lo/ZE$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZE;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/ZE;


# direct methods
.method constructor <init>(Lo/ZE;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lo/ZE$1;->d:Lo/ZE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lo/Am;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lo/ZE$1;->d:Lo/ZE;

    invoke-static {v0, p1}, Lo/ZE;->b(Lo/ZE;Lo/Am;)Lo/Am;

    .line 126
    iget-object p1, p0, Lo/ZE$1;->d:Lo/ZE;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/ZE;->e(Lo/ZE;Z)V

    return-void
.end method
