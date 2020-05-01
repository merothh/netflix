.class final Lo/Yz$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Yz;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Yz;


# direct methods
.method constructor <init>(Lo/Yz;)V
    .locals 0

    iput-object p1, p0, Lo/Yz$TaskDescription;->b:Lo/Yz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 247
    iget-object p1, p0, Lo/Yz$TaskDescription;->b:Lo/Yz;

    sget-object v0, Lo/YB$SharedElementCallback;->e:Lo/YB$SharedElementCallback;

    invoke-virtual {p1, v0}, Lo/Yz;->e(Ljava/lang/Object;)V

    .line 248
    iget-object p1, p0, Lo/Yz$TaskDescription;->b:Lo/Yz;

    invoke-virtual {p1}, Lo/Yz;->f()Lo/Yn;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 249
    iget-object v0, p0, Lo/Yz$TaskDescription;->b:Lo/Yz;

    invoke-virtual {v0}, Lo/Yz;->y()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    .line 250
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    move-object v1, p1

    check-cast v1, Lo/AR;

    invoke-virtual {p1}, Lo/Yn;->f()Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const-string v2, "Previews"

    invoke-static {v0, v1, p1, v2}, Lo/Dw;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AR;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
