.class Lo/Jg$ActionBar;
.super Lo/ResourceCursorAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Jg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic b:Lo/Jg;


# direct methods
.method public constructor <init>(Lo/Jg;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/CY;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lo/Jg$ActionBar;->b:Lo/Jg;

    .line 85
    invoke-direct {p0, p2, p3}, Lo/ResourceCursorAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/CY;)V

    return-void
.end method


# virtual methods
.method protected e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AR;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 3

    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    iget-object v1, p0, Lo/Jg$ActionBar;->b:Lo/Jg;

    invoke-static {v1}, Lo/Jg;->a(Lo/Jg;)I

    move-result v1

    const-string v2, "extra_kids_color_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "DeetsClickListener"

    .line 91
    invoke-static {p1, p2, p3, v1, v0}, Lo/Dw;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AR;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
