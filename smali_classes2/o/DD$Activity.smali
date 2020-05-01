.class final Lo/DD$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DD;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/DD;


# direct methods
.method constructor <init>(Lo/DD;)V
    .locals 0

    iput-object p1, p0, Lo/DD$Activity;->e:Lo/DD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 3

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Lo/Am;->g()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 143
    new-instance v0, Lo/DD$ActionBar;

    const/4 v1, 0x1

    const-string v2, "it"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lo/DD$ActionBar;-><init>(ZLcom/netflix/mediaclient/util/gfx/ImageLoader;)V

    .line 144
    iget-object v1, p0, Lo/DD$Activity;->e:Lo/DD;

    invoke-static {v1}, Lo/DD;->b(Lo/DD;)Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/DD$ActionBar;->d(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;)V

    .line 145
    invoke-virtual {v0}, Lo/DD$ActionBar;->e()V

    .line 146
    iget-object v1, p0, Lo/DD$Activity;->e:Lo/DD;

    invoke-static {v1, v0}, Lo/DD;->c(Lo/DD;Lo/DD$ActionBar;)V

    .line 148
    new-instance v0, Lo/DD$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lo/DD$ActionBar;-><init>(ZLcom/netflix/mediaclient/util/gfx/ImageLoader;)V

    .line 149
    iget-object p1, p0, Lo/DD$Activity;->e:Lo/DD;

    invoke-static {p1}, Lo/DD;->d(Lo/DD;)Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/DD$ActionBar;->d(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;)V

    .line 150
    invoke-virtual {v0}, Lo/DD$ActionBar;->e()V

    .line 151
    iget-object p1, p0, Lo/DD$Activity;->e:Lo/DD;

    invoke-static {p1, v0}, Lo/DD;->b(Lo/DD;Lo/DD$ActionBar;)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object p1, p0, Lo/DD$Activity;->e:Lo/DD;

    .line 154
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lo/DD;->a:Lo/DD$StateListAnimator;

    invoke-virtual {v1}, Lo/DD$StateListAnimator;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " manager.imageLoader is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
