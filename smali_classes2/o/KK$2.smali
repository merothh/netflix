.class final Lo/KK$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/KK;-><init>(Landroid/view/View;Lo/PooledStringWriter;Lo/KI$TaskDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/KK;


# direct methods
.method constructor <init>(Lo/KK;)V
    .locals 0

    iput-object p1, p0, Lo/KK$2;->a:Lo/KK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 66
    iget-object v0, p0, Lo/KK$2;->a:Lo/KK;

    invoke-virtual {v0}, Lo/KK;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, "view"

    .line 67
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 132
    invoke-static {p1}, Lo/TagTechnology;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 133
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 68
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    const-string v0, "activity.serviceManager"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    sget-object v0, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    .line 71
    iget-object v1, p0, Lo/KK$2;->a:Lo/KK;

    invoke-static {v1}, Lo/KK;->b(Lo/KK;)Lo/KK$ActionBar;

    move-result-object v1

    check-cast v1, Lo/zU;

    const-string v2, "categoriesList"

    .line 68
    invoke-interface {p1, v2, v0, v1}, Lo/zG;->b(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/zU;)Z

    :cond_0
    return-void
.end method
