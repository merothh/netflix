.class final Lo/PC$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PC;->setPlayButtonView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/PC;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/PC;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/PC$StateListAnimator;->b:Lo/PC;

    iput-object p2, p0, Lo/PC$StateListAnimator;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 83
    iget-object p1, p0, Lo/PC$StateListAnimator;->b:Lo/PC;

    invoke-virtual {p1}, Lo/PC;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 119
    invoke-static {p1}, Lo/TagTechnology;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 120
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 86
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lo/PC$StateListAnimator;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 84
    invoke-static {p1, v0}, Lo/az;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    :cond_0
    return-void
.end method
