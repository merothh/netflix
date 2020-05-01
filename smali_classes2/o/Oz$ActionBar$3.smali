.class final Lo/Oz$ActionBar$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Oz$ActionBar;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lo/Oz$ActionBar;


# direct methods
.method constructor <init>(Lo/Oz$ActionBar;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lo/Oz$ActionBar$3;->e:Lo/Oz$ActionBar;

    iput-object p2, p0, Lo/Oz$ActionBar$3;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 33
    iget-object p1, p0, Lo/Oz$ActionBar$3;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lo/OM;

    invoke-static {p1, v0}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/OM;

    .line 34
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lo/Oz$ActionBar$3;->e:Lo/Oz$ActionBar;

    invoke-static {v1}, Lo/Oz$ActionBar;->d(Lo/Oz$ActionBar;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p1, v0}, Lo/az;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    .line 36
    iget-object p1, p0, Lo/Oz$ActionBar$3;->e:Lo/Oz$ActionBar;

    invoke-static {p1}, Lo/Oz$ActionBar;->a(Lo/Oz$ActionBar;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Oz$ActionBar;->c(Lo/Oz$ActionBar;Lcom/netflix/cl/model/TrackingInfo;)V

    return-void
.end method
