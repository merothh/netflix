.class final Lo/ZN$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZN;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/ZN;


# direct methods
.method constructor <init>(Lo/ZN;)V
    .locals 0

    iput-object p1, p0, Lo/ZN$ActionBar;->c:Lo/ZN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lo/ZN$ActionBar;->c:Lo/ZN;

    new-instance v0, Lo/ZN$Activity;

    invoke-virtual {p1}, Lo/ZN;->requireActivity()Lo/Serializable;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->requireImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v1

    const-string v2, "requireImageLoader(requireActivity())"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lo/ZN$Activity;-><init>(Lcom/netflix/mediaclient/util/gfx/ImageLoader;)V

    invoke-static {p1, v0}, Lo/ZN;->d(Lo/ZN;Lo/ZN$Activity;)V

    return-void
.end method
