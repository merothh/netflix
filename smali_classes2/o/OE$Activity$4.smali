.class final Lo/OE$Activity$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OE$Activity;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lo/OE$Activity;


# direct methods
.method constructor <init>(Lo/OE$Activity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lo/OE$Activity$4;->d:Lo/OE$Activity;

    iput-object p2, p0, Lo/OE$Activity$4;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 35
    iget-object p1, p0, Lo/OE$Activity$4;->d:Lo/OE$Activity;

    invoke-static {p1}, Lo/OE$Activity;->d(Lo/OE$Activity;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lo/OE$Activity;->c(Lo/OE$Activity;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 37
    iget-object p1, p0, Lo/OE$Activity$4;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lo/OM;

    invoke-static {p1, v0}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/OM;

    .line 39
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 40
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lo/OE$Activity$4;->d:Lo/OE$Activity;

    invoke-static {v1}, Lo/OE$Activity;->b(Lo/OE$Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 38
    invoke-static {p1, v0}, Lo/az;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    return-void
.end method
