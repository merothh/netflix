.class final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

.field final synthetic d:Lo/HX;


# direct methods
.method constructor <init>(Lo/HX;Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$ActionBar;->d:Lo/HX;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$ActionBar;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 3

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$ActionBar;->d:Lo/HX;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$ActionBar;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    move-object v2, v1

    check-cast v2, Lo/UnicodeScript;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c()Lo/GK;

    move-result-object v1

    invoke-virtual {v0, v2, v1, p1}, Lo/HX;->d(Lo/UnicodeScript;Lo/GK;Lo/Am;)V

    return-void
.end method
