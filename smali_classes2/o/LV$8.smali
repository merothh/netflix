.class Lo/LV$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/LV;


# direct methods
.method constructor <init>(Lo/LV;)V
    .locals 0

    .line 1072
    iput-object p1, p0, Lo/LV$8;->b:Lo/LV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1075
    iget-object p1, p0, Lo/LV$8;->b:Lo/LV;

    iget-object p1, p1, Lo/LV;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v0, p0, Lo/LV$8;->b:Lo/LV;

    iget-object v0, v0, Lo/LV;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lo/LV$8;->b:Lo/LV;

    invoke-static {v1}, Lo/LV;->g(Lo/LV;)Lo/Mh;

    move-result-object v1

    invoke-static {v0, v1}, Lo/Mn;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Mh;)Lo/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Landroid/app/Dialog;)V

    return-void
.end method
